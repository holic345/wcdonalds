package com.wdelivery.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("/main.do")
	public String main() {
		return "main.jsp";
	}
}