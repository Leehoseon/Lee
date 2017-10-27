package com.java96.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java96.dto.UploadDTO;
import com.java96.mapper.UploadMapper;


@Service
public class UploadServiceImpl implements UploadService {

	@Autowired
	UploadMapper mapper;
	
	@Override
	public void registerAttach(UploadDTO dto) {
		mapper.registerAttach(dto);

	}

	@Override
	public void deleteAttach(UploadDTO dto) {
		mapper.removeAttach(dto);
		
	}

	@Override
	public List<UploadDTO> viewAttach(int tno) {
		return mapper.viewAttach(tno);
	}

	@Override
	public void modifyAttach(UploadDTO dto) {

		mapper.modifyAttach(dto);
		
	}

	

	

}
