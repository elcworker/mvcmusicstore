package com.elworker.MVCMusicStore2.Controllers;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.elworker.MVCMusicStore2.Entities.Album;
import com.elworker.MVCMusicStore2.Entities.Genre;
import com.elworker.MVCMusicStore2.Models.AlbumModel;
//import com.elworker.MVCMusicStore2.Models.GenreModel;
import com.elworker.MVCMusicStore2.Services.GenreService;

@Controller
@RequestMapping("/Store")
public class StoreController {
	
	//@Resource(name="genreModel")
	//private GenreModel genreModel;
	
	@Resource(name="defaultGenreService")
	private GenreService genreService;
	
	@Resource(name="albumService")
	private AlbumModel albumModel;

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getStoreIndexPage(ModelMap model) {
		List<Genre> myGenreList = genreService.getAllGenres();
		
		model.put("genreList", myGenreList);
		model.put("genreCount", myGenreList.size());
		
		return "storeindex";
	}
	
	@RequestMapping(value="/Browse", method=RequestMethod.GET)
	public String getStoreBrowsePage(@RequestParam(value = "genre",required = false) String genreName, ModelMap model) {
		List<Album> foundAlbum = new ArrayList<Album>();
		
		if(genreName == null) {
			model.put("genre", "empty");
		}
		else {
			List<Album> myAlbum = albumModel.findAllAlbums();
			
			for(Album tempAlbum: myAlbum) {
				if (tempAlbum.getGenre().getName().equals(genreName)) {
					foundAlbum.add(tempAlbum);
				}
			}
			
			model.put("genre", genreName);
			model.put("foundAlbum", foundAlbum);
		}
		
		return "Browse";	
	}
	
	@RequestMapping(value="/Details", method=RequestMethod.GET)
	public String getStoreDetailsPage(@RequestParam(value = "albumId", required = false) Integer albumID, ModelMap model) {
		
		Album tempAlbum = albumModel.findAlbumById(albumID);
		
		model.put("albumId", albumID);
		model.put("detailedAlbum", tempAlbum);
		model.put("addedAlbum", tempAlbum);
		
		return "Details";
	}
}
