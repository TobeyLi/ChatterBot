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
}
