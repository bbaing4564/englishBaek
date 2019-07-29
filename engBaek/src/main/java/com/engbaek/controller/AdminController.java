package com.engbaek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.engbaek.domain.Criteria;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j
@AllArgsConstructor
public class AdminController {
	
	@GetMapping({ "/info", "/modify" })
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {

	}
	
	//TODO BoardVO 변경
	@PostMapping("/modify")
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		return "redirect:/admin/info";
	}
	
	//학생 목록
	@GetMapping("/stu_list")
	public void stuList(Model model, Criteria cri) {
		log.info("list");
	}
	
	//강사 목록
	@GetMapping("/tea_list")
	public void teadList(Model model, Criteria cri) {
		log.info("list");
	}
	
	@PostMapping("/tea_auth")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		return "redirect:/admin/tea_auth";
	}
}