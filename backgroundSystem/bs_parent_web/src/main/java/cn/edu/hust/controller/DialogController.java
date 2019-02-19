package cn.edu.hust.controller;

import cn.edu.hust.bean.AJAXResult;
import cn.edu.hust.bean.ChatDialog;
import cn.edu.hust.bean.Page;
import cn.edu.hust.service.DialogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/dialog")
public class DialogController {

    @Autowired
    private DialogService dialogService;

    @RequestMapping("/index")
    public String index(){
        return "dialog/index";
    }

    @ResponseBody
    @RequestMapping("/pageQuery")
    public Object pageQuery(String queryText,Integer pageNo,Integer pageSize){
        AJAXResult result=new AJAXResult();

        try {

            //分页查询
            //limit start,size
            Map<String,Object> map=new HashMap<String, Object>();
            map.put("start",(pageNo-1)*pageSize);
            map.put("size",pageSize);
            map.put("queryText",queryText);

            List<ChatDialog> dialogs= dialogService.pageQueryData(map);

            //总数据条数
            int totalSize=dialogService.pageQueryCount(map);
            //最大页码
            int totalNo=0;
            if(totalSize%pageSize==0){
                totalNo=totalSize/pageSize;
            }else{
                totalNo=totalSize/pageSize+1;
            }
            /*System.out.println("totalNo:"+totalNo);*/
            //分页对象
            Page<ChatDialog> dialogPage=new Page<ChatDialog>();
            dialogPage.setDatas(dialogs);
            dialogPage.setTotalNo(totalNo);
            dialogPage.setTotalSize(totalSize);
            dialogPage.setPageNo(pageNo);

            result.setData(dialogPage);
            result.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            result.setSuccess(false);
        }
        return result;
    }

    @RequestMapping("/index1")
    public String index1(@RequestParam(required = false,defaultValue = "1") Integer pageNo, @RequestParam(required = false,defaultValue = "1") Integer pageSize, Model model){
        //分页查询
        //limit start,size
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("start",(pageNo-1)*pageSize);
        map.put("size",pageSize);

        List<ChatDialog> dialogs= dialogService.pageQueryData(map);
        model.addAttribute("dialogs",dialogs);

        //当前页码
        model.addAttribute("pageNo",pageNo);
        //最大页码
        int totalSize=dialogService.pageQueryCount(map);
        int totalNo=0;
        if(totalSize%pageSize==0){
            totalNo=totalSize/pageSize;
        }else{
            totalNo=totalSize/pageSize+1;
        }
        model.addAttribute("totalNo",totalNo);

        return "dialog/index1";
    }

    @ResponseBody
    @RequestMapping("/delete")
    public Object delete(Integer chatId){
        AJAXResult result=new AJAXResult();

        try{
            dialogService.deleteDialogById(chatId);
            result.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            result.setSuccess(false);
        }

        return result;
    }

    @ResponseBody
    @RequestMapping("/deletes")
    public Object deletes(Integer[] chatId){

        System.out.println("chatIds:"+chatId);

        AJAXResult result=new AJAXResult();

        try {

            Map<String,Object> map=new HashMap<>();
            map.put("chatIds",chatId);
            dialogService.deleteDialogs(map);

            result.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            result.setSuccess(false);
        }

        return result;
    }
}
