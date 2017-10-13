package com.java96.mapper;



import org.apache.ibatis.annotations.Insert;

import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;

public interface ReplyMapper {
	
	@Insert("insert into tbl_testreply (reply,replyer,tno) values(#{reply},#{replyer},#{tno})")
	public void register(ReplyDTO dto);
	
	public ReplyDTO getList(Criteria cri);
	

}
