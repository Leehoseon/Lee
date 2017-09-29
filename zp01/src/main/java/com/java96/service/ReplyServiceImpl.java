package com.java96.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;
import com.java96.mapper.ReplyMapper;


@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper mapper;
	
	

	
	@Transactional
	@Override
	public void register(ReplyDTO dto) {

		mapper.create(dto);
		/*todomapper.updateReplyCnt(dto.getTno());*/

	}

	@Override
	public ReplyDTO reage(Integer rno) {
		return mapper.reage(rno);
	}

	@Override
	public void remove(Integer rno) {
		mapper.delete(rno);
	}

	@Override
	public void update(ReplyDTO dto) {
		mapper.update(dto);
	}

	@Override
	public List<ReplyDTO> listPage(Criteria cri) {
		
		return mapper.list(cri);
	}

	@Override
	public ReplyDTO get(Integer rno) {
		return mapper.reage(rno);
	}

}	