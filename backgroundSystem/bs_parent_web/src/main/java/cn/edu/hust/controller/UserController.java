package cn.edu.hust.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.edu.hust.bean.AJAXResult;
import cn.edu.hust.bean.Page;
import cn.edu.hust.bean.User;
import cn.edu.hust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

	/**
	 * 用户首页
	 * 
	 * @return
	 */

	@Autowired
	private UserService userService;

	@ResponseBody
	@RequestMapping("/deletes")
	public Object deletes(Integer[] userid) {
		
		AJAXResult result=new AJAXResult();
		try {
			Map<String,Object> map=new HashMap<String, Object>();
			map.put("userIds", userid);
			userService.deleteusers(map);
		
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping("/delete")
	public Object delete(Integer userId) {
		AJAXResult result=new AJAXResult();
		try {
			userService.deleteUserById(userId);
		
			result.setSuccess(true);
		
		} catch (Exception e) {
			e.printStackTrace();
			result.setSuccess(false);
		}
		
		return result;
	
	}

	@ResponseBody
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
	}

	@RequestMapping("/edit")
	public String edit(Integer id, Model model) {
	  User user=userService.queryById(id);
	  model.addAttribute("user", user);
	  return "user/edit";
	}

	@RequestMapping("/add")
	public String add() {
		return "user/add";
		
	}
	
	
	@ResponseBody
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
	
	}

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

			List<User> users = userService.pageQueryData(map);

			//System.out.println(users.size());

			// 当前页码

			// 总的数据条数
			int totalsize = userService.pageQueryCount(map);
			System.out.println(totalsize);

			// 最大的页码数
			int totalno = 0;
			if (totalsize % pagesize == 0) {
				totalno = totalsize / pagesize;
			} else {
				totalno = totalsize / pagesize + 1;
			}
			
			// 分页对象
			Page<User> userPage = new Page<User>();
			userPage.setDatas(users);
			userPage.setPageNo(pageno);
			userPage.setTotalNo(totalno);
			userPage.setTotalSize(totalsize);

			result.setData(userPage);
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

		return "user/index";
	}

	@RequestMapping("/index1")
	public String index1(@RequestParam(required = false, defaultValue = "1") Integer pageno,
			@RequestParam(required = false, defaultValue = "1") Integer pagesize, Model model) {

		// 实现分页查询
		// limit ？ ？-->start size

		Map<String, Object> map = new HashMap<String, Object>();

		// 一定要注意起始位置值的设置，一般起始位置是从下标0开始的

		map.put("start", (pageno - 1) * pagesize);
		map.put("size", pagesize);

		List<User> users = userService.pageQueryData(map);

		model.addAttribute("users", users);

		// System.out.println(users.size());
		// if(users.size() != 0) {
		// for(User user:users) {
		// System.out.println(user);
		// }
		//
		//
		// System.out.println("OK");
		//
		//
		// }else{
		// System.out.println("Not Ok");
		// }
		// 当前页码
		model.addAttribute("pageno", pageno);

		// 总的数据条数
		int totalsize = userService.pageQueryCount(map);
		// System.out.println(totalsize);
		// 最大的页码数
		int totalno = 0;
		if (totalsize % pagesize == 0) {
			totalno = totalsize / pagesize;
		} else {
			totalno = totalsize / pagesize + 1;
		}
		// System.out.println(totalno);
		model.addAttribute("totalno", totalno);

		return "user/index";
	}

}
