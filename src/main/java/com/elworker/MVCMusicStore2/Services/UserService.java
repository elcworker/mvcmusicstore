package com.elworker.MVCMusicStore2.Services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.elworker.MVCMusicStore2.Dao.UserDao;
import com.elworker.MVCMusicStore2.Entities.User;

@Service
public class UserService {
	
	@Resource
	UserDao userDao;
	
	public boolean verifyUser(User user){
		
		boolean result = false;
		
		List<User> foundUsers = userDao.findUsersByName(user.getUserName());
		
		if(foundUsers.isEmpty())
			return result;
		else
			if(foundUsers.get(0).getUserPassword().equals(user.getUserPassword()))
				result = true;
		
		return result;
	}
	
	public ResultObject tryAddUser(User user){
		
		ResultObjectImpl resultObject = new ResultObjectImpl();
		
		if(isUserExist(user))
			resultObject.setLoginNameErrorMessage("User with this name alrady exist. Try another one.");
		else
			userDao.create(user);
		
		return resultObject;
		}
	
	public interface ResultObject{
		String getLoginNameErrorMessage();
	}
	
	private class ResultObjectImpl implements ResultObject{
		
		private String loginNameErrorMessage=null;
		
		public void setLoginNameErrorMessage(String loginNameErrorMessage){
			
			this.loginNameErrorMessage=loginNameErrorMessage;
			
		}
		
		public String getLoginNameErrorMessage(){
			
			return loginNameErrorMessage;
			
		}
	}
	
	private boolean isUserExist(User user){
		if(userDao.findUsersByName(user.getUserName()).isEmpty())
			return false;
		else
			return true;
	}
	
}
