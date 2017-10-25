package com.java96.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;
import com.java96.dto.MovieDTO;

public interface MemberMapper {

	@Select("select * from tbl_member where uid = #{uid} and upw = #{upw}")
	public MemberVO login(MemberDTO dto);
	
	
	@Insert("insert into tbl_member(uid,upw) values(#{uid},#{upw})")
	public void register(MemberDTO dto);
	
}
