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

import com.wdelivery.cart.service.CartService;
import com.wdelivery.cart.vo.CartVO;

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
	private BurgerService burgerService;
	
	@Autowired
	private CartService cartService;

	@GetMapping("/main.do")
	public String main() {
		return "main";
	}

	//회원정보 수정
	@GetMapping("/mypageupdate.do")
	public String mypageupdate(UserVO userVO, Model model, HttpSession session) {
		
		String user_email = (String) session.getAttribute("user_email"); //설정한 session 아이디
		//System.out.println("mypage : " + user_email );
		
		userVO = memberService.userSelect(user_email); //세션 아이디 VO에 넣기
		//System.out.println("mypage !!!!!!!!=>" + userVO.toString());
		model.addAttribute("userVO", memberService.userSelect(userVO.getUser_email()));
		
		return "mypageupdate";
	}
	@PostMapping("/mypageUpdate.do")
	public String mypageUpdate(UserVO userVO) {
		//String user_email = (String) session.getAttribute("user_email");
		//System.out.println("mypageupdate하는중 : " + user_email );
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

	@GetMapping("/order.do")
	public String orderPage(Model model, @RequestParam(value="b_code", required=false) String b_code) {
		//라지세트 디비정보도 가져와야됨(아직 안만들어짐)
		
//		BurgerSetVO burgerSetVO = burgerService.detailBurgerSet(b_code);
//		model.addAttribute("burgerSetVO", burgerSetVO);
		
		if(b_code != null) {
			BurgerVO burgerVO = burgerService.detailBurger(b_code);
			System.out.println("vo : " + burgerVO.getB_code());
			System.out.println("vo : " + burgerVO.getB_img_path());
			System.out.println("vo : " + burgerVO.getB_name());
			System.out.println("vo : " + burgerVO.getB_price());
			model.addAttribute("burgerVO", burgerVO);
			
			return "order";
		} else
			return "redirect:list.do";
	}

	@GetMapping("/cart.do")
	public String cart(Model model, @RequestParam(value="b_code", required=false) String b_code, @RequestParam(value="va", required=false) String va) {
		if(b_code == null && va == null) {
			return "orderConfirm";
		}
		else {
			if (va.equals("라지세트")) {
				BurgerVO burgerVO = burgerService.detailBurger(b_code);
	
				CartVO cartVO = new CartVO();
				cartVO.setCart_b_code(burgerVO.getB_code());
				cartVO.setCart_b_img_path(burgerVO.getB_img_path());
				cartVO.setCart_b_name(burgerVO.getB_name());
				cartVO.setCart_b_price(burgerVO.getB_price());
	
				cartService.cartInsert(cartVO);
				List<CartVO> cartList = cartService.cartList();
	
				model.addAttribute("cartList", cartList);
	
			} else if (va.equals("세트")) {
				BurgerVO burgerVO = burgerService.detailBurger(b_code);
	
				CartVO cartVO = new CartVO();
				cartVO.setCart_b_code(burgerVO.getB_code());
				cartVO.setCart_b_img_path(burgerVO.getB_img_path());
				cartVO.setCart_b_name(burgerVO.getB_name());
				cartVO.setCart_b_price(burgerVO.getB_price());
	
				cartService.cartInsert(cartVO);
				List<CartVO> cartList = cartService.cartList();
	
				model.addAttribute("cartList", cartList);
	
			} else if (va.equals("단품")) {
				BurgerVO burgerVO = burgerService.detailBurger(b_code);
	
				CartVO cartVO = new CartVO();
				cartVO.setCart_b_code(burgerVO.getB_code());
				cartVO.setCart_b_img_path(burgerVO.getB_img_path());
				cartVO.setCart_b_name(burgerVO.getB_name());
				cartVO.setCart_b_price(burgerVO.getB_price());
	
				cartService.cartInsert(cartVO);
				List<CartVO> cartList = cartService.cartList();
	
				model.addAttribute("cartList", cartList);
			}
			return "orderConfirm";
		}
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
	@RequestMapping("/qnaInsert.do")
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



}