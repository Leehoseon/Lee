package com.java96.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.java96.dto.Criteria;
import com.java96.dto.ReplyDTO;
import com.java96.service.ReplyService;

import lombok.extern.java.Log;

@RestController

@RequestMapping("/reply/*")
@Log
public class ReplyController {

	@Autowired
	ReplyService service;
	
	@PostMapping("/new")
	public void register(@RequestBody ReplyDTO dto) {
		
		service.register_rpl(dto);
		
	}
	
	@GetMapping("/{tno}")
	public ReplyDTO list(@PathVariable("tno") Criteria cri) {
		
		
		return service.getList_rpl(cri);
	}
	
}
