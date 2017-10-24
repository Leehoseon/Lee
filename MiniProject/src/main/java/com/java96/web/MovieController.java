package com.java96.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java96.dto.Criteria;
import com.java96.dto.MovieDTO;
import com.java96.dto.SearchCriteria;
import com.java96.service.MovieService;
import com.java96.service.UploadService;

import lombok.extern.java.Log;




@Controller
@RequestMapping("/movie/*")
@Log
public class MovieController {

	@Autowired
	MovieService service;
	@Autowired
	UploadService upservice;
	
	
	@GetMapping("/list")
	public void list(@ModelAttribute("criteria") SearchCriteria cri, Model model) {

		log.info("cri:~~~~~~~~~~~~~~"+cri);
		
		
		model.addAttribute("criteria",cri);
		
		model.addAttribute("list",service.getList(cri));
		
		
	}
	
	
	
	
	@GetMapping("/view")
	public void view(Long tno, Model model) {
		
		
		model.addAttribute("attach", upservice.viewAttach(tno));
		model.addAttribute("view", service.getView(tno));
		
	}
	
	@GetMapping("/register")
	public void registerGet() {
		
	}
	
	@PostMapping("/register")
	public String register(MovieDTO dto ) {
		
		log.info("dto:!!!!!!!!!!!!!!"+dto);
		
		service.register(dto);
		
		return "redirect:/movie/list";
		
	}
	
	@GetMapping("/modify")
	public void modifyGet(Long tno, Model model) {
		
		
		model.addAttribute("attach", upservice.viewAttach(tno));
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
