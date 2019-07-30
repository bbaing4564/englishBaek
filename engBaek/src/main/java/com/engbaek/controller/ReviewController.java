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
import com.engbaek.domain.ReviewVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {

	@GetMapping("/list")
	public void list(Model model, Criteria cri) {
		log.info("list");
	}

	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("review_bno") Long review_bno, @ModelAttribute("cri") Criteria cri, Model model) {

	}

	// TODO BoardVO 변경
	@PostMapping("/modify")
	public String modify(ReviewVO review, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		return "redirect:/review/read";
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("review_bno") Long review_bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		return "redirect:/review/list";
	}

	@GetMapping("/register")
	public void register() {

	}

	// TODO BoardVO 변경
	@PostMapping("/register")
	public String register(ReviewVO review, RedirectAttributes rttr) {
		return "redirect:/review/list";

	}
}
