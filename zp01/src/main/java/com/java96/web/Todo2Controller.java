package com.java96.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java96.dto.Criteria;
import com.java96.dto.TodoDTO;
import com.java96.service.TodoService;

import lombok.extern.java.Log;





@Controller
@RequestMapping("/todo2/*")
@Log
public class Todo2Controller {

	@Inject
	TodoService service;
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	
	@PostMapping("/register")
	public String register(TodoDTO dto, RedirectAttributes rttr) {
		
		
		service.register(dto);
		
		return "redirect:/todo2/list";
		
	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("");
		model.addAttribute("list",service.list(cri));
		
		
	}
	@GetMapping("/view")
	public void view(Long tno, @ModelAttribute("cri") Criteria cri, Model model) {
		
		model.addAttribute("todo",service.get(tno));
	}
	
	@GetMapping("/modify")
	public void modGet(Long tno, @ModelAttribute("cri") Criteria cri, Model model) {
		
		model.addAttribute("todo",service.get(tno));
	}
	
	@PostMapping("/modify")
	public String modPost(TodoDTO dto) {
		service.update(dto);
		
		return "redirect:/todo2/list";
	}
	
	@PostMapping("/remove")
	public String remove(TodoDTO dto) {
		
		service.remove(dto);
		
		return "redirect:/todo2/list";
	}
}
