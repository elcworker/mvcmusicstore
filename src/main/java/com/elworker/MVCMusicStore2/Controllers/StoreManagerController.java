package com.elworker.MVCMusicStore2.Controllers;

import java.util.List;

import javax.annotation.Resource;

//import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.elworker.MVCMusicStore2.Entities.Album;
import com.elworker.MVCMusicStore2.Models.AlbumModel;

@Controller
@RequestMapping("/StoreManager")
public class StoreManagerController {
	
	//protected static Logger Logger = Logger.getLogger("Controller");
	
	@Resource(name="albumService")
	AlbumModel albumModel;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView getStoreManagerPage(ModelMap model){
		
		//Logger.debug("Just got Store Manager page");
		
		List<Album> albumList = albumModel.findAllAlbums();
		
		model.put("albumList", albumList);
		
		return new ModelAndView("StoreManager", "albumModel", albumModel);
	}
}
