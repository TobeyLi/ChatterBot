package cn.edu.hust.controller;

import cn.edu.hust.bean.AJAXResult;
import cn.edu.hust.bean.Page;
import cn.edu.hust.bean.WeiXinUser;
import cn.edu.hust.service.WeiXinUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/wx_user")
public class WeiXinUserController {

    /**
     * 微信用户首页
     *
     * @return
     */

    @Autowired
    private WeiXinUserService weiXinUserService;

    @ResponseBody
    @RequestMapping("/deletes")
    public Object deletes(Integer[] wxuids) {

        AJAXResult result=new AJAXResult();
        try {
            Map<String,Object> map=new HashMap<String, Object>();
            map.put("wxuids", wxuids);
            weiXinUserService.deleteWeixin_users(map);

            result.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
        }
        return result;
    }


    @ResponseBody
    @RequestMapping("/delete")
    public Object delete(Integer wxuid) {
        AJAXResult result=new AJAXResult();
        try {
            weiXinUserService.deleteWeixinUserById(wxuid);

            result.setSuccess(true);

        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
        }

        return result;

    }

    /*@ResponseBody
    @RequestMapping("/update")
    public Object update(User user) {

        AJAXResult result =new AJAXResult();
        try {

            userService.updateUser(user);
            result.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);


        }
        return result;
    }*/

    /*@RequestMapping("/edit")
    public String edit(Integer id, Model model) {
        User user=userService.queryById(id);
        model.addAttribute("user", user);
        return "user/edit";
    }*/

    /*@RequestMapping("/add")
    public String add() {
        return "user/add";

    }*/


    /*@ResponseBody
    @RequestMapping("/insert")
    public Object insert(User user) {

        //System.out.println(user.getUserName());

        AJAXResult result=new AJAXResult();

        try {
            //user.setemail("xxxx");
            userService.insertUser(user);

            result.setSuccess(true);

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            result.setSuccess(false);
        }
        return result;

    }*/

    @ResponseBody
    @RequestMapping("/pageQuery")
    public Object pageQuery(String queryText,Integer pageno, Integer pagesize) {

        AJAXResult result = new AJAXResult();
        try {

            // 分页查询
            Map<String, Object> map = new HashMap<String, Object>();

            // 一定要注意起始位置值的设置，一般起始位置是从下标0开始的
            /*System.out.println(pageno);
            System.out.println(pagesize);*/
            map.put("start", (pageno - 1) * pagesize);
            map.put("size", pagesize);
            map.put("queryText", queryText);

            List<WeiXinUser> wxusers = weiXinUserService.pageQueryData(map);

            //System.out.println(users.size());

            // 当前页码

            // 总的数据条数
            int totalsize = weiXinUserService.pageQueryCount(map);
            //System.out.println(totalsize);

            // 最大的页码数
            int totalno = 0;
            if (totalsize % pagesize == 0) {
                totalno = totalsize / pagesize;
            } else {
                totalno = totalsize / pagesize + 1;
            }

            // 分页对象
            Page<WeiXinUser> wxuserPage = new Page<WeiXinUser>();
            wxuserPage.setDatas(wxusers);
            wxuserPage.setPageNo(pageno);
            wxuserPage.setTotalNo(totalno);
            wxuserPage.setTotalSize(totalsize);

            result.setData(wxuserPage);
            result.setSuccess(true);
            // System.out.println("OK");
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
            //System.out.println("Error");
        }

        return result;
    }

    @RequestMapping("/index")
    public String index() {

        return "wx_user/index";
    }
}
