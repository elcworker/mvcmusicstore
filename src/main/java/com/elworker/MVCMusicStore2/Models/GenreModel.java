package com.elworker.MVCMusicStore2.Models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.elworker.MVCMusicStore2.Entities.Genre;

@Service
public class GenreModel {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void create(Genre genre){
		em.persist(genre);
	}
	
	public List<Genre> findAllGenres(){
		
		List<Genre> genreList = new ArrayList<Genre>();
		
		try {
			Query q = em.createNamedQuery("Genre.findAll");
			genreList = q.getResultList();
		} catch (Exception ex){
			
		}
		return genreList;
		
	}
	
	public Genre findGenreById(int passId){
		List<Genre> genreList = new ArrayList<Genre>();
		
		try{
			Query q = em.createNamedQuery("Genre.findByGenreId");
			q.setParameter("genreId", passId);
			
			genreList = q.getResultList();
		} catch (Exception ex){
			
		}
		return genreList.get(0);
	}

}
