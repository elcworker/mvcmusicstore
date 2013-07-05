package com.elworker.MVCMusicStore2.Entities;

import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

//import org.junit.BeforeClass;

public class PersistenceTest {
	
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private static int test_point;
	
	@BeforeClass
	public static void initEntityManeger(){
		test_point = 1;
		emf = Persistence.createEntityManagerFactory("MVCMusicStore2PU");
		em = emf.createEntityManager();
	}
	
	@AfterClass
	public static void closeEntityManager(){
		em.close();
		emf.close();
	}
	
	@Test
	public void findGenreById(){
		
		List<Genre> genreList = new ArrayList<Genre>();
		
		genreList = em.createNamedQuery("Genre.findAll").getResultList();
		
		assertNotNull(genreList);
	}
}
