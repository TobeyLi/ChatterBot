package cn.edu.hust.utils;

import cn.edu.hust.bean.AccessToken;

import java.io.IOException;

public class AccessTokenUtilTest {

    public static void main(String[] args) throws IOException {
        AccessTokenUtil accessTokenUtil=new AccessTokenUtil();
        AccessToken token=accessTokenUtil.getAccessToken();
        System.out.println("access_token为："+token.getAccess_token());
        System.out.println("expires_in为："+token.getExpires_in());
    }
}
