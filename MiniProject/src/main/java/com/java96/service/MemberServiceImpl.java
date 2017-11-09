package com.java96.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java96.dto.Criteria;
import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;
import com.java96.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;
	
	

	@Override
	public void register(MemberDTO dto) {
		
		mapper.register(dto);
		
	}



	@Override
	public MemberVO login(MemberDTO dto) {
		return mapper.login(dto);
	}



	@Override
	public void modify(MemberDTO dto) {
		
		mapper.modify(dto);
		
		
	}



	@Override
	public void remove(MemberDTO dto) {
		mapper.remove(dto);
		
	}



	@Override
	public List<MemberDTO> getList(Criteria cri) {
		
		cri.setTotal(mapper.getTotal(cri));
		return mapper.getList(cri);
	}



	@Override
	public int getTotal(Criteria cri) {
		
		return mapper.getTotal(cri);
	}



	@Override
	public void addHistory(MemberDTO dto) {
		mapper.addHistory(dto);
		
	}



	@Override
	public void roleModify(MemberDTO dto) {
		mapper.roleModify(dto);
		
	}


	
	
}
