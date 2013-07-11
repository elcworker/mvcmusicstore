package com.elworker.MVCMusicStore2.Controllers;

import java.text.DecimalFormat;
import java.text.NumberFormat;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.elworker.MVCMusicStore2.Entities.Album;
import com.elworker.MVCMusicStore2.Models.AlbumModel;
import com.elworker.MVCMusicStore2.Services.ShoppingCartService;

@Controller
public class ShoppingCartController {
	
	@Resource(name="albumService")
	AlbumModel albumModel;
	
	@Resource(name="ShoppingCartService")
	ShoppingCartService shoppingCartService;
	
	NumberFormat formatter = new DecimalFormat("#0.00");
	
	String totalPrice = "";
	
	@RequestMapping(value="/ShoppingCart", method=RequestMethod.GET)
	public String getShoppingCartPage(@RequestParam(value="addedAlbumId", required=false) Integer addedAlbumId, 
									  @RequestParam(value="deletedAlbumNum", required=false) Integer deletedAlbumNum, ModelMap model) {
		
		if(deletedAlbumNum!=null) {
			model.addAttribute("removedAlbumInfo", shoppingCartService.deleteAlbumByNum(deletedAlbumNum).getTitle() + "has been removed from yuor cart.");
		}
		else {
			Album addedAlbum = albumModel.findAlbumById(addedAlbumId);
			shoppingCartService.setAlbum(addedAlbum);
		}
		
		totalPrice = formatter.format(shoppingCartService.getTotalPrice());
		
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("albumList", shoppingCartService.getAllAlbums());
		return "ShoppingCart";
	}

}
