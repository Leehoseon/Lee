package com.java96.service;

import org.springframework.stereotype.Service;

import com.java96.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	
	
	@Override
	public MemberDTO login(String uid) {

		MemberDTO dto = new MemberDTO();
		
		dto.setUid(dto.getUid());
		dto.setUpw(dto.getUpw());
		
		
		System.out.println(dto);
		return dto;
	}

	@Override
	public void register(MemberDTO dto) {
		
		
		
	}

	
	
}
