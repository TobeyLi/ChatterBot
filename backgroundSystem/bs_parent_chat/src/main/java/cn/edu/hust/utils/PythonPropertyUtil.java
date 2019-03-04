package cn.edu.hust.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class PythonPropertyUtil {

    private static Properties properties;

    static{
        loadProps();
    }

    public static void loadProps(){
        properties=new Properties();

        // 使用ClassLoader加载properties配置文件生成对应的输入流
        InputStream in = null;
        InputStreamReader isr=null;
        String filePath="utils/python.properties";
        try {
            in = RestartChatterUtil.class.getClassLoader().getResourceAsStream(filePath);
            isr=new InputStreamReader(in,"utf-8");

            // 使用properties对象加载输入流
            properties.load(isr);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            System.out.println("配置文件未找到.");
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("pythonProperties加载输入流失败.");
        } finally {
            try {
                isr.close();
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
                System.out.println("配置文件流关闭出现异常.");
            }

        }
    }

    public static String getProperty(String key){
        if(null!=properties){
            loadProps();
        }
        return properties.getProperty(key);
    }

    public static String getProperty(String key, String defaultValue) {
        if(null == properties) {
            loadProps();
        }
        return properties.getProperty(key, defaultValue);
    }
}
