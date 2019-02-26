package cn.edu.hust.controller;

import cn.edu.hust.bean.TextMessage;
import cn.edu.hust.service.WechatCoreService;
import cn.edu.hust.serviceImpl.TextMessageHandle;
import cn.edu.hust.utils.BaseMessageUtil;
import cn.edu.hust.utils.MessageUtil;
import cn.edu.hust.utils.SignatureCheckUtil;
import cn.edu.hust.utils.TextMessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

@Controller
@RequestMapping("/wechat/do")
public class WechatCoreController {

    @Autowired
    private SignatureCheckUtil signatureCheckUtil;

    @Autowired
    private WechatCoreService wechatCoreService;

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

        PrintWriter printWriter=null;

        //将微信请求xml转为map格式，获取所需的参数
        final Map<String,String> map = MessageUtil.xmlToMap(request);
        final String ToUserName = map.get("ToUserName");
        final String FromUserName = map.get("FromUserName");
        //final String CreateTime=map.get("CreateTime");
        /*System.out.println(FromUserName);*/
        final String MsgType = map.get("MsgType");
        final String Content=map.get("Content");
        final String MsgId=map.get("MsgId");

        final TextMessage textMessage=new TextMessage();
        textMessage.setToUserName(ToUserName);
        textMessage.setFromUserName(FromUserName);
        //textMessage.setCreateTime(CreateTime);
        textMessage.setContent(Content);
        textMessage.setMsgId(MsgId);

        if("text".equals(MsgType)){

            TextMessageHandle.handle(textMessage);
        }

        try {

            printWriter=response.getWriter();

            //避免超时时微信重新请求
            printWriter.write("");
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            printWriter.close();
        }


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
