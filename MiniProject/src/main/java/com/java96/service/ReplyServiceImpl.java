package com.java96.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;
import com.java96.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper mapper;

	@Override
	public void register_rpl(ReplyDTO dto) {
		
		mapper.register(dto);
	}

	@Override
	public ReplyDTO getList_rpl(Criteria cri) {
		
		return mapper.getList(cri);
		
	}

	
	
	
	
	
	

}
