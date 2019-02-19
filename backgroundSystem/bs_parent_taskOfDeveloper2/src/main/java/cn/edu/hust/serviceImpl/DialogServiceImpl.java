package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.ChatDialog;
import cn.edu.hust.dao.DialogDao;
import cn.edu.hust.service.DialogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class DialogServiceImpl implements DialogService {

    @Autowired
    private DialogDao dialogDao;

    public List<ChatDialog> pageQueryData(Map<String,Object> map) {

        return dialogDao.pageQueryData(map);
    }

    public int pageQueryCount(Map<String, Object> map) {
        return dialogDao.pageQueryCount(map);
    }

    public void deleteDialogById(Integer chatId) {
        dialogDao.deleteDialogById(chatId);
    }

    public void deleteDialogs(Map<String, Object> map) {
        dialogDao.deleteDialogs(map);
    }
}
