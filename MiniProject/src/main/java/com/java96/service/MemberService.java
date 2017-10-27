package com.java96.service;

import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;

public interface MemberService {

	public MemberVO login(MemberDTO dto);
	
	public void register(MemberDTO dto);
	
	public void modify(MemberDTO dto);
	
	public void remove(MemberDTO dto);
	
}
