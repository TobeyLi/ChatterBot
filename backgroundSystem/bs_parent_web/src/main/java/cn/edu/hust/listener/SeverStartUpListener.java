package cn.edu.hust.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class SeverStartUpListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //将web应用名称（路径）保存到application范围中

        //取到应用对象
        ServletContext application=sce.getServletContext();
        //取应用对象的路径
        String path=application.getContextPath();

        application.setAttribute("APP_PATH",path);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
