package com.java96.service;

import java.util.List;

import com.java96.dto.Criteria;
import com.java96.dto.MovieDTO;

public interface MovieService {


	
	
	
		public int getTotal(Criteria cri);
		
		public List<MovieDTO> getList(Criteria cri);
	

		public MovieDTO getView(Long tno);
		
		public void register(MovieDTO dto);
		
		public void remove(Long tno);
		
		public void modify(MovieDTO dto);
		
		
	
}
