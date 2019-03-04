package cn.edu.hust.utils;

import java.io.*;

public class ConnectToChatbotUtilTest {

    public static void main(String[] args) throws InterruptedException, IOException {
        // TODO Auto-generated method stub

        //获取key对应的value值
        String python= PythonPropertyUtil.getProperty("pythonInterpreterPath");
        String pythonScript= PythonPropertyUtil.getProperty("pythonScriptPath");

        String funcArg1="你好";

        String[] execArgs = new String[]{ python,pythonScript,funcArg1};

        String result = "";

        Process process = Runtime.getRuntime().exec(execArgs);

        try {

            BufferedReader br=new BufferedReader(new InputStreamReader(process.getInputStream(),"gbk"));

            String line;
            while ( (line=br.readLine()) != null){
                result+=line;
                System.out.print(line);
            }
            System.out.println();

            br.close();
            process.waitFor();

        } catch (IOException e) {
            System.out.println("Wrong");
            e.printStackTrace();
        }
        System.out.println("Java result: ");
        System.out.println(result);

    }
}