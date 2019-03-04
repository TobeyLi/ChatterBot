package cn.edu.hust.utils;

import cn.edu.hust.bean.AccessToken;
import cn.edu.hust.bean.TextMessage;

import java.util.concurrent.Callable;

public class TextMessageCallableHandleThread1 implements Callable<String> {

    private TextMessage textMessage;

    public TextMessageCallableHandleThread1(){

    }

    public TextMessageCallableHandleThread1(TextMessage textMessage){
        this.textMessage=textMessage;
    }

    public String call() throws Exception {

        //模拟耗时程序
        /*long result=0;
        for(long i=1;i<=1000000000;i++){
            for(long j=1;j<=10;j++){
                result+=j;
                result-=j;
            }
        }*/

        String chatbotMessage="chatbotMessage";
        //连接机器人，获取机器人做出的回答
        ConnectToChatbotUtil connectToChatbotUtil=new ConnectToChatbotUtil();
        chatbotMessage=connectToChatbotUtil.getRespose(textMessage.getContent());
        AccessToken token = AccessTokenUtil.getAccessToken();
        //通过客服消息接口，返回机器人的回答
        CustomerMessageInterfaceUtil.connectWeiXinInterface(token,textMessage,chatbotMessage);

        //将机器人的回答返回
        return chatbotMessage;
    }
}
