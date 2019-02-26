package cn.edu.hust.utils;

import org.springframework.stereotype.Component;
import java.util.Arrays;

@Component
public class SignatureCheckUtil {

    //自己设置,要与微信页面设置的一致
    public static final String token = "good";

    /**
     * 验证签名
     * @param signature
     * @param timestamp
     * @param nonce
     * @return
     */

    public boolean checkSignature(String signature, String timestamp, String nonce) {
        String[] arr = new String[] { token, timestamp, nonce };

        // 将token、timestamp、nonce三个参数进行字典序排序
        Arrays.sort(arr);

        //拼接字符串
        StringBuilder buffer = new StringBuilder();
        for (int i = 0; i < arr.length; i++) {
            buffer.append(arr[i]);
        }

        //进行sha1加密
        String temp=SHA1.encode(buffer.toString());

        //与微信提供的signature进行匹对
        return signature.equals(temp);

    }

}
