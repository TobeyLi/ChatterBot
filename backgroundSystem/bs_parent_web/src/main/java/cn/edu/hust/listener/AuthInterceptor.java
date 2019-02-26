package cn.edu.hust.listener;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录成功的用户，权限拦截器
 * 注：暂时没用上
 */

public class AuthInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        //获取用户的请求地址
        String uri=request.getRequestURI();

        //判断当前路径是否需要权限验证
        //查询所有需要验证的路径集合
        return false;
    }
}
