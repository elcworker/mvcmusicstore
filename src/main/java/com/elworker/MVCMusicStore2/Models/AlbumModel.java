package com.elworker.MVCMusicStore2.Models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.elworker.MVCMusicStore2.Entities.Album;

@Component
@Service("albumService")

public class AlbumModel {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void create(Album album) {
		em.persist(album);
	}
	
	public List<Album> findAllAlbums() {
		
		List<Album> albumList = new ArrayList<Album>();
		
		try {
			Query q = em.createNamedQuery("Album.findAll");
			albumList = q.getResultList();
		}
		catch(Exception e) {
			
		}
		
		return albumList;
	}
	
	public Album findAlbumById(int passid){
		
		Query q = em.createNamedQuery("Album.findAlbumById");
		q.setParameter("albumid", passid);
		
		return (Album) q.getSingleResult();
	}
}
