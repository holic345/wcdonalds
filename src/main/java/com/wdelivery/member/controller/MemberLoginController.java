package com.wdelivery.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wdelivery.member.service.MemberService;
import com.wdelivery.member.vo.KakaoUserVO;
import com.wdelivery.member.vo.UserVO;

@Controller
public class MemberLoginController {
	
	/*
	 * @Autowired private BCryptPasswordEncoder pwdEncoder;
	 */
	@Autowired
	private MemberService memberService; 
	
	@PostMapping("memLogin.do")
	public String memberLogin(UserVO userVO) {
		UserVO findUserVO = memberService.searchID(userVO);
				System.out.println(findUserVO.toString());
		return "main";
	}
	
	@RequestMapping("kakaoLogin.do")
	@ResponseBody
	public String kakaoLogin(@RequestBody KakaoUserVO kakaoVO) {
		System.out.println(kakaoVO.toString());
		return "main";
	}
	
	
	
}
