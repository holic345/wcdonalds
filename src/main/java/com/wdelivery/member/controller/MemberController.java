package com.wdelivery.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;

import com.wdelivery.member.service.MemberService;
import com.wdelivery.menu.burger.service.BurgerService;
import com.wdelivery.menu.burger.vo.BurgerVO;
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
	BurgerService burgerService;
	
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

	@PostMapping("/qna1.do")
	@ResponseBody
	public QnaVO qna(QnaVO qnaVO, @RequestParam(name="qa_email", defaultValue="1") String qa_email, @RequestParam(name="qa_password", defaultValue="1") String qa_password, Model model) {
		System.out.println("controller\n email => " + qa_email);
		System.out.println("password => " + qa_password);
		QnaVO vo = qnaServie.qnaSelect(qnaVO);
		
		//if(qnaVO.getQa_email().equals(qa_email)|| qnaVO.getQa_password().equals(qa_password)) { //db쩔징 쩐첩�쨩 쩍횄
			System.out.println("search faild");
		//}else {	
			System.out.println("search success");
			model.addAttribute("qna", qnaServie.qnaSelect(qnaVO));
			
			System.out.println("?" + vo.getQa_seq()); 
			System.out.println("name?" + vo.getQa_name());
			System.out.println("title?" + vo.getQa_title());
			System.out.println("content?" + vo.getQa_content());
			System.out.println("regDate?" + vo.getQa_regdate());
			 
			//return vo;
		//}
		
		return vo;
	}
	
	@GetMapping("/qna.do")
	public String qnapage() {
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
		//System.out.println("1 = " + qnaVO.getQa_agree1());
		//System.out.println("2 = " + qnaVO.getQa_agree2());
	
		qnaServie.qnaInsert(qnaVO);
		System.out.println(qnaVO.toString());
		//System.out.println("qna controller");
		return "qna";
	}

	@GetMapping("/competition.do")
	public String competition() {
		return "competition";
	}
	@GetMapping("/crew_recruit.do")
	public String crew_recruit() {
		return "crew_recruit";
	}
	@GetMapping("/crew_work.do")
	public String crew_work() {
		return "crew_work";
	}
	@GetMapping("/crew.do")
	public String crew() {
		return "crew";
	}
	
	@GetMapping("/test.do") 
	public List<BurgerVO> listBurger() { 

		return burgerService.listBurger(); 
		
	}
	
	/*
	 * @PostMapping(value = "/test") public ModelAndView burgerList(ModelAndView
	 * mav) {
	 * 
	 * mav.setViewName("/menu/burger"); mav.addObject("burgerList",
	 * burgerService.listBurger());
	 * 
	 * return mav; }
	 */
	
}