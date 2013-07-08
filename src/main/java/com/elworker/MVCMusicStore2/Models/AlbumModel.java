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
	
	/**
	 * persist new created Album
	 * @param album
	 */
	
	@Transactional
	public void create(Album album) {
		em.persist(album);
	}
	
	/**
	 * retrieve all albums at List
	 * @return
	 */
	
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
	
	/**
	 * retrieve Album when known its ID
	 * @param passid
	 * @return
	 */
	
	public Album findAlbumById(int passid){
		
		Query q = em.createNamedQuery("Album.findAlbumById");
		q.setParameter("albumid", passid);
		
		return (Album) q.getSingleResult();
	}
	
	/**
	 * store edited Album
	 * @param album
	 */
	
	@Transactional
	public void edit(Album album) {
		Album newAlbum = findAlbumById(album.getAlbumId());
		
		newAlbum.setGenre(album.getGenre());
		newAlbum.setArtist(album.getArtist());
		newAlbum.setTitle(album.getTitle());
		newAlbum.setPrice(album.getPrice());
		newAlbum.setAlbumArtUrl(album.getAlbumArtUrl());
		
		em.merge(newAlbum);
	}
	
	/**
	 * delete from DB an Album when known its ID
	 * @param albumId
	 */
	
	@Transactional
	public void deleteAlbumById(Integer albumId) {
		Album deleteAlbum = findAlbumById(albumId);
		
		em.remove(deleteAlbum);
	}
	
}
