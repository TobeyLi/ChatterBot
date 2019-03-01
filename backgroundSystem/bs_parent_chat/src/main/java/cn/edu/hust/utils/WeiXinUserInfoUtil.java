package cn.edu.hust.utils;

import cn.edu.hust.bean.AccessToken;
import cn.edu.hust.bean.WeiXinUser;
import net.sf.json.JSONObject;

import java.io.IOException;

public class WeiXinUserInfoUtil {

    private static final String GET_USERINFO_URL= "https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN";

    /**
     * 获取微信用户账号的相关信息
     * @param openid  用户的openId，这个通过当用户进行了消息交互的时候，才有
     * @return
     */
    public static JSONObject getUserInfo(String openid) throws IOException {
        AccessToken token = AccessTokenUtil.getAccessToken();
        //获取access_token
        String access_token = token.getAccess_token();
        String url = GET_USERINFO_URL.replace("ACCESS_TOKEN" , access_token);
        url = url.replace("OPENID" ,openid);
        JSONObject jsonObject = DoUrlUtil.doGetStr(url);
        //System.out.println(jsonObject);
        return jsonObject;
    }

    public static WeiXinUser getWeiXinUser(JSONObject userInfo){
        WeiXinUser weiXinUser=new WeiXinUser();

        weiXinUser.setSubscribe(userInfo.getInt("subscribe"));
        weiXinUser.setOpenid(userInfo.getString("openid"));
        weiXinUser.setNickname(userInfo.getString("nickname"));
        weiXinUser.setSex(userInfo.getInt("sex"));
        weiXinUser.setLanguage(userInfo.getString("language"));
        weiXinUser.setCity(userInfo.getString("city"));
        weiXinUser.setProvince(userInfo.getString("province"));
        weiXinUser.setCountry(userInfo.getString("country"));
        weiXinUser.setHeadimgurl(userInfo.getString("headimgurl"));
        weiXinUser.setSubscribe_time(userInfo.getLong("subscribe_time"));
        //暂时未获取此参数
        //weiXinUser.setUnionid(userInfo.getString("unionid"));
        weiXinUser.setRemark(userInfo.getString("remark"));
        weiXinUser.setGroupid(userInfo.getInt("groupid"));
        weiXinUser.setTagid_list(userInfo.getString("tagid_list"));
        weiXinUser.setSubscribe_scene(userInfo.getString("subscribe_scene"));
        weiXinUser.setQr_scene(userInfo.getInt("qr_scene"));
        weiXinUser.setQr_scene_str(userInfo.getString("qr_scene_str"));

        return weiXinUser;
    }

}
