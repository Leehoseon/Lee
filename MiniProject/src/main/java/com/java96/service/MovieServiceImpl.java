package com.java96.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java96.dto.Criteria;
import com.java96.dto.MovieDTO;
import com.java96.mapper.MovieMapper;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	MovieMapper mapper;
	
	
	@Override
	public List<MovieDTO> getList(Criteria cri) {
		cri.setTotal(mapper.getTotal(cri));
		return mapper.listPage(cri);
		
	}


	@Override
	public MovieDTO getView(Long tno) {
		
		return mapper.view(tno);
	}


	@Override
	public void register(MovieDTO dto) {
		
		mapper.register(dto);
	}


	@Override
	public void remove(Long tno) {
		
		mapper.remove(tno);
		
	}


	@Override
	public void modify(MovieDTO dto) {
		
		mapper.modify(dto);
		
	}


	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotal(cri);
	}


	


	
}
