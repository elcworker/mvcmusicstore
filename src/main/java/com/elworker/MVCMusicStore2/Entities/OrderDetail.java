package com.elworker.MVCMusicStore2.Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class OrderDetail {
	
	@Id
	@GeneratedValue
	private Integer orderDetailId;
	private Integer quantity;
	private Double unitPrice;
	@ManyToOne
	@JoinColumn
	private Order order;
	@ManyToOne
	@JoinColumn
	private Album album;
	
	public OrderDetail(){
		
	}
	
	public Integer getOgderDetailId(){
		return orderDetailId;
	}

	public Integer getQuantity(){
		return quantity;
	}
	
	public void setQuantity(Integer quantity){
		this.quantity = quantity;
	}
	
	public Double getUnitPrice(){
		return unitPrice;
	}
	
	public void setUnitPrice(Double unitPrice){
		this.unitPrice = unitPrice;
	}
	
	public Order getOrder(){
		return order;
	}
	
	public void setOrder(Order order){
		this.order = order;
	}
	
	public Album getAlbum(){
		return album;
	}
	
	public void setAlbum(Album album){
		this.album = album;
	}
}
