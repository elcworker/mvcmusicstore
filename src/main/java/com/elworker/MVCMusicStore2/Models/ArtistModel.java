package com.elworker.MVCMusicStore2.Models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.elworker.MVCMusicStore2.Entities.Artist;

@Component
@Service("artistService")
public class ArtistModel {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void create(Artist artist){
		em.persist(artist);
	}
	
	public List<Artist> findAllArtists(){
		
		List<Artist> artistList = new ArrayList<Artist>();
		
		try {
			Query q = em.createNamedQuery("Artist.findAll");
			artistList = q.getResultList();
		} catch (Exception ex){
			
		}
		return artistList;
		
	}
	
	public Artist findGenreById(int passId){
		List<Artist> artistList = new ArrayList<Artist>();
		
		try{
			Query q = em.createNamedQuery("Artist.findByArtistId");
			q.setParameter("artistId", passId);
			
			artistList = q.getResultList();
		} catch (Exception ex){
			
		}
		return artistList.get(0);
	}

}

