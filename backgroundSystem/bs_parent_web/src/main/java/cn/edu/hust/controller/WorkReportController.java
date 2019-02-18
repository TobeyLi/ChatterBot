package cn.edu.hust.controller;

import cn.edu.hust.bean.ChatDialog;
import cn.edu.hust.service.WorkReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 *
 */

@Controller
public class WorkReportController {

    @Autowired
    private WorkReportService workReportService;

    @RequestMapping("/workReport2")
    public String workReport(){
        return "workReport2";
    }

    @RequestMapping("/workReport")
    public String numOfAllDialog(Model model){
        int num=1;
        String errorMsg="数据错误";
        model.addAttribute("dialogNum",num);
        model.addAttribute("errorMsg",errorMsg);
        return "workReport";
    }

    @RequestMapping("/doSearch")
    public String searchDialog(String word4Search,Model model){
        String word=word4Search;
        return "workReport2";
    }

    @ResponseBody
    @RequestMapping("/queryAllDialog")
    public Object queryAllDialog(){
        List<ChatDialog> chatDialogList = workReportService.queryAllDialog();
        return chatDialogList;
    }

}
