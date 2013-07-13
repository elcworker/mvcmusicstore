package com.elworker.MVCMusicStore2.Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

@Entity
@NamedQuery(name = "User.findUserByName", query = "SELECT u FROM User u WHERE u.userName = :userName")
public class User {
	
	@Id
	@GeneratedValue
	private Integer userId;
	private String userName;
	private String userPassword;
	
	public User(){
		
	}

	public Integer getUserId(){
		return userId;
	}
	
	public void setUserId(Integer userId){
		this.userId = userId;
	}
	
	public String getUserName(){
		return userName;
	}
	
	public void setUserName(String userName){
		this.userName = userName;
	}
	
	public String getUserPassword(){
		return userPassword;
	}
	
	public void setUserPassword(String userPassword){
		this.userPassword = userPassword;
	}
}
