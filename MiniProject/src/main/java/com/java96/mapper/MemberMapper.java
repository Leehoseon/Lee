package com.java96.mapper;

import org.apache.ibatis.annotations.Insert;

import com.java96.dto.MovieDTO;

public interface MemberMapper {

	
	@Insert("insert into tbl_member(uid,upw) values(#{uid},#{upw})")
	public void register(MovieDTO dto);
	
}
