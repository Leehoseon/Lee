package com.java96.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java96.dto.MemberDTO;
import com.java96.service.MemberService;

@Controller
@RequestMapping("/movie/*")
public class LoginController {

	@Autowired
	MemberService service;
	
	
	@GetMapping("/home")
	public void login() {
		
		System.out.println("getlogin");
		
		
	}
	
	@PostMapping("/home")
	public String login(MemberDTO dto, Model model) {
		System.out.println("login controller");
		
		MemberDTO member = new MemberDTO();
		member.setUid(dto.getUid());
		member.setUpw(dto.getUpw());
		member.setAuto(dto.getAuto());
		System.out.println("dto"+dto);
		
		
		model.addAttribute("memberDTO", member);
		
		return "redirect:/movie/list";
		
	}
	
	@PostMapping("/homeregister")
	public void loginRegister(MemberDTO dto, Model model) {
		
		
		
	}
	
	
}
