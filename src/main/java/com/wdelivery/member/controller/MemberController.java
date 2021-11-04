package com.wdelivery.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdelivery.faq.service.FaqService;
import com.wdelivery.faq.vo.FaqVO;
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
	@Autowired
	private FaqService faqService;
	
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
	public String faq(Model model) {
		List<FaqVO> vo = faqService.faqSelect();
		for(FaqVO vo1 : vo) {
			System.out.println(vo1.getFaq_seq());
			System.out.println(vo1.getFaq_name());
			System.out.println(vo1.getFaq_title());
			System.out.println(vo1.getFaq_content());
			
		}
		model.addAttribute("vo",vo);
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
