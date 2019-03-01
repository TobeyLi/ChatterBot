package cn.edu.hust.controller;

import cn.edu.hust.bean.ChatDialog;
import cn.edu.hust.service.WorkReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.DecimalFormat;
import java.util.List;

/**
 *
 */

@Controller
@RequestMapping("/workReport")
public class WorkReportController {

    @Autowired
    private WorkReportService workReportService;

    @RequestMapping("/index")
    public String workReport(Model model){

        DecimalFormat df=new DecimalFormat("0.00");

        int numOfDialog=0;
        numOfDialog=workReportService.getNumOfDialog();
        /*System.out.println("numOfDialog:"+numOfDialog);*/
        model.addAttribute("numOfDialog",numOfDialog);

        int numOfBotAns=0;
        numOfBotAns=workReportService.getNumOfBotAns();
        model.addAttribute("numOfBotAns",numOfBotAns);

        String ratioOfSolved;
        String temp="0";
        if(numOfDialog!=0){
            temp=df.format( 100*(float)numOfBotAns/(float)numOfDialog );
        }
        ratioOfSolved=temp+"%";
        model.addAttribute("ratioOfSolved",ratioOfSolved);

        int queOfUnResolved=numOfDialog-numOfBotAns;
        model.addAttribute("queOfUnResolved",queOfUnResolved);

        int NumOfWeiXinUserInDialog=0;
        NumOfWeiXinUserInDialog=workReportService.getNumOfWeiXinUserInDialog();
        String aveNumOfDialog4User="0";
        if(numOfDialog!=0){
            aveNumOfDialog4User=df.format( (float)numOfDialog/(float)NumOfWeiXinUserInDialog );
        }
        model.addAttribute("NumOfWeiXinUserInDialog",NumOfWeiXinUserInDialog);
        model.addAttribute("aveNumOfDialog4User",aveNumOfDialog4User);

        return "workReport/index";
    }

    @RequestMapping("/doSearch")
    public String searchDialog(String word4Search,Model model){
        String word=word4Search;
        return "workReport/workReport2";
    }

    @ResponseBody
    @RequestMapping("/queryAllDialog")
    public Object queryAllDialog(){
        List<ChatDialog> chatDialogList = workReportService.queryAllDialog();
        return chatDialogList;
    }

}
