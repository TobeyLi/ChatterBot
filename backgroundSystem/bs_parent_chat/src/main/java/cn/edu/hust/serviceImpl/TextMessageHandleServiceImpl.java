package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.JPBridge;
import cn.edu.hust.bean.TextMessage;
import cn.edu.hust.service.JPBridgeService;
import cn.edu.hust.service.TextMessageHandleService;
import cn.edu.hust.utils.CallCustomerUtil;
import cn.edu.hust.utils.JPBridgeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class TextMessageHandleServiceImpl implements TextMessageHandleService{

    @Autowired
    private JPBridgeService jpBridgeService;

    public String dealTextMessageByBot(TextMessage textMessage) {

        JPBridge jpBridge2db= JPBridgeUtil.getJPBridge(textMessage.getContent());
        jpBridgeService.insertJPBridge(jpBridge2db);

        //查询数据库是否已获取机器人回答
        JPBridge jpBridgeFromdb=jpBridgeService.queryByUUID(jpBridge2db.getUuid());
        long startTime=System.currentTimeMillis();
        //System.out.println("startTime:"+startTime);
        long endTime;
        double lengthOfTime=0;
        double limit=20.0;
        while(jpBridgeFromdb.getSolved()==0 && lengthOfTime<=limit){
            jpBridgeFromdb=jpBridgeService.queryByUUID(jpBridge2db.getUuid());
            endTime=System.currentTimeMillis();
            //System.out.println("endTime:"+endTime);
            lengthOfTime=(double) (endTime-startTime)/1000;
            //System.out.println("lengthOfTime:"+lengthOfTime);
        }

        String chatbotMessage;
        if(lengthOfTime>limit){
            chatbotMessage="响应超时，请稍候再试.";
            //将处理状态标记为2，暂不处理
            jpBridgeFromdb.setSolved(2);
            jpBridgeService.updateJPBridge(jpBridgeFromdb);

        }else {
            chatbotMessage=jpBridgeFromdb.getResponseMessage();
        }
        //System.out.println(chatbotMessage);

        //调用客服，返回机器人的回答
        CallCustomerUtil.callCustomer(textMessage,chatbotMessage);

        return chatbotMessage;
    }

}
