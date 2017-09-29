package com.java96.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java96.dto.Criteria;
import com.java96.dto.TodoDTO;
import com.java96.mapper.TodoMapper;


import lombok.extern.java.Log;

@Service
@Log
public class TodoServiceImpl implements TodoService {

	@Inject
	private TodoMapper mapper;
	
	
	
	@Override
	public TodoDTO get(Long tno) {
		log.info("service get"+ tno);
		return mapper.findById(tno);
	}

	
	

	@Override
	public List<TodoDTO> list(Criteria cri) {
		cri.setTotal(mapper.getTotal(cri));
		
		return mapper.ListPage(cri);
	}

	@Override
	public void remove(TodoDTO dto) {
		
		mapper.delete(dto);
	}

	@Override
	public void update(TodoDTO dto) {
		mapper.update(dto);
		
	}


	@Transactional
	@Override
	public void register(TodoDTO dto) {
		log.info("service register"+ dto);
		
		mapper.insert(dto);
		/*uploadMapper.insert(ufiles);*/

	}


}
