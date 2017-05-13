package com.hotel.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.entity.User;
import com.hotel.exception.ConditionException;
import com.hotel.service.HotelService;
import com.hotel.service.UserService;


@Controller
public class UserController {
	 
	  
	@Resource
    private UserService userService;
	@Resource
    private HotelService hotelService;
	
	@RequestMapping("/toLogin.do")
	public String toLogin() {
        return "login";
    }
	
	/*@RequestMapping("/toIndex.do")
	public String findAll(ModelMap model){
		List<Hotel> list=hotelService.findAll();
		model.addAttribute("hotelList", list);
		return "index";
		
	}*/
	
	@RequestMapping("/login.do")
    public String checkLogin(String pid,
            ModelMap model, HttpSession session) {
		        
	        try {
	        	 
	        	User user = 
	    	            userService.login(pid);
	    	        session.setAttribute("user", user);
	    	        System.out.println(user);
	    	        
	        } catch(ConditionException e) {
	        	System.out.println(e.getMessage());
	            model.addAttribute("message", e.getMessage());
	          
	            return "login";
	        }
	        return "redirect:index.do";
		
	}
	
	/*@ExceptionHandler
    public String execute(HttpServletRequest request,
            HttpServletResponse response, Exception e) throws Exception {
        if(e instanceof ConditionException) {
            //业务异常自己处理
            request.setAttribute("message", e.getMessage());
            request.setAttribute(
                "cond", request.getParameter("cond"));
            request.setAttribute(
                "pwd", request.getParameter("pwd"));
            return "login";
        } else {
            //系统异常抛出，交给Spring处理
            throw e;
        }s
    }*/
	@RequestMapping("admin/toLogin.do")
	public String toLogin2() {
        return "admin/login";
    }
	
	
}
