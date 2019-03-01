package cn.edu.hust.dao;

import cn.edu.hust.bean.JPBridge;

public interface JPBridgeDao {

    void insertJPBridge(JPBridge jpBridge);

    JPBridge queryByUUID(String uuid);
}
