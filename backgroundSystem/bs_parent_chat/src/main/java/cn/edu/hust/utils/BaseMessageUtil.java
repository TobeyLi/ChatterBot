package cn.edu.hust.utils;

/**
 *发送消息的xml封装
 * 类名称: BaseMessageUtil
 * 类描述: 消息封装工具类的基类,这里采用泛型,方便后期功能扩展
 */
public interface BaseMessageUtil<T> {

    /**
     * 回复的信息封装
     * @param FromUserName
     * @param ToUserName
     * @param repContent
     * @return
     */
    String initMessage(String FromUserName,String ToUserName,String repContent);

    /**
     * 将回复的信息对象转xml格式给微信
     *
     * @return
     */
    String messageToxml(T t);
}
