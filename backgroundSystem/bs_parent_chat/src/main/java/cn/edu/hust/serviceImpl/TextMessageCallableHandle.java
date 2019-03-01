package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.TextMessage;
import cn.edu.hust.utils.TextMessageCallableHandleThread1;

import java.util.concurrent.*;

public class TextMessageCallableHandle {

    public static String startTextMessageHandleThread(TextMessage textMessage) {

        ExecutorService threadPool = Executors.newSingleThreadExecutor();
        TextMessageCallableHandleThread1 textMessageCallableHandleThread1 =new TextMessageCallableHandleThread1(textMessage);
        Future<String> future = threadPool.submit(textMessageCallableHandleThread1);

        String chatbotMessage="";

        try {
            chatbotMessage = future.get();
            //System.out.println(result);
            return chatbotMessage;
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }finally {
            threadPool.shutdown();
        }


        /*//创建一个线程池
        ExecutorService pool = Executors.newFixedThreadPool(1) ;

        //创建1个有返回值的任务
        TextMessageCallableHandleThread1 textMessageCallableHandleThread1 = new TextMessageCallableHandleThread1(textMessage) ;

        FutureTask<String> futureTask = new FutureTask<String>(textMessageCallableHandleThread1);
        Thread thread = new Thread(futureTask);
        thread.start();

        //Future future = pool.submit(textMessageCallableHandleThread1) ;

        String chatbotMessage="";
        try {
            chatbotMessage=futureTask.get();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }finally {
            pool.shutdown();
        }

        return chatbotMessage;
    }*/

    return chatbotMessage;
    }
}
