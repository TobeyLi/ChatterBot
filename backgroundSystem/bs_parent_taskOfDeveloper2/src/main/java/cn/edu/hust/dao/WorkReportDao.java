package cn.edu.hust.dao;

import cn.edu.hust.bean.ChatDialog;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface WorkReportDao {
    @Select("select * from chat_dialog")
    List<ChatDialog> queryAllDialog();
}
