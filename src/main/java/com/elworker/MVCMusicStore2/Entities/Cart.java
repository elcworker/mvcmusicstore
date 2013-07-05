package com.elworker.MVCMusicStore2.Entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Cart {
	
	@Id
	@GeneratedValue
	private Integer cartId;
	private Integer count;
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateCreated;
	
	public Cart(){
		
	}
	
	public Integer getCartId(){
		return cartId;
	}
	
	public Integer getCount(){
		return count;
	}
	
	public void setCount(Integer count){
		this.count = count;
	}
	
	public Date getCreationDate(){
		return dateCreated;
	}
	
	public void setCreationDate(Date dateCreated){
		this.dateCreated = dateCreated;
	}
}
