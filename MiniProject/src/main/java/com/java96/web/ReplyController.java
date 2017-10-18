package com.java96.web;

import java.util.List;

import org.aspectj.lang.annotation.Around;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
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
	
	@GetMapping("/list/{tno}")
	public List<ReplyDTO> list(@PathVariable("tno") int tno) {
		/*log.info("tno:"+tno);*/
		log.info(tno+"");
		return service.getList_rpl(tno);
		
		
	}
	@DeleteMapping("/remove")
	public void remove(@RequestBody ReplyDTO dto) {
		
		
		service.delete_rpl(dto);
	}
	@PutMapping("/put")
	public void put(@RequestBody ReplyDTO dto) {
		
		log.info(dto+"dto~~~");
		service.update_rpl(dto);
		
	}
	
}
