package com.java96.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java96.dto.Criteria;
import com.java96.dto.MovieDTO;


public interface MovieMapper {

	@Delete("delete from tbl_testmovie where tno = #{tno}")
	public void remove(Long tno);
	
	@Update("UPDATE tbl_testmovie SET title = #{title} , writer = #{writer}, filename=#{filename} where tno = #{tno}")
	public void modify(MovieDTO dto);
	
	public List<MovieDTO> listPage(Criteria cri);
	
	public MovieDTO view(Long tno);
	
//	@Select("select count(*) from tbl_testmovie where tno > 0")
	public int getTotal(Criteria cri);
	
	
	
	@Update("update tbl_testmovie set replycnt = replycnt + 1 where tno = #{tno}")
	public void updateReplyCnt(int tno);
	
	@Update("update tbl_testmovie set dbhit = dbhit + 1 where tno = #{tno}")
	public void updatedbhit(Long tno);
	
	@Insert("insert into tbl_testmovie (title,writer,filename) values(#{title},#{writer},#{filename})")
	public void register(MovieDTO dto);
	
	
	
	
}
