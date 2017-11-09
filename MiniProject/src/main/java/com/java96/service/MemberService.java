package com.java96.service;

import java.util.List;

import com.java96.dto.Criteria;
import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;
import com.java96.dto.MovieDTO;

public interface MemberService {

	public MemberVO login(MemberDTO dto);
	
	public void register(MemberDTO dto);
	
	public void modify(MemberDTO dto);
	
	public void remove(MemberDTO dto);
	
	public List<MemberDTO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public void addHistory(MemberDTO dto);
	
	public void roleModify(MemberDTO dto);
	
}
