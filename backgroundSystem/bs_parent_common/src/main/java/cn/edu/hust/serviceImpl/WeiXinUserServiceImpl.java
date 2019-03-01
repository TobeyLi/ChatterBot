package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.WeiXinUser;
import cn.edu.hust.dao.WeiXinUserDao;
import cn.edu.hust.service.WeiXinUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class WeiXinUserServiceImpl implements WeiXinUserService {

    @Autowired
    WeiXinUserDao weiXinUserDao;

    public WeiXinUser queryByOpenid(String openid) {
        return weiXinUserDao.queryByOpenid(openid);
    }

    public void insertWeiXinUser(WeiXinUser weiXinUser) {

        weiXinUserDao.insertWeiXinUser(weiXinUser);
    }

    public void deleteWeixin_users(Map<String, Object> map) {
        weiXinUserDao.deleteWeixin_users(map);
    }

    public void deleteWeixinUserById(Integer wxuid) {

        weiXinUserDao.deleteWeixinUserById(wxuid);
    }

    public List<WeiXinUser> pageQueryData(Map<String, Object> map) {
        return weiXinUserDao.pageQueryData(map);
    }

    public int pageQueryCount(Map<String, Object> map) {
        return weiXinUserDao.pageQueryCount(map);
    }
}
