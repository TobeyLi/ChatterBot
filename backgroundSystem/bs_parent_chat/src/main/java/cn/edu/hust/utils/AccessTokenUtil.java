package cn.edu.hust.utils;

import cn.edu.hust.bean.AccessToken;
import net.sf.json.JSONObject;

import java.io.IOException;

public class AccessTokenUtil {

    //从微信后台拿到APPID和APPSECRET 并封装为常量
    private static final String APPID = WeixinDeveloperPropertyUtil.getProperty("APPID");
    private static final String APPSECRET = WeixinDeveloperPropertyUtil.getProperty("APPSECRET");

    private static final String ACCESS_TOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";

    /**
     * 获取AccessToken
     * @return 返回拿到的access_token及有效期
     */
    public static AccessToken getAccessToken() throws IOException{
        AccessToken token = new AccessToken();
        String url = ACCESS_TOKEN_URL.replace("APPID", APPID).replace("APPSECRET", APPSECRET);//将URL中的两个参数替换掉
        JSONObject jsonObject = DoUrlUtil.doGetStr(url);//使用刚刚写的doGet方法接收结果
        if(jsonObject!=null){ //如果返回不为空，将返回结果封装进AccessToken实体类
            token.setAccess_token(jsonObject.getString("access_token"));//取出access_token
            token.setExpires_in(jsonObject.getInt("expires_in"));//取出access_token的有效期
        }
        return token;
    }
}
