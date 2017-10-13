package com.java96.service;


import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;

public interface ReplyService {

	

	public void register_rpl(ReplyDTO dto);
	
	public ReplyDTO getList_rpl(Criteria cri);

	
}
