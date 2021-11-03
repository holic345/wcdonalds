package com.wdelivery.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.wdelivery.member.service.MemberService;
import com.wdelivery.qna.service.QnaService;
import com.wdelivery.qna.vo.QnaVO;

@Controller
public class MemberController {
	
	/*
	 * @Autowired private BCryptPasswordEncoder pwdEncoder;
	 */
	
	@Autowired
	private MemberService memberService; 
	
	@Autowired
	private QnaService qnaServie;
	
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

	@GetMapping("/order.do")
	public String cart(Model model) {
		return "order";
	}

	@GetMapping("/orderConfirm.do")
	public String cart(Model model, @RequestParam("b_code") String b_code, @RequestParam("va") String va) {
		return "orderConfirm";
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

	@RequestMapping("/memberJoin.do")
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
	
	@PostMapping("/qnaInsert.do")
	public String qnaInsert(QnaVO qnaVO) {
		System.out.println("1 = " + qnaVO.getQa_agree1());
		System.out.println("2 = " + qnaVO.getQa_agree2());
		
		
		qnaServie.qnaInsert(qnaVO);
		System.out.println("qna controller");
		return "qna";
	}

}
