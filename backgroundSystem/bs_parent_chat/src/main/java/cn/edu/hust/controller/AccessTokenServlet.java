package cn.edu.hust.controller;

import cn.edu.hust.utils.AccessTokenThread;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(name = "AccessTokenServlet")
public class AccessTokenServlet extends HttpServlet {

    public void init() throws ServletException {
        AccessTokenThread.appId = getInitParameter("appid");  //获取servlet初始参数appid和appsecret
        AccessTokenThread.appSecret = getInitParameter("appsecret");
        /*System.out.println("appid:"+AccessTokenThread.appId);
        System.out.println("appSecret:"+AccessTokenThread.appSecret);*/
        new Thread(new AccessTokenThread()).start(); //启动进程
    }
}
