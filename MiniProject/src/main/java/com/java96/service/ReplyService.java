package com.java96.service;


import java.util.List;

import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;

public interface ReplyService {

	

	public void register_rpl(ReplyDTO dto);
	
	public List<ReplyDTO> getList_rpl(int tno);
	
	public void delete_rpl(ReplyDTO dto);
	
	public void update_rpl(ReplyDTO dto);

	
}
