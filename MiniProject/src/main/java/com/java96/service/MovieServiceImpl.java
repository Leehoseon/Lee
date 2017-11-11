package com.java96.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	public MovieDTO getView(int tno) {
		
		mapper.updateReplyCnt(tno);
		mapper.updatedbhit(tno);
		return mapper.view(tno);
	}


	@Override
	
	public void register(MovieDTO dto) {
		
		String filename = dto.getFilename();
		
		System.out.println(filename+"filname");
		
		if(filename != null) {
			mapper.register(dto);
			
		}
		if(filename == null) {
			
			mapper.registerAdd(dto);
		}
		
	}


	@Override
	public void remove(int tno) {
		
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


	@Override
	public void updateReplycnt(int tno) {
		mapper.updateReplyCnt(tno);
		
	}


	@Override
	public void registerAdd(MovieDTO dto) {
		mapper.registerAdd(dto);
		
	}


	


	
}
