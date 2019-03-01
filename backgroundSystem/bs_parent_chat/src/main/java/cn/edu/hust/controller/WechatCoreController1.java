package cn.edu.hust.controller;

import cn.edu.hust.bean.ChatDialog;
import cn.edu.hust.bean.TextMessage;
import cn.edu.hust.bean.WeiXinUser;
import cn.edu.hust.service.DialogService;
import cn.edu.hust.service.WechatCoreService;
import cn.edu.hust.service.WeiXinUserService;
import cn.edu.hust.serviceImpl.TextMessageCallableHandle;
import cn.edu.hust.serviceImpl.TextMessageRunableHandle;
import cn.edu.hust.utils.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

@Controller
@RequestMapping("/wechat/do1")
public class WechatCoreController1 {

    @Autowired
    private SignatureCheckUtil signatureCheckUtil;

    @Autowired
    private WechatCoreService wechatCoreService;

    @Autowired
    private WeiXinUserService weiXinUserService;

    @Autowired
    private DialogService dialogService;

    /**
     * @Description: 验证请求是否来自微信服务器
     * @Parameters: WeixinCoreController
     * @Return: 返回微信服务器发过来的验证字符
     * @Create Date:
     */

    @RequestMapping(method= RequestMethod.GET)
    public void accessCheck(HttpServletRequest request, HttpServletResponse response)throws Exception {

        String signature = request.getParameter("signature");
        // 时间戳
        String timestamp = request.getParameter("timestamp");
        // 随机数
        String nonce = request.getParameter("nonce");
        // 随机字符串
        String echostr = request.getParameter("echostr");

        PrintWriter out=null;

        try {
            out=response.getWriter();
            if (signatureCheckUtil.checkSignature(signature, timestamp, nonce)) {
                out.write(echostr);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            out.close();
        }

    }

    //消息处理
    @RequestMapping(method=RequestMethod.POST)
    public void doPOST(HttpServletRequest request,HttpServletResponse response) {

        response.setCharacterEncoding("utf-8");


        //将微信请求xml转为map格式，获取所需的参数
        final Map<String,String> map = MessageUtil.xmlToMap(request);
        final String ToUserName = map.get("ToUserName");
        final String FromUserName = map.get("FromUserName");
        //System.out.println(FromUserName);
        //final String CreateTime=map.get("CreateTime");

        final String MsgType = map.get("MsgType");
        final String Content=map.get("Content");
        final String MsgId=map.get("MsgId");

        final TextMessage textMessage=new TextMessage();
        textMessage.setToUserName(ToUserName);
        textMessage.setFromUserName(FromUserName);
        //textMessage.setCreateTime(CreateTime);
        textMessage.setContent(Content);
        textMessage.setMsgId(MsgId);

        PrintWriter printWriter=null;
        //避免超时时微信重新请求
        try {
            printWriter=response.getWriter();
            printWriter.write("success");
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            printWriter.close();
        }


        //新增微信用户
        WeiXinUser dbWeiXinUser=null;
        WeiXinUser weiXinUser=null;
        try {
            dbWeiXinUser=weiXinUserService.queryByOpenid(textMessage.getFromUserName());
            if(dbWeiXinUser==null){
                JSONObject userInfo = WeiXinUserInfoUtil.getUserInfo(textMessage.getFromUserName());
                //System.out.println(userInfo);
                weiXinUser=WeiXinUserInfoUtil.getWeiXinUser(userInfo);
                weiXinUserService.insertWeiXinUser(weiXinUser);
            }else {
                //System.out.println("该微信用户已存在.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }


        /*if("text".equals(MsgType)){
            TextMessageRunableHandle.handle(textMessage);
        }*/


        //最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成hh表示12小时制
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aa");
        Date sendTime=new Date();
        String sendTimeStr=simpleDateFormat.format(sendTime);
        System.out.println("sendTimeStr:"+sendTimeStr);
        String chatbotMessage="";

        //使用异步方式与机器人通信
        if("text".equals(MsgType)){
            TextMessageCallableHandle textMessageCallableHandle =new TextMessageCallableHandle();
            chatbotMessage=textMessageCallableHandle.startTextMessageHandleThread(textMessage);
            //System.out.println(chatbotMessage);
        }

        Date responseTime=new Date();
        String responseTimeStr=simpleDateFormat.format(responseTime);
        System.out.println("responseTimeStr:"+responseTimeStr);

        //将聊天信息插入数据库
        ChatDialog chatDialog=null;
        if(dbWeiXinUser!=null){
            chatDialog=DialogUtil.getChatDialog(textMessage.getFromUserName(),dbWeiXinUser.getNickname(),textMessage.getContent(),sendTimeStr,chatbotMessage,responseTimeStr);
        }else if(weiXinUser!=null){
            chatDialog=DialogUtil.getChatDialog(textMessage.getFromUserName(),weiXinUser.getNickname(),textMessage.getContent(),sendTimeStr,chatbotMessage,responseTimeStr);
        }
        dialogService.insertDialog(chatDialog);


        /*String message = null;
        //处理文本类型,回复用户输入的内容
        if("text".equals(MsgType)){
            BaseMessageUtil textMessage = new TextMessageUtil();
            message = textMessage.initMessage(FromUserName, ToUserName,Content);
        }
        try {

            printWriter=response.getWriter();
            printWriter.write(message);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            printWriter.close();
        }*/


        /*try {
            Thread responseThread =new Thread(){
                @Override
                public void run() {
                    wechatCoreService.handleMessage(printWriter,map,ToUserName,FromUserName,MsgType);
                }
            };
            responseThread.start();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            printWriter.write("success");
            //printWriter.flush();
            printWriter.close();
        }*/

    }

}
