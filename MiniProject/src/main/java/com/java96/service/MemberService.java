package com.java96.service;

import java.util.List;

import com.java96.dto.Criteria;
import com.java96.dto.HistoryDTO;
import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;
import com.java96.dto.MovieDTO;
import com.java96.dto.SearchCriteria;

public interface MemberService {

	public MemberVO login(MemberDTO dto);
	
	public void register(MemberDTO dto);
	
	public void modify(MemberDTO dto);
	
	public void remove(MemberDTO dto);
	
	public List<MemberDTO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public void addHistory(HistoryDTO hdto);
	
	public void roleModify(MemberDTO dto);
	
	public List<HistoryDTO> getHistoryList(SearchCriteria cri);
	
	public MemberVO getRole(MemberDTO dto);
	
}
