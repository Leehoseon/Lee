package com.java96.web;




import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.java96.dto.MemberVO;
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
	public void view(int tno, Model model) {
		
		service.updateReplycnt(tno);
		model.addAttribute("attach", upservice.viewAttach(tno));
		model.addAttribute("view", service.getView(tno));
		
	}
	
	@GetMapping("/register")
	public void registerGet(HttpSession session, Model model) {
		
		
		MemberVO member =   (MemberVO) session.getAttribute("memberDTO");
		
		model.addAttribute("member",member);
		
		
	}
	
	@PostMapping("/register")
	public String register(MovieDTO dto ) {
		
		log.info("dto:!!!!!!!!!!!!!!"+dto);
		
		service.register(dto);
		
		return "redirect:/movie/list";
		
	}
	
	@GetMapping("/modify")
	public void modifyGet(int tno,  Model model) {
		
		
		
		model.addAttribute("attach", upservice.viewAttach(tno));
		model.addAttribute("view",service.getView(tno));
		
	}
	
	@PostMapping("/modify")
	public String modify(MovieDTO dto) {
		log.info("=============");
		log.info("dto"+dto);
		log.info("=============");
		service.modify(dto);
		
		int tno = dto.getTno();
		
		
		
		return "redirect:/movie/view?tno="+tno+"";
	}
	
	@PostMapping("/remove")
	public String remove(int tno) {
		log.info("tno" +tno);
		service.remove(tno);
		
		return "redirect:/movie/list";
	}
	
	@GetMapping("/logout")
	public void logout() {
		
				
			}
			
	
	
}
