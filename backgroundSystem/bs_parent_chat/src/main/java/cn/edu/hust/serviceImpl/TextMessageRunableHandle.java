package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.AccessToken;
import cn.edu.hust.bean.TextMessage;

import cn.edu.hust.bean.WeiXinUser;
import cn.edu.hust.service.WeiXinUserService;
import cn.edu.hust.utils.AccessTokenUtil;
import cn.edu.hust.utils.ConnectToChatbotUtil;
import cn.edu.hust.utils.WeiXinUserInfoUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;

public class TextMessageRunableHandle {

    @Autowired
    private static WeiXinUserService weiXinUserService;

    public static void handle(final TextMessage textMessage) {

        //超时5s,进行异步发送客服消息
        Thread customerMessageThread = new Thread(
                new Runnable() {
            public void run() {

                try {

                    //模拟耗时程序
                    long result=0;
                    for(long i=1;i<=1000000000;i++){
                        for(long j=1;j<=10;j++){
                            result+=j;
                            result-=j;
                        }
                    }

                    String chatbotMessage="chatbotMessage";
                    //连接机器人，获取机器人做出的回答
                    //ConnectToChatbotUtil connectToChatbotUtil=new ConnectToChatbotUtil();
                    //chatbotMessage=connectToChatbotUtil.getRespose(textMessage.getContent());
                    AccessToken token = AccessTokenUtil.getAccessToken();
                    //通过客服消息接口，返回机器人的回答
                    //CustomerService.connectWeiXinInterface(token,textMessage,chatbotMessage);

                    System.out.println(chatbotMessage);

                    //WeiXinUserService weiXinUserService=new WeiXinUserServiceImpl();
                    System.out.println(textMessage.getFromUserName());
                    WeiXinUser weiXinUser=weiXinUserService.queryByOpenid(textMessage.getFromUserName());
                    if(weiXinUser!=null){
                        System.out.println("查询微信用户成功...");
                    }

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        );
        customerMessageThread.start();

        //避免超时时微信重新请求
        //return "success";
    }

}
