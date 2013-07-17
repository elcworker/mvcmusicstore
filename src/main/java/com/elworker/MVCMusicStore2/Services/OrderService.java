package com.elworker.MVCMusicStore2.Services;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.elworker.MVCMusicStore2.Dao.OrderDao;
import com.elworker.MVCMusicStore2.Entities.Order;

@Service
public class OrderService {
	
	@Resource
	UserService userService;
	
	@Resource
	OrderDao orderDao;
	
	public ResultObject tryAddOrder(Order order){
		
		String errorMessage = null;
		
		if(userService.isUserExist(order.getUser())){
			errorMessage = "User with this name alrady exist. Please try anouther name.";
		}
		else{
			orderDao.create(order);
		}
		return new ResultObject(errorMessage);
	}
	
	public class ResultObject{
	
		private String errorMessage;
	
		public ResultObject(String errorMessage){
			this.errorMessage = errorMessage;
		}
	
		public String getResult(){
			return errorMessage;
		}
	}
}
