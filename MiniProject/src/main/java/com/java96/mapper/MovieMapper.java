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
	public void remove(int tno);
	
	@Update("UPDATE tbl_testmovie SET title = #{title} , writer = #{writer}, filename=#{filename} where writer = #{writer} and tno=#{tno}")
	public void modify(MovieDTO dto);
	
	public List<MovieDTO> listPage(Criteria cri);
	
	public MovieDTO view(int tno);
	
//	@Select("select count(*) from tbl_testmovie where tno > 0")
	public int getTotal(Criteria cri);
	
	
	
	@Update("UPDATE tbl_testmovie as a SET replycnt = (select count(*) from  tbl_testreply as b  where tno = #{tno}) where tno = #{tno}")
	public void updateReplyCnt(int tno);
	
	@Update("update tbl_testmovie set dbhit = dbhit + 1 where tno = #{tno}")
	public void updatedbhit(int tno);
	
	@Insert("insert into tbl_testmovie (title,writer) values(#{title},#{writer})")
	public void registerAdd(MovieDTO dto);
	
	@Update("update tbl_testmovie set title = #{title}, writer = #{writer}, filename = #{filename} where  writer = 'writer' ")
	public void register(MovieDTO dto);
	
	
	
	
}
