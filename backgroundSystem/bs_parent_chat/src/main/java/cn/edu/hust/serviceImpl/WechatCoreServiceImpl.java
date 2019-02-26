package cn.edu.hust.serviceImpl;

import cn.edu.hust.service.WechatCoreService;
import cn.edu.hust.utils.BaseMessageUtil;
import cn.edu.hust.utils.ConnectToChatbotUtil;
import cn.edu.hust.utils.TextMessageUtil;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Map;

@Service
public class WechatCoreServiceImpl implements WechatCoreService {
    public void handleMessage(PrintWriter printWriter, Map<String, String> map, String toUserName, String fromUserName, String msgType) {


        //处理文本类型
        if("text".equals(msgType)){

            //微信用户请求的内容
            String Content = map.get("Content");
            System.out.println(Content);

            ConnectToChatbotUtil connectToChatbotUtil=new ConnectToChatbotUtil();

            //(机器人)响应内容
            //String repContent1=connectToChatbotUtil.getRespose(Content);
            String repContent="你好";

            BaseMessageUtil baseMessageUtil = new TextMessageUtil();
            String message = baseMessageUtil.initMessage(fromUserName, toUserName,repContent);

            printWriter.write(repContent);
            //printWriter.flush();
            //printWriter.close();

            //return message;
        }

    }
}
