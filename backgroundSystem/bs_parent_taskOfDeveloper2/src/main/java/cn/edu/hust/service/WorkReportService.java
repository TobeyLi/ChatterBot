package cn.edu.hust.service;

import cn.edu.hust.bean.ChatDialog;

import java.util.List;

/**
 * 需要实现的功能模块：
 * 工作报表
 */

public interface WorkReportService {
    List<ChatDialog> queryAllDialog();
    int getNumOfDialog();
    int getNumOfBotAns();

    int getNumOfUserInDialog();
}
