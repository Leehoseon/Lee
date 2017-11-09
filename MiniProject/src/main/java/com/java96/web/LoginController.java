package com.java96.web;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;

import com.java96.service.MemberService;

import lombok.extern.java.Log;
@Log
@Controller
@RequestMapping("/movie/*")
public class LoginController {

	@Autowired
	MemberService service;
	
	
	@GetMapping("/home")
	public void login() {
		
	}
	
	@PostMapping("/home")
	public void login(MemberDTO dto, Model model) {
		System.out.println("login controller");
		System.out.println(dto);
		/*MemberDTO member = new MemberDTO();
		member.setUid(dto.getUid());
		member.setUpw(dto.getUpw());
		member.setAuto(dto.getAuto());
		System.out.println("dto"+dto);
		
		boolean loginResult = service.login(dto) != null?true:false;*/
		
		service.addHistory(dto);
		
		MemberVO vo = service.login(dto);
		
		model.addAttribute("memberDTO",vo);
		System.out.println(dto);
	}
	
	@GetMapping("/homeregister")
	public void loginRegisterGet() {
		
	}
	
	@PostMapping("/homeregister")
	public String loginRegister(MemberDTO dto, Model model) {
		
		service.register(dto);
		
		return "redirect:/movie/home";
	}
	
	@GetMapping("/homemodify")
	public void homeModify() {
		
	}
	
	@PostMapping("/homemodify")
	public String homeModifyPost(MemberDTO dto, Model model) {
		
		service.modify(dto);
		
		return "redirect:/movie/home";
		
	}
	
	@GetMapping("/homeout")
	public void homeOut() {
		
		
	}
	
	@PostMapping("/homeout")
	public String homeOutPost(MemberDTO dto, Model model) {
		
		service.remove(dto);
		
		return "redirect:/movie/home";
		
	}
	@DeleteMapping("/removemember")
	public void remove(@RequestBody MemberDTO dto) {
		
		service.remove(dto);
	}
	@PutMapping("/rolemember")
	public void put(@RequestBody MemberDTO dto) {
		
		log.info("=================================="+dto);
		service.roleModify(dto);
		
	}
	
	@GetMapping("/logout")
	public void logout() {
		
				
	}
	
	
	
}
