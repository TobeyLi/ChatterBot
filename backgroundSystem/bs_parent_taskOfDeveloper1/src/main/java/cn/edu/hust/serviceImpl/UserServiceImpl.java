package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.User;
import cn.edu.hust.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 测试项目结构用
 */

@Service
public class UserServiceImpl implements UserService {

    public List<User> queryAll() {
        System.out.println("调用UserServiceImpl...");
        return null;
    }

    public boolean login() {
        return false;
    }
}
