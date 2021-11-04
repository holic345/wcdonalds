package com.wdelivery.member.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wdelivery.faq.service.FaqService;
import com.wdelivery.faq.vo.FaqVO;
import com.wdelivery.member.service.MemberService;
import com.wdelivery.member.vo.UserVO;
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
	private FaqService faqService;

	@Autowired
	BurgerService burgerService;

	@GetMapping("/main.do")
	public String main() {
		return "main";
	}


	@GetMapping("/mypageupdate.do")
	public String mypageupdate() {
		return "mypageupdate";
	}
	@PostMapping("/mypageUpdate.do")
	public String mypageUpdate(UserVO userVO, HttpSession session) {
		System.out.println("����" + userVO.getUser_seq());
		//session.setAttribute("userVO", memberService.mypageUpdate(userVO));
		memberService.mypageUpdate(userVO);
		System.out.println("mypageupdate !!controller ");
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

	@GetMapping("/orderHistory.do")
	public String orderHistory() {
		return "orderHistory";
	}

	//臾몄�� 議고��
	@PostMapping("/qnaSelect.do")
	@ResponseBody
	public QnaVO qna(QnaVO qnaVO, @RequestParam(name="qa_email", defaultValue="1") String qa_email, @RequestParam(name="qa_password", defaultValue="1") String qa_password) throws Exception {
		QnaVO vo = qnaServie.qnaSelect(qnaVO);

		
		//if(vo.getQa_email() == null || vo.getQa_password() == null) { //db������ ������������ ������
		//	System.out.println("search faild");
	//	}else {	
		//	System.out.println("search success");
		//	model.addAttribute("qna", qnaServie.qnaSelect(qnaVO)); �����몄���������������ㅵ��������

		//if(qnaVO.getQa_email().equals(qa_email)|| qnaVO.getQa_password().equals(qa_password)) {
			System.out.println("search faild");
		//}else {	
			System.out.println("search success");
			//model.addAttribute("qna", qnaServie.qnaSelect(qnaVO));

			
			/*System.out.println("?" + vo.getQa_seq()); 
			System.out.println("name?" + vo.getQa_name());
			System.out.println("title?" + vo.getQa_title());
			System.out.println("content?" + vo.getQa_content());
			System.out.println("regDate?" + vo.getQa_regdate());*/
			 
			//return vo;
		//}
		
		try {
			System.out.println(vo.toString());
			
		}catch(NullPointerException e) {
			System.out.println("������������ �������� ������������");
		}
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

	//臾몄�� insert
	@PostMapping("/qnaInsert.do")
	public String qnaInsert(QnaVO qnaVO) {
		// System.out.println("1 = " + qnaVO.getQa_agree1());
		// System.out.println("2 = " + qnaVO.getQa_agree2());

		qnaServie.qnaInsert(qnaVO);
		System.out.println("insertcontroller => " + qnaVO.toString());
		
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

	@GetMapping("/list.do")
	public String test(Model model) {
		List<BurgerVO> selectBurger = burgerService.selectBurger();
		model.addAttribute("selectBurger", selectBurger);
		
		System.out.println("selectBurger");
		
		return "list";
	}

}