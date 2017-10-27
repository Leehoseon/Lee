package com.java96.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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






	

	
	
}
