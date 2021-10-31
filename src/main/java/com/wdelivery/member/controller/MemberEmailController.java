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
		System.out.println("memberEmailController ����");
	}
	
	//ȸ������ �� GET
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
	}
	
	//ȸ������ POST
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberEmailVO emailVO, Model model) throws Exception{
		return "/registerResult";
	}
	
	//�̸������� Ȯ���Ϸ��� ������ ���
	@RequestMapping(value = "emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String email, Model model) throws Exception {
		//authstatus ���� ���� 1�� ����
		emailService.updateAuthstatus(email);
		//jsp���� �������� model�� ����
		model.addAttribute("email", email);
		
		return "emailConfirm";
	}
}
