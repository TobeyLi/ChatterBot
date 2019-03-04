package cn.edu.hust.utils;

import java.io.IOException;

public class RestartChatterUtil {

    public static void restartChatter() {

        //获取key对应的value值
        String python= PythonPropertyUtil.getProperty("pythonInterpreterPath");
        String pythonScript= PythonPropertyUtil.getProperty("pythonScriptPath");

        String funcArg1="你好";

        String[] execArgs = new String[]{ python,pythonScript,funcArg1};

        String result = "";

        Process process = null;
        try {
            process = Runtime.getRuntime().exec(execArgs);
        } catch (IOException e) {
            e.printStackTrace();
        }

        //有时候需要在等待调用的系统程序完成操作后，当前线程才能做下一步操作
        //阻塞当先线程直至调用程序运行结束
        try {
            process.waitFor();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
