package cn.edu.hust.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class ConnectToChatbotUtil {
    public String getRespose(String req) {

        String python=PythonPropertyUtil.getProperty("pythonInterpreterPath");
        String pythonScript=PythonPropertyUtil.getProperty("pythonScriptPath");
        String funcArg1=req;

        String[] execArgs = new String[]{ python,pythonScript,funcArg1};

        String result = "";

        Process process = null;
        try {
            process = Runtime.getRuntime().exec(execArgs);
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {

            BufferedReader in=new BufferedReader(new InputStreamReader(process.getInputStream(),"gbk"));

            String line;
            while ( (line=in.readLine()) != null){
                result+=line;
                //System.out.print(line);
            }
            //System.out.println();

            in.close();
            try {
                process.waitFor();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        } catch (IOException e) {
            System.out.println("Wrong");
            e.printStackTrace();
        }
        //System.out.println("Java result: ");
        //System.out.println(result);

        return result;
    }
}
