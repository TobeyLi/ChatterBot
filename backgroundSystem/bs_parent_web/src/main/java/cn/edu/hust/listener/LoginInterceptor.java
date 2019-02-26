package cn.edu.hust.listener;

import cn.edu.hust.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登录拦截器
 */

public class LoginInterceptor implements HandlerInterceptor {

    /**
     * 在控制器执行之前，完成业务逻辑操作
     * 返回false:业务逻辑不会继续执行，也不会走到控制器里面
     * 返回true：继续执行
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        //判断当前用户是否已经登录
        HttpSession session=request.getSession();
        User loginUser= (User) session.getAttribute("loginUser");

        if(loginUser==null){
            String path=session.getServletContext().getContextPath();
            response.sendRedirect(path+"/login");
            return false;
        }else{
            return true;
        }

    }

    /**
     * 控制器执行完毕之后执行的逻辑操作，因此不会再影响控制器了
     * @param request
     * @param response
     * @param handler
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    /**
     * 完成视图渲染之后，执行此方法
     * @param request
     * @param response
     * @param handler
     * @param ex
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
