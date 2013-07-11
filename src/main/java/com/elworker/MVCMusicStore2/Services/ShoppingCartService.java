package com.elworker.MVCMusicStore2.Services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.elworker.MVCMusicStore2.Entities.Album;

@Component
@Service("ShoppingCartService")

public class ShoppingCartService {
	
	private List<Album> albumList = new ArrayList<Album>();
	
	
	public Album deleteAlbumByNum(int albumNum) {
		
		Album album = albumList.get(albumNum);
		
		albumList.remove(albumNum);
		
		return album;
	}
	
	public void setAlbum(Album album) {
		albumList.add(album);
	}
	
	public List<Album> getAllAlbums() {
		return albumList;
	}
	
	public double getTotalPrice() {
		
		double price = 0;
		
		for(Album album : albumList)
			price += album.getPrice();
		
		return price;
		
	}

}
