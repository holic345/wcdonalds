package com.wdelivery.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.wdelivery.member.domain.UserVO;
import com.wdelivery.member.service.MemberService;

@Controller
public class MemberLoginController {
	
	/*
	 * @Autowired private BCryptPasswordEncoder pwdEncoder;
	 */
	@Autowired
	private MemberService memberService; 
	
	@PostMapping("/login.do")
	public void memberLogin(UserVO userVO) {
		//	UserVO finduseVO = memberService.searchId(userVO.getUser_email());
	}
	
	
	
}
