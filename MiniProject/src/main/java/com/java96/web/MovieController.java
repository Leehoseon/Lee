package com.java96.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java96.dto.Criteria;
import com.java96.dto.MovieDTO;
import com.java96.service.MovieService;

import lombok.extern.java.Log;




@Controller
@RequestMapping("/movie/*")
@Log
public class MovieController {

	@Autowired
	MovieService service;
	
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		model.addAttribute("list",service.getList(cri));
		
		
	}
	
	@GetMapping("/view")
	public void view(Long tno, Model model) {
		
		model.addAttribute("view", service.getView(tno));
		
	}
	
	@GetMapping("/register")
	public void registerGet() {
		
	}
	
	@PostMapping("/register")
	public String register(MovieDTO dto) {
		
		service.register(dto);
		
		return "redirect:/movie/list";
		
	}
	
	@GetMapping("/modify")
	public void modifyGet(Long tno, Model model) {
		
		model.addAttribute("view",service.getView(tno));
		
	}
	
	@PostMapping("/modify")
	public String modify(MovieDTO dto) {
		log.info("=============");
		log.info("dto"+dto);
		log.info("=============");
		service.modify(dto);
		
		return "redirect:/movie/list";
	}
	
	@PostMapping("/remove")
	public String remove(Long tno) {
		log.info("tno" +tno);
		service.remove(tno);
		
		return "redirect:/movie/list";
	}
	
}
