package com.elworker.MVCMusicStore2.Controllers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.elworker.MVCMusicStore2.Entities.User;
import com.elworker.MVCMusicStore2.Services.UserService;

@Controller
@RequestMapping("/Account")
public class LoginLogoutController {
	
	@Resource(name="UserService")
	UserService userService;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLoginPage(ModelMap model){
		
		User loginUser = new User();
		
		model.addAttribute("loginUser", loginUser);
		
		return "loginpage";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String setLoginPage(@ModelAttribute("loginUser") User loginUser, ModelMap model){
		
		boolean checkLoginUser = false;
		
		String destination = "";
		
		checkLoginUser = userService.verifyUser(loginUser);
		
		if(checkLoginUser == false){
			model.put("error", "You have entered invalid login or password!");
			destination = "loginpage";
		}
		else
			destination = "checkout";
		
		return destination;
	}
	

}
