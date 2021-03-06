package com.java96.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java96.dto.Criteria;
import com.java96.dto.HistoryDTO;
import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;
import com.java96.dto.MovieDTO;
import com.java96.dto.SearchCriteria;

public interface MemberMapper {

	@Select("select * from tbl_member where uid = #{uid} and upw = #{upw}")
	public MemberVO login(MemberDTO dto);
	
	@Insert("insert into tbl_member(uid,upw,uname,uemail) values(#{uid},#{upw},#{uname},#{uemail})")
	public void register(MemberDTO dto);
	
	@Update("UPDATE tbl_member SET role = #{role} where uid = #{uid}")
	public void roleModify(MemberDTO dto);
	
	@Update("UPDATE tbl_member SET upw = #{upw} where uid = #{uid}")
	public void modify(MemberDTO dto);
	
	@Delete("delete from tbl_member where uid=#{uid}")
	public void remove(MemberDTO dto);
	
	/*@Select("select * from tbl_member order by uid limit #{skip} ,9")*/
	public List<MemberDTO> getList(Criteria cri);
	
	/*@Select("select count(*) from tbl_member ")*/
	public int getTotal(Criteria cri);
	
	@Insert("insert into tbl_history (uid,ipaddress) values (#{uid},#{ipaddress})")
	public void addHistory(HistoryDTO hdto);
	
	@Select("select count(*) from tbl_history where uid = #{keyword}")
	public int getHistoryTotal(Criteria cri);
	
	@Select("select * from tbl_history where uid = #{keyword} order by connectdate desc limit #{skip} ,9")	
	public List<HistoryDTO> getHistoryList(SearchCriteria cri);
	
	@Select("select * from tbl_member where uid = #{uid}")
	public MemberVO getRole(MemberDTO dto);
	
	
}
