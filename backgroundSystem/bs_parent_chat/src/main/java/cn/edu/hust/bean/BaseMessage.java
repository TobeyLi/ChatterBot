package cn.edu.hust.bean;

/**
 *需要将微信平台发送的xml格式请求信息解析，后台处理已xml的格式返回给微信公众平台；后期的语音消息，图片消息都是类似的思路。
 * 根据xml格式，分析数据结构，构建bean类（做了一个调整，建立一个基类，方便后期的语音，图片的扩展）
 * 类名称: BaseMessage
 * 类描述: 回复消息的基类
 */

public class BaseMessage {

    protected String ToUserName;
    protected String FromUserName;
    protected long CreateTime;
    protected String MsgType;

    public BaseMessage() {
        super();
    }

    public String getToUserName() {
        return ToUserName;
    }

    public void setToUserName(String toUserName) {
        ToUserName = toUserName;
    }

    public String getFromUserName() {
        return FromUserName;
    }

    public void setFromUserName(String fromUserName) {
        FromUserName = fromUserName;
    }

    public long getCreateTime() {
        return CreateTime;
    }

    public void setCreateTime(long createTime) {
        CreateTime = createTime;
    }

    public String getMsgType() {
        return MsgType;
    }

    public void setMsgType(String msgType) {
        MsgType = msgType;
    }
}
