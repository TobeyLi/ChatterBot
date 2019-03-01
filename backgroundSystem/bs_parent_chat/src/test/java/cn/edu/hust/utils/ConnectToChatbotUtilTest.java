package cn.edu.hust.utils;

import java.io.*;

public class ConnectToChatbotUtilTest {

    public static void main(String[] args) throws InterruptedException, IOException {
        // TODO Auto-generated method stub
        String python="D:\\developmentSoftware\\backEndDevelopment\\Python\\envs\\chatterbot\\Scripts\\python";
        String funcArg1="你好";

        String[] execArgs = new String[]{ python, "E:\\GitHub\\gongChengShiJian\\chatbot3_0\\test.py",funcArg1};

        String result = "";

        Process process = Runtime.getRuntime().exec(execArgs);

        try {

            BufferedReader in=new BufferedReader(new InputStreamReader(process.getInputStream(),"gbk"));

            String line;
            while ( (line=in.readLine()) != null){
                result+=line;
                System.out.print(line);
            }
            System.out.println();

            in.close();
            process.waitFor();

        } catch (IOException e) {
            System.out.println("Wrong");
            e.printStackTrace();
        }
        System.out.println("Java result: ");
        System.out.println(result);

    }
}