package com.java96.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;
import com.java96.dto.UploadDTO;
import com.java96.mapper.MovieMapper;
import com.java96.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper mapper;
	@Autowired
	MovieMapper mmapper;
	
	@Transactional
	@Override
	public void register_rpl(ReplyDTO dto) {
		mapper.register(dto);
		mmapper.updateReplyCnt(dto.getTno());
	}

	@Override
	public List<ReplyDTO> getList_rpl(int tno) {
		return mapper.getList(tno);
	}

	@Override
	public void delete_rpl(ReplyDTO dto) {
		mapper.delete(dto);
	}

	@Override
	public void update_rpl(ReplyDTO dto) {
		mapper.update(dto);
		
	}

}
