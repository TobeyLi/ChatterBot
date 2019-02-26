package cn.edu.hust.utils;

import cn.edu.hust.bean.AccessToken;

public class AccessTokenThread implements Runnable {

    public static String appId = "";

    public static String appSecret= "";
    //注意是静态的
    public static AccessToken token = null;

    public static AccessTokenUtil accessTokenUtil=new AccessTokenUtil();

    public void run() {

        try{
            token = accessTokenUtil.getAccessToken();
            if(null!=token){
                System.out.println(token.getAccess_token());
                Thread.sleep(7000 * 1000); //获取到access_token 休眠7000秒
            }else{
                Thread.sleep(1000*3); //获取的access_token为空 休眠3秒
            }
        }catch(Exception e){
            System.out.println("发生异常："+e.getMessage());
            e.printStackTrace();
            try{
                Thread.sleep(1000*10); //发生异常休眠1秒
            }catch (Exception e1){

            }
        }
    }


}
