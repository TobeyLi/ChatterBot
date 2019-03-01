package cn.edu.hust.serviceImpl;

import cn.edu.hust.bean.ChatDialog;
import cn.edu.hust.dao.WorkReportDao;
import cn.edu.hust.service.WorkReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkReportServiceImpl implements WorkReportService {

    @Autowired
    private WorkReportDao workReportDao;

    public List<ChatDialog> queryAllDialog() {
        return workReportDao.queryAllDialog();
    }

    public int getNumOfDialog() {
        int num=0;
        num=workReportDao.getNumOfDialog();
        return num;
    }

    public int getNumOfBotAns() {
        int numOfBotAns=0;
        numOfBotAns=workReportDao.getNumOfBotAns();
        return numOfBotAns;
    }

    public int getNumOfWeiXinUserInDialog() {
        int NumOfWeiXinUserInDialog=0;
        NumOfWeiXinUserInDialog=workReportDao.getNumOfWeiXinUserInDialog();
        return NumOfWeiXinUserInDialog;
    }
}
