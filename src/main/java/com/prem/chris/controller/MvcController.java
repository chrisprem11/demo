package com.prem.chris.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.prem.chris.DTO.LoginDTO;

@Controller
public class MvcController {

	@GetMapping("/")
	public String getHomePage(Model model) {
		String msg = "Welcome to Spring MVC HomePage";
		model.addAttribute("msg", msg);
		return "index";
	}
	
	@GetMapping("/login")
	public String getLoginPage() {
		return "login";
	}
	
	@PostMapping(path = "/doLogin")
	public String doLogin(@ModelAttribute("userInfo") LoginDTO loginDTO, Model model) {
		model.addAttribute("username", loginDTO.getUsername());
		return "welcome";
	}
	
	@GetMapping("/logout")
	public String doLogout() {
		return "redirect :login";
	}

}
