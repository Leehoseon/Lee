package com.java96.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java96.dto.MemberDTO;
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
	public MemberDTO login(String uid) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
