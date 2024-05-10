package com.mbc.pmac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class WelcomeController {

	
	@GetMapping("/")
	public String welcome() {
		
		
		return "welcome";
	}
	
}
