package com.wdelivery.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.wdelivery.member.service.MemberService;
import com.wdelivery.member.vo.UserVO;

@Controller
public class MypageController {
	@Autowired
	private MemberService memberService;
	
	
	//ȸ������ ����
	@GetMapping("/mypageupdate.do")
	public String mypageupdate(UserVO userVO, Model model, HttpSession session) {
		
		String user_email = (String) session.getAttribute("user_email"); //������ session ���̵�
		//System.out.println("mypage : " + user_email );
		
		userVO = memberService.userSelect(user_email); //���� ���̵� VO�� �ֱ�
		//System.out.println("mypage !!!!!!!!=>" + userVO.toString());
		model.addAttribute("userVO", memberService.userSelect(userVO.getUser_email()));
		
		return "mypageupdate";
	}
	@PostMapping("/mypageUpdate.do")
	public String mypageUpdate(UserVO userVO) {
		//String user_email = (String) session.getAttribute("user_email");
		//System.out.println("mypageupdate�ϴ��� : " + user_email );
		System.out.println("mypageupdateController" + userVO.getUser_seq());
		//session.setAttribute("userVO", memberService.mypageUpdate(userVO));
		memberService.mypageUpdate(userVO);
		System.out.println(userVO.toString());
		return "mypageupdate";
	}
	 
	

	@GetMapping("/addressBook.do")
	public String addressBook() {
		return "addressBook";
	}

	@GetMapping("/addressupdate.do")
	public String addressUpdate() {
		return "addressupdate";
	}
	
	
	@GetMapping("/orderHistory.do")
	public String orderHistory() {
		return "orderHistory";
	}

}