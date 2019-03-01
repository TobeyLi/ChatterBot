package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.AccessToken;
import cn.edu.hust.bean.TextMessage;
import cn.edu.hust.service.CustomerService;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

@Service
public class CustomerServiceImpl{

    public static void connectWeiXinInterface(AccessToken token, TextMessage textMessage, String chatbotMessage) {

        URL url;

        try {
            String access_token=token.getAccess_token();
            String action = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token="+access_token;
            String json = "{\"touser\": \""+textMessage.getFromUserName()+"\",\"msgtype\": \"text\", \"text\": {\"content\": \""+chatbotMessage+"\"}}";

            url = new URL(action);

            HttpURLConnection http = (HttpURLConnection) url.openConnection();

            http.setRequestMethod("POST");

            http.setRequestProperty("Content-Type",

                    "application/x-www-form-urlencoded");

            http.setDoOutput(true);

            http.setDoInput(true);

            System.setProperty("sun.net.client.defaultConnectTimeout", "30000");// 连接超时30秒

            System.setProperty("sun.net.client.defaultReadTimeout", "30000"); // 读取超时30秒

            http.connect();

            OutputStream os = http.getOutputStream();

            os.write(json.getBytes("UTF-8"));// 传入参数

            InputStream is = http.getInputStream();

            int size = is.available();

            byte[] jsonBytes = new byte[size];

            is.read(jsonBytes);

            String result = new String(jsonBytes, "UTF-8");

            System.out.println("请求返回结果:"+result);

            os.flush();

            os.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

    }

}
