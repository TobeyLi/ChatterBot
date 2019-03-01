package cn.edu.hust.utils;

import cn.edu.hust.bean.ChatDialog;

public class DialogUtil {

    public static ChatDialog getChatDialog(String openid,String nickname,String inputMessage,String sendTimeStr,String chatbotMessage,String responseTimeStr){

        ChatDialog chatDialog=new ChatDialog();
        chatDialog.setOpenid(openid);
        chatDialog.setNickname(nickname);
        chatDialog.setInputMessage(inputMessage);
        //chatDialog.setKeyword("");
        chatDialog.setSendTime(sendTimeStr);
        chatDialog.setResponseMessage(chatbotMessage);
        chatDialog.setResponseTime(responseTimeStr);

        return chatDialog;

    }
}
