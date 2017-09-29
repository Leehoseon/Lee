package com.java96.service;

import java.util.List;



import com.java96.dto.Criteria;
import com.java96.dto.TodoDTO;

public interface TodoService {

	public TodoDTO get(Long tno);
	
	
	
	public List<TodoDTO> list(Criteria cri);
	
	public void remove(TodoDTO dto);
	
	public void update(TodoDTO dto);

	
	
	public void register(TodoDTO dto);
		

}
