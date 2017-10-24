package com.java96.service;

import java.util.List;

import com.java96.dto.MovieDTO;
import com.java96.dto.UploadDTO;

public interface UploadService {
	
	public void registerAttach(UploadDTO dto);
	
	public void deleteAttach(UploadDTO dto);
	
	public List<UploadDTO> viewAttach(Long tno);
	
	public void modifyAttach(UploadDTO dto);

}
