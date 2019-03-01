package cn.edu.hust.service;

import cn.edu.hust.bean.ChatDialog;

import java.util.List;
import java.util.Map;

public interface DialogService {

    List<ChatDialog> pageQueryData(Map<String,Object> map);

    int pageQueryCount(Map<String, Object> map);

    void deleteDialogById(Integer chatId);

    void deleteDialogs(Map<String, Object> map);

    void insertDialog(ChatDialog chatDialog);
}
