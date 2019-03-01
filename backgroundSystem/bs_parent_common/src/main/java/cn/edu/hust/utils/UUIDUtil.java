package cn.edu.hust.utils;

import java.util.UUID;

public class UUIDUtil {

    public static String getUUID(){
        String uuid= UUID.randomUUID().toString();
        //System.out.println(uuid);
        uuid=uuid.replace("-", "");//替换掉中间的那个斜杠
        //System.out.println(uuid);

        return uuid;
    }
}
