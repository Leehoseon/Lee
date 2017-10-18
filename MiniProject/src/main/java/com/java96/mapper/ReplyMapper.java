package com.java96.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;

public interface ReplyMapper {
	
	@Insert("insert into tbl_testreply (reply,replyer,tno) values(#{reply},#{replyer},#{tno})")
	public void register(ReplyDTO dto);
	
	public List<ReplyDTO> getList(int tno);
	
	@Delete("delete from tbl_testreply where rno=#{rno}")
	public void delete(ReplyDTO dto);
	
	@Update("update tbl_testreply set reply = #{reply} where rno = #{rno}")
	public void update(ReplyDTO dto);
	

}
