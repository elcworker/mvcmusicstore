package com.elworker.MVCMusicStore2.Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.elworker.MVCMusicStore2.Entities.User;

@Component
@Service("UserDao")
public class UserDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<User> findUsersByName(String userName){
		
		List<User> userList = new ArrayList<User>();
		
		try {
			Query q = em.createNamedQuery("User.findUserByName");
			q.setParameter("userName", userName);
			
			userList = q.getResultList();
		}
		catch(Exception ex) {
			
		}
		
		return userList;
	}

}
