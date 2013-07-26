package com.elworker.MVCMusicStore2.Services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.elworker.MVCMusicStore2.Entities.Genre;
import com.elworker.MVCMusicStore2.Models.GenreModel;

@Service("defaultGenreService")
public class DefaultGenreService implements GenreService {
	
	@Resource
	GenreModel genreModel;
	
	public List<Genre> getAllGenres(){
		
		return genreModel.findAllGenres();
		
	}

}
