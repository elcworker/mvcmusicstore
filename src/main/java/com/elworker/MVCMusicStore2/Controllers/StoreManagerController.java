package com.elworker.MVCMusicStore2.Controllers;

import java.util.List;

import javax.annotation.Resource;

//import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.elworker.MVCMusicStore2.Entities.Album;
import com.elworker.MVCMusicStore2.Entities.Artist;
import com.elworker.MVCMusicStore2.Entities.Genre;
import com.elworker.MVCMusicStore2.Models.AlbumModel;
import com.elworker.MVCMusicStore2.Models.ArtistModel;
import com.elworker.MVCMusicStore2.Models.GenreModel;

@Controller
@RequestMapping("/StoreManager")
public class StoreManagerController {
	
	//protected static Logger Logger = Logger.getLogger("Controller");
	
	@Resource(name="albumService")
	AlbumModel albumModel;
	
	@Resource(name="genreService")
	GenreModel genreModel;
	
	@Resource(name="artistService")
	ArtistModel artistModel;
	
	/**
	 * Mapping the list of albums for Store manager page 
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView getStoreManagerPage(ModelMap model){
		
		//Logger.debug("Just got Store Manager page");
		
		List<Album> albumList = albumModel.findAllAlbums();
		
		model.put("albumList", albumList);
		
		return new ModelAndView("StoreManager", "albumModel", albumModel);
	}
	
	/**
	 * Mapping the Album Detail for Store manager page
	 * @param detailsAlbumId
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value="/DetailsAlbum", method=RequestMethod.GET)
	public String getDetailsAlbumPage(@RequestParam("detailsAlbumId") Integer detailsAlbumId, ModelMap model){
		
		Album detailsAlbum = albumModel.findAlbumById(detailsAlbumId);
		
		model.put("detailsAlbumId", detailsAlbumId);
		model.put("detailsAlbum", detailsAlbum);
		
		return "DetailsAlbum";
		
	}
	
	/**
	 * Mapping edit album page for method GET
	 * @param editAlbumId
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value="/EditAlbum", method=RequestMethod.GET)
	public String getEditAlbumPage(@RequestParam("editAlbumId") Integer editAlbumId, ModelMap model) {
		
		Album editAlbum = albumModel.findAlbumById(editAlbumId);
		
		List<Genre> genreList = genreModel.findAllGenres();
		List<Artist> artistList = artistModel.findAllArtists();
		
		model.addAttribute("genres", genreList);
		model.addAttribute("artists", artistList);
		
		model.addAttribute("selectedGenre", editAlbum.getGenre().getName());
		model.addAttribute("selectedArtist", editAlbum.getArtist().getName());
		
		model.addAttribute("editAlbum", editAlbum);
		
		return "EditAlbum";
	}
	
	/**
	 * Mapping edit album page for method POST
	 * @param albumarturl
	 * @param price
	 * @param txtTitle
	 * @param genreSelected
	 * @param artistSelected
	 * @param editAlbumId
	 * @param editAlbum
	 * @return
	 */
	
	@RequestMapping(value="/EditAlbum", method=RequestMethod.POST)
	public String setEditAlbumPage(@RequestParam("albumArtUrl") String albumarturl, @RequestParam("price") String price, @RequestParam("title") String txtTitle, 
			         			   @RequestParam("genreSelected") Integer genreSelected, @RequestParam("artistSelected") Integer artistSelected, 
			         			   @RequestParam("editAlbumId") Integer editAlbumId, @ModelAttribute("editAlbum") Album editAlbum) {
		
		Integer albumId = editAlbumId;
		Album myAlbum = albumModel.findAlbumById(albumId);
		
		Genre newGenre = genreModel.findGenreById(genreSelected);
		myAlbum.setGenre(newGenre);
		
		myAlbum.setTitle(txtTitle);
		Artist newArtist = artistModel.findArtistById(artistSelected);
		
		myAlbum.setArtist(newArtist);
		
		myAlbum.setPrice(Double.parseDouble(price));
		
		myAlbum.setAlbumArtUrl(albumarturl);
		
		albumModel.edit(myAlbum);
		
		return "redirect:";
	}
	
	/**
	 * Mapping Create Album page for method GET
	 * @param editAlbumId
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value="/CreateAlbum", method=RequestMethod.GET)
	public String getCreateAlbumPage(ModelMap model) {
		
		Album newAlbum = new Album();
		
		List<Genre> genreList = genreModel.findAllGenres();
		List<Artist> artistList = artistModel.findAllArtists();
		
		model.addAttribute("genres", genreList);
		model.addAttribute("artists", artistList);
		
		model.addAttribute("createAlbum", newAlbum);
		
		return "CreateAlbum";
	}
	
	/**
	 * Mapping Create Album page for method POST
	 * @param albumarturl
	 * @param price
	 * @param txtTitle
	 * @param genreSelected
	 * @param artistSelected
	 * @param editAlbumId
	 * @param editAlbum
	 * @return
	 */
	
	@RequestMapping(value="/CreateAlbum", method=RequestMethod.POST)
	public String setCreateAlbumPage(@RequestParam("genreSelected") Integer genreSelected, @RequestParam("artistSelected") Integer artistSelected,
									@ModelAttribute("createAlbum") Album createAlbum) {
		
		Genre createGenre = genreModel.findGenreById(genreSelected);
		Artist createArtist = artistModel.findArtistById(artistSelected);
		
		createAlbum.setGenre(createGenre);
		createAlbum.setArtist(createArtist);
		
		albumModel.create(createAlbum);
		
		return "redirect:";
	}
}
