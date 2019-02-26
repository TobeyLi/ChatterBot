package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.AccessToken;
import cn.edu.hust.bean.TextMessage;
import cn.edu.hust.utils.AccessTokenUtil;
import cn.edu.hust.utils.ConnectToChatbotUtil;

import java.io.IOException;

public class TextMessageHandle {

    public static void handle(final TextMessage textMessage) {

        //超时5s,进行异步发送客服消息
        Thread customerMessageThread = new Thread(new Runnable() {
            public void run() {
                try {

                    //模拟耗时程序
                    /*long result=0;
                    for(long i=1;i<=1000000000;i++){
                        for(long j=1;j<=10;j++){
                            result+=j;
                            result-=j;
                        }
                    }*/

                    //连接机器人，获取机器人做出的回答
                    ConnectToChatbotUtil connectToChatbotUtil=new ConnectToChatbotUtil();
                    String chatbotMessage=connectToChatbotUtil.getRespose(textMessage.getContent());

                    AccessToken token = AccessTokenUtil.getAccessToken();
                    CustomerService.connectWeiXinInterface(token,textMessage,chatbotMessage);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });
        customerMessageThread.start();

        //避免超时时微信重新请求
        //return "success";
    }

}
