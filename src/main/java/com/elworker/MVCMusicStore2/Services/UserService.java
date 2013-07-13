package com.elworker.MVCMusicStore2.Services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.elworker.MVCMusicStore2.Dao.UserDao;
import com.elworker.MVCMusicStore2.Entities.User;

@Component
@Service("UserService")
public class UserService {
	
	@Resource(name = "UserDao")
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

}
