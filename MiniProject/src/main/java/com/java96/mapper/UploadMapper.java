package com.java96.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.java96.dto.MovieDTO;
import com.java96.dto.UploadDTO;

public interface UploadMapper {
	
	/*@Insert("insert into tbl_testattach (original,uploadName,thumbName,tno) values(#{original},#{uploadName},#{thumbName}, LAST_INSERT_ID())")*/
	public void registerAttach(UploadDTO dto);
	
	@Delete("delete from tbl_testattach where thumbName = #{thumbName}")
	public void removeAttach(UploadDTO dto);
	
	@Select("select * from tbl_testattach where tno= #{tno}")
	public List<UploadDTO> viewAttach(int tno);
	
	public void modifyAttach(UploadDTO dto);

}
