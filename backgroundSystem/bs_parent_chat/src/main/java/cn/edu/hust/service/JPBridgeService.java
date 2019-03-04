package cn.edu.hust.service;

import cn.edu.hust.bean.JPBridge;

public interface JPBridgeService {

    void insertJPBridge(JPBridge jpBridge);

    JPBridge queryByUUID(String uuid);

    void updateJPBridge(JPBridge jpBridge);

    JPBridge queryOneByInputMessage(String inputMessage);

    void deleteAll();
}
