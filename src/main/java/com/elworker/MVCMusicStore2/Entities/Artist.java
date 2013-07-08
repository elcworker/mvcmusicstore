package com.elworker.MVCMusicStore2.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
	@NamedQuery(name = "Artist.findAll", query = "SELECT a FROM Artist a"),
	@NamedQuery(name = "Artist.findByArtistId", query = "SELECT a FROM Artist a WHERE a.artistId = :artistId")
})
public class Artist {

	@Id
	@GeneratedValue
	@Column(name = "ARTIST_ID")
	private Integer artistId;
	private String name;
	
	public Artist(){
		
	}

	public Integer getArtistId() {
		return artistId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
