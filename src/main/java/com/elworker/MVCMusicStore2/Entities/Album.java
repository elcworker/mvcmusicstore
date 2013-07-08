package com.elworker.MVCMusicStore2.Entities;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries ({
	@NamedQuery(name="Album.findAlbumById", query="SELECT a FROM Album a WHERE a.albumId = :albumid"),
	@NamedQuery(name="Album.findAll", query="SELECT a FROM Album a")
})
public class Album {
	
	@Id
	@GeneratedValue
	@Column(name="ALBUM_ID")
	private Integer albumId;
	private String title;
	private Double price;
	@Column(name="ALBUM_ART_URL")
	private String albumArtUrl;
	@ManyToOne
	@JoinColumn(name = "GENRE_ID")
	private Genre genre;
	@ManyToOne
	@JoinColumn(name = "ARTIST_ID")
	private Artist artist;
	
	public Album(){
		
	}
	
	public Integer getAlbumId(){
		return albumId;
	}
	
	public void setAlbumId(Integer albumId){
		this.albumId = albumId;
	}

	public String getTitle(){
		return title;
	}
	
	public void setTitle(String title){
		this.title = title;
	}
	
	public Double getPrice(){
		return price;
	}
	
	public void setPrice(Double price){
		this.price = price;
	}
	
	public String getAlbumArtUrl(){
		return albumArtUrl;
	}
	
	public void setAlbumArtUrl(String albumArtUrl){
		this.albumArtUrl = albumArtUrl;
	}
	
	public Genre getGenre(){
		return genre;
	}
	
	public void setGenre(Genre genre){
		this.genre = genre;
	}
	
	public Artist getArtist(){
		return artist;
	}
	
	public void setArtist(Artist artist){
		this.artist = artist;
	}
	
}
