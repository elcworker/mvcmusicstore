package com.elworker.MVCMusicStore2.Controllers;

import com.elworker.MVCMusicStore2.Entities.Order;
import com.elworker.MVCMusicStore2.Entities.User;

public class RegistrationForm {
	
	private User user;
	
	private Order order;
	
	public RegistrationForm(){
		
	}
	
	public void setUser(User user){
		this.user=user;
	}
	
	public User getUser(){
		return user;
	}
	
	public void setOrder(Order order){
		this.order=order;
	}
	
	public Order getOrder(){
		return order;
	}
}
