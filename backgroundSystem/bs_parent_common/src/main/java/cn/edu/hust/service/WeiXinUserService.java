package cn.edu.hust.service;

import cn.edu.hust.bean.User;
import cn.edu.hust.bean.WeiXinUser;

import java.util.List;
import java.util.Map;

public interface WeiXinUserService {

    WeiXinUser queryByOpenid(String openid);

    void insertWeiXinUser(WeiXinUser weiXinUser);

    void deleteWeixin_users(Map<String, Object> map);

    void deleteWeixinUserById(Integer wxuid);

    List<WeiXinUser> pageQueryData(Map<String, Object> map);

    int pageQueryCount(Map<String, Object> map);
}
