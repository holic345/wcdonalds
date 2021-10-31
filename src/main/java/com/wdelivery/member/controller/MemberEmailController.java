package com.wdelivery.member.controller;

import javax.inject.Inject;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wdelivery.member.service.MemberEmailService;
import com.wdelivery.member.vo.MemberEmailVO;

@Controller
@RequestMapping("/member")
public class MemberEmailController {
	
	@Autowired
	ServletContext servlertContext;
	@Autowired
	MemberEmailService emailService;
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	public MemberEmailController() {
		System.out.println("memberEmailController 생성");
	}
	
	//회원가입 폼 GET
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
	}
	
	//회원가입 POST
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberEmailVO emailVO, Model model) throws Exception{
		return "/registerResult";
	}
	
	//이메일인증 확인하려면 나오는 경로
	@RequestMapping(value = "emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String email, Model model) throws Exception {
		//authstatus 권한 상태 1로 변경
		emailService.updateAuthstatus(email);
		//jsp에서 쓰기위해 model에 담음
		model.addAttribute("email", email);
		
		return "emailConfirm";
	}
}
