package com.elworker.MVCMusicStore2.Services;

import java.util.List;

import com.elworker.MVCMusicStore2.Entities.Genre;

/**
 * Mocking DAO which works with genre model.
 * It need for preview web UI of project before implementing backend.  
 * @author elworker
 *
 */
public class MockGenreService implements GenreService {
	
	/** keep list of stub genre objects
	 * 
	 */
	private List<Genre> genreList;
	
	//setter for genreList
	
	public void setGenreList(List<Genre> genreList){
		this.genreList = genreList;
	}
	
	/**Implements method interface GenreService
	 * 
	 */
	
	public List<Genre> getAllGenres(){
		
		return genreList;
		
	}
}
