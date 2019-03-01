package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.JPBridge;
import cn.edu.hust.dao.JPBridgeDao;
import cn.edu.hust.service.JPBridgeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JPBridgeServiceImpl implements JPBridgeService {

    @Autowired
    private JPBridgeDao jpBridgeDao;

    public void insertJPBridge(JPBridge jpBridge) {

        jpBridgeDao.insertJPBridge(jpBridge);
    }

    public JPBridge queryByUUID(String uuid) {
        return jpBridgeDao.queryByUUID(uuid);
    }

    public void updateJPBridge(JPBridge jpBridge) {
        jpBridgeDao.updateJPBridge(jpBridge);
    }
}
