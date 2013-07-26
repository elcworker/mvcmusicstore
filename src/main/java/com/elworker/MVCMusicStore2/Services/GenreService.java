package com.elworker.MVCMusicStore2.Services;

import java.util.List;


import com.elworker.MVCMusicStore2.Entities.Genre;

public interface GenreService {
	
	/**
	 * return all genre list that stores in system
	 * @return
	 */
	List<Genre> getAllGenres();
}
