package cn.edu.hust.service;

import java.io.PrintWriter;
import java.util.Map;

public interface WechatCoreService {

    void handleMessage(PrintWriter printWriter, Map<String, String> map, String toUserName, String fromUserName, String msgType);
}
