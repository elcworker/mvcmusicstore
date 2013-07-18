package com.elworker.MVCMusicStore2.Controllers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.elworker.MVCMusicStore2.Services.OrderService;

@Controller
public class UserController {

	@Resource
	OrderService orderService;
	
	@RequestMapping(value="/AddUser", method=RequestMethod.GET)
	public String getAddUserPage(ModelMap model){
		
		RegistrationForm registrationForm = new RegistrationForm();
		
		model.addAttribute("registrationForm", registrationForm);
		return "addUser";
	}
	
	@RequestMapping(value="/AddUser", method=RequestMethod.POST)
	public String postAddUserPage(@ModelAttribute("registrationForm") RegistrationForm registrationForm, ModelMap model){
		
		String errorMessage = orderService.tryAddOrder(registrationForm.getUser(), registrationForm.getOrder()).getLoginNameErrorMessage();
		
		if(errorMessage == null){
			return "redirect:Store/";
		}
		else{
			model.addAttribute("error", errorMessage);
			return "addUser";
		}
	}
}
