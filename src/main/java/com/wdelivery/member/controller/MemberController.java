package com.wdelivery.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
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
}
