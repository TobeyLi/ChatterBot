package cn.edu.hust.controller;

import cn.edu.hust.bean.User;
import cn.edu.hust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 测试项目结构用
 */

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/index1")
    public String index(){
        return "index1";
    }

    @RequestMapping("/queryAll")
    public String queryAll(){
        System.out.println("调用UserController...");
        List<User> users=userService.queryAll();
        return "index1";
    }

    @RequestMapping("/login")
    public String login(){
        return "";
    }
}
