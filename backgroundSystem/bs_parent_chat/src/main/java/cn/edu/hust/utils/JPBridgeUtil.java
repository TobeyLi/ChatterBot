package cn.edu.hust.utils;

import cn.edu.hust.bean.JPBridge;

public class JPBridgeUtil {

    public static JPBridge getJPBridge(String inputMessage){
        JPBridge jpBridge=new JPBridge();

        String uuid=UUIDUtil.getUUID();
        jpBridge.setUuid(uuid);
        jpBridge.setInputMessage(inputMessage);
        jpBridge.setSolved(0);

        return jpBridge;
    }
}
