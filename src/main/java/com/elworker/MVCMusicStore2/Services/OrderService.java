package com.elworker.MVCMusicStore2.Services;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.elworker.MVCMusicStore2.Dao.OrderDao;
import com.elworker.MVCMusicStore2.Entities.Order;
import com.elworker.MVCMusicStore2.Entities.User;

@Service
public class OrderService {
	
	@Resource
	UserService userService;
	
	@Resource
	OrderDao orderDao;
	
	public ResultObject tryAddOrder(User user, Order order){
		
		String loginNameErrorMessage = userService.tryAddUser(user).getLoginNameErrorMessage();
		
		ResultObjectImpl resultObject = new ResultObjectImpl();
		
		resultObject.setLoginNameErrorMessage(loginNameErrorMessage);
		
		if(loginNameErrorMessage == null){
			order.setUser(user);
			orderDao.create(order);
		}
		return resultObject;
	}

	public interface ResultObject{
		String getLoginNameErrorMessage();
	}
	
	private class ResultObjectImpl implements ResultObject{
	
		private String loginNameErrorMessage;
	
		public void setLoginNameErrorMessage(String loginNameErrorMessage){
			this.loginNameErrorMessage=loginNameErrorMessage;
		}
		
		public String getLoginNameErrorMessage(){
			return loginNameErrorMessage;
		}
	}
}
