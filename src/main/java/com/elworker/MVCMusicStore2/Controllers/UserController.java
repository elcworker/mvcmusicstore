package com.elworker.MVCMusicStore2.Controllers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.elworker.MVCMusicStore2.Entities.Order;
import com.elworker.MVCMusicStore2.Entities.User;
import com.elworker.MVCMusicStore2.Services.OrderService;

@Controller
public class UserController {

	@Resource
	OrderService orderService;
	
	@RequestMapping(value="/AddUser", method=RequestMethod.GET)
	public String getAddUserPage(){
		return "addUser";
	}
	
	@RequestMapping(value="/AddUser", method=RequestMethod.POST)
	public String postAddUserPage(ModelMap model, @RequestParam("loginName") String loginName, @RequestParam("password") String password,
												  @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
												  @RequestParam("address") String address, @RequestParam("city") String city,
												  @RequestParam("state") String state, @RequestParam("postalCode") String postalCode,
												  @RequestParam("country") String country, @RequestParam("phone") String phone,
												  @RequestParam("emailAddress") String emailAddress){
		
		User registerUser = new User();
		
		registerUser.setUserName(loginName);
		registerUser.setUserPassword(password);
		
		Order registerOrder = new Order();
		
		registerOrder.setFirstName(firstName);
		registerOrder.setLastName(lastName);
		registerOrder.setAddress(address);
		registerOrder.setCity(city);
		registerOrder.setState(state);
		registerOrder.setPostalCode(postalCode);
		registerOrder.setCountry(country);
		registerOrder.setPhone(phone);
		registerOrder.setEmail(emailAddress);
		registerOrder.setUser(registerUser);
		
		String errorMessage = orderService.tryAddOrder(registerOrder).getResult();
		
		if(errorMessage == null){
			return "redirect:Store/";
		}
		else{
			model.addAttribute("error", errorMessage);
			return "addUser";
		}
		
		
	}
	
}
