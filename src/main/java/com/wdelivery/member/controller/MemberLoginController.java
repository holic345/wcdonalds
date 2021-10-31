package com.wdelivery.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.wdelivery.member.service.MemberService;
import com.wdelivery.member.vo.UserVO;

@Controller
public class MemberLoginController {
	
	/*
	 * @Autowired private BCryptPasswordEncoder pwdEncoder;
	 */
	@Autowired
	private MemberService memberService; 
	
	@PostMapping("/memLogin.do")
	public void memberLogin(UserVO userVO) {
		UserVO findUserVO = memberService.searchID(userVO);
				System.out.println(findUserVO.toString());
	}
	
	
	
}
