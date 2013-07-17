package com.elworker.MVCMusicStore2.Dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.elworker.MVCMusicStore2.Entities.Order;

@Repository
public class OrderDao {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void create(Order order){
		em.persist(order.getUser());
		em.persist(order);
	}

}
