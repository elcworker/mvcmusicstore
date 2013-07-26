package com.elworker.MVCMusicStore2.Entities;

//import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
	@NamedQuery(name = "Genre.findAll", query = "SELECT g FROM Genre g"),
	@NamedQuery(name = "Genre.findByGenreId", query = "SELECT g FROM Genre g WHERE g.genreId = :genreId")
})
public class Genre {
	
	@Id
	@GeneratedValue
	@Column(name = "GENRE_ID")
	private Integer genreId;
	private String name;
	private String description;
	//private Collection<Album> albums;
	
	public Genre(){
		
	}
	
	public Integer getGenreId() {
		return genreId;
	}
	
	public void setGenreId(Integer genreId){
		this.genreId = genreId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
/*
	public Collection<Album> getAlbums() {
		return albums;
	}

	public void setAlbums(Collection<Album> albums) {
		this.albums = albums;
	}
*/
	
}
