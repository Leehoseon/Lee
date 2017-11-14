package com.java96.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java96.common.CommonUtil;
import com.java96.dto.Criteria;
import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;
import com.java96.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;
	@Autowired
	CommonUtil util;

	@Override
	public void register(MemberDTO dto) {
		
		String utill = util.encryptToSHA512(dto.getUpw());
		
		dto.setUpw(utill);
		
		mapper.register(dto);
		
	}

	@Override
	public MemberVO login(MemberDTO dto) {
		
		String utill = util.encryptToSHA512(dto.getUpw());
		
		dto.setUpw(utill);
		
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

	@Override
	public List<MemberDTO> getHistoryList(MemberDTO dto) {
		
		return mapper.getHistoryList(dto);
		
	}

	@Override
	public MemberVO getRole(MemberDTO dto) {
		return mapper.getRole(dto);
	}
	
}
