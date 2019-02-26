package cn.edu.hust.utils;

import cn.edu.hust.bean.TextMessage;
import com.thoughtworks.xstream.XStream;

import java.util.Date;

/**
 * 发送文本消息xml封装实现
 */
public class TextMessageUtil implements BaseMessageUtil<TextMessage>{

    /**
     * 封装发送消息对象,封装时，需要将调换发送者和接收者的关系
     * @param FromUserName
     * @param ToUserName
     * @param Content
     */
    public String initMessage(String FromUserName, String ToUserName, String Content) {
        TextMessage text = new TextMessage();
        text.setToUserName(FromUserName);
        text.setFromUserName(ToUserName);
        text.setContent(Content);
        text.setCreateTime(new Date().getTime());
        text.setMsgType("text");
        return  messageToxml(text);

    }

    /**
     * 将发送消息封装成对应的xml格式
     */
    public  String messageToxml(TextMessage message) {
        XStream xstream  = new XStream();
        xstream.alias("xml", message.getClass());
        return xstream.toXML(message);
    }

}
