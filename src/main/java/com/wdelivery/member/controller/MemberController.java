package com.wdelivery.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.wdelivery.member.service.MemberService;

@Controller
public class MemberController {
	
	/*
	 * @Autowired private BCryptPasswordEncoder pwdEncoder;
	 */
	
	@Autowired
	private MemberService memberService; 
	
	@GetMapping("/main.do")
	public String main() {
		return "main";
	}

	@GetMapping("/list.do")
	public String list() {
		return "list";
	}

	@GetMapping("/mypage.do")
	public String mypage() {
		return "mypage";
	}

	@GetMapping("/mypageupdate.do")
	public String mypageupdate() {
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

	@GetMapping("/cart.do")
	public String cart() {
		return "cart";
	}

	@GetMapping("/detail.do")
	public String detail() {
		return "detail";
	}

	@GetMapping("/faq.do")
	public String faq() {
		return "faq";
	}

	@GetMapping("/join.do")
	public String join() {
		return "join";
	}

	@GetMapping("/orderConfirm.do")
	public String orderConfirm() {
		return "orderConfirm";
	}

	@GetMapping("/orderHistory.do")
	public String orderHistory() {
		return "orderHistory";
	}

	@GetMapping("/qna.do")
	public String qna() {
		return "qna";
	}

	@GetMapping("/trackOrder.do")
	public String trackOrder() {
		return "trackOrder";
	}

	@GetMapping("/store.do")
	public String store() {
		return "store";
	}

	@GetMapping("/brandintro.do")
	public String brandintro() {
		return "brandintro";
	}

	@GetMapping("/memberJoin.do")
	public String memberJoin() {
		return "memberJoin";
	}

	@GetMapping("/noUserAddress.do")
	public String noUserAddrss() {
		return "noUserAddress";
	}

	@GetMapping("/delivery.do")
	public String delivery() {
		return "delivery";
	}
	
	@GetMapping("/brandhistory.do")
	public String brandHistory() {
		return "brandhistory";
	}
	
	@GetMapping("/promotion.do")
	public String promotion() {
		return "promotion";
	}

}
