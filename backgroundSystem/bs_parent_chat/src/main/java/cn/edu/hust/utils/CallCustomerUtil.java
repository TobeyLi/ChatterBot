package cn.edu.hust.utils;

import cn.edu.hust.bean.AccessToken;
import cn.edu.hust.bean.TextMessage;

import java.io.IOException;

public class CallCustomerUtil {

    public static void callCustomer(TextMessage textMessage,String chatbotMessage){

        //通过客服消息接口，返回机器人的回答
        AccessToken token = null;
        try {
            token = AccessTokenUtil.getAccessToken();
            CustomerMessageInterfaceUtil.connectWeiXinInterface(token,textMessage,chatbotMessage);
        } catch (
                IOException e) {
            e.printStackTrace();
        }
    }

}
