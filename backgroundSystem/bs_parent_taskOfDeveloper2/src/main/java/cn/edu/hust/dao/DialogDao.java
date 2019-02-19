package cn.edu.hust.dao;

import cn.edu.hust.bean.ChatDialog;

import java.util.List;
import java.util.Map;

public interface DialogDao {
    List<ChatDialog> pageQueryData(Map<String,Object> map);

    int pageQueryCount(Map<String, Object> map);

    void deleteDialogById(Integer chatId);

    void deleteDialogs(Map<String, Object> map);
}
