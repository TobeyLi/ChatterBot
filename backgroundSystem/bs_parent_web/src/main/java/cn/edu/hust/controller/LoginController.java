package cn.edu.hust.controller;

import javax.servlet.http.HttpSession;

import cn.edu.hust.bean.AJAXResult;
import cn.edu.hust.bean.User;
import cn.edu.hust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
    
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//session.removeAttribute("loginUser");
		//使这个session失效
		session.invalidate();
		return "redirect:/login";
	}
	
	@RequestMapping("/shouye")
		public String shouye() {

		return "shouye";
	}
	
	@ResponseBody
	@RequestMapping("/doAJAXLogin")
	public Object doAJAXLogin(User user, HttpSession session) {
	AJAXResult result = new AJAXResult();
	
	 User dbUser = userService.query4Login(user);
		
	/**登陆，登出
	 *  4个范围：page，request，session，application
	 *    放到session范围
	 *    如果放到aplication范围的话，只有一个，后来登陆的会把前面的冲掉
	 */
	 
	 
	 if( dbUser != null) {
		 session.setAttribute("loginUser", dbUser);
		 
		 result.setSuccess(true);
	 }else {
		 result.setSuccess(false);
	 }
	
	  return result;
	}

}
