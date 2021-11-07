package com.wdelivery.member.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.wdelivery.admin.vo.AdminVO;
import com.wdelivery.cart.vo.CartVO;
import com.wdelivery.faq.service.FaqService;
import com.wdelivery.faq.vo.FaqVO;
import com.wdelivery.menu.burger.service.BurgerService;
import com.wdelivery.menu.burger.vo.BurgerVO;
import com.wdelivery.menu.burgerSet.service.BurgerSetService;
import com.wdelivery.menu.burgerSet.vo.BurgerSetVO;
import com.wdelivery.menu.drink.service.DrinkService;
import com.wdelivery.menu.drink.vo.DrinkVO;
import com.wdelivery.menu.side.service.SideService;
import com.wdelivery.menu.side.vo.SideVO;
import com.wdelivery.qna.service.QnaService;
import com.wdelivery.qna.vo.QnaVO;

@Controller
@SessionAttributes("cartList")
public class MemberController {

	/*
	 * @Autowired private BCryptPasswordEncoder pwdEncoder;
	 */
	@Autowired
	private QnaService qnaServie;

	@Autowired
	private FaqService faqService;

	@Autowired
	private BurgerService burgerService;
	@Autowired
	private BurgerSetService burgerSetService;
	@Autowired
	private SideService sideService;
	@Autowired
	private DrinkService drinkService;
	private List<CartVO> cartList = new ArrayList<CartVO>();

	@GetMapping("/main.do")
	public String main() {
		return "main";
	}

	@GetMapping("/order.do")
	public String orderPage(Model model, @RequestParam(value = "b_code", required = false) String b_code,
			@RequestParam(value = "side_code", required = false) String side_code,
			@RequestParam(value = "drink_code", required = false) String drink_code) {

//		BurgerSetVO burgerSetVO = burgerService.detailBurgerSet(b_code);
//		model.addAttribute("burgerSetVO", burgerSetVO);
		
		if (b_code != null) {
			BurgerVO burgerVO = burgerService.detailBurger(Integer.parseInt(b_code));
			System.out.println("burgerVO" + burgerVO.getB_code());
			System.out.println("burgerVO : " + burgerVO.getB_img_path());
			System.out.println("burgerVO" + burgerVO.getB_name());
			System.out.println("burgerVO" + burgerVO.getB_price());
			model.addAttribute("burgerVO", burgerVO);

		} else if (side_code != null) {
			SideVO sideVO = sideService.detailSide(side_code);
			System.out.println("sideVO : " + sideVO.getS_code());
			System.out.println("sideVO : " + sideVO.getS_img_path());
			System.out.println("sideVO : " + sideVO.getS_name());
			System.out.println("sideVO : " + sideVO.getS_price());
			model.addAttribute("sideVO", sideVO);

		} else if (drink_code != null) {
			DrinkVO drinkVO = drinkService.detailDrink(drink_code);
			drinkVO.setD_kcal(500);
			System.out.println("drinkVO : " + drinkVO.getD_code());
			System.out.println("drinkVO : " + drinkVO.getD_img_path());
			System.out.println("drinkVO" + drinkVO.getD_name());
			System.out.println("drinkVO : " + drinkVO.getD_price());
			model.addAttribute("drinkVO", drinkVO);

		}

		List<DrinkVO> drinkList = drinkService.selectDrink();
		model.addAttribute("drinkList", drinkList);
		return "order";
	}

	@GetMapping("/cart.do")
	public String cart(Model model, @RequestParam(value = "burger", required = false) String b_code,
			@RequestParam(value = "va", required = false) String va,
			@RequestParam(value = "side", required = false) String side,
			@RequestParam(value = "drink", required = false) String drink) {
		if (b_code == null && va == null) {
			return "orderConfirm";
		} else {
			if (va.equals("라지세트")) {
				BurgerVO burgerVO = burgerService.detailBurger(Integer.parseInt(b_code));
				BurgerSetVO burgerSetVO = burgerSetService.detailBurgerSet(Integer.parseInt(b_code));

				CartVO cartVO = new CartVO();
				cartVO.setCart_b_code(burgerSetVO.getB_set_code());
				cartVO.setCart_b_img_path(burgerSetVO.getB_set_img_path());
				cartVO.setCart_bSet_name(burgerSetVO.getB_set_name());
				cartVO.setCart_b_name(burgerVO.getB_name());
				cartVO.setCart_b_price(burgerSetVO.getB_set_price());
				cartVO.setCart_s_name(side);
				cartVO.setCart_d_name(drink);

				cartList.add(cartVO);

				model.addAttribute("cartList", cartList);

			} else if (va.equals("세트")) {
				BurgerVO burgerVO = burgerService.detailBurger(Integer.parseInt(b_code));
				BurgerSetVO burgerSetVO = burgerSetService.detailBurgerSet(Integer.parseInt(b_code));

				CartVO cartVO = new CartVO();
				cartVO.setCart_b_code(burgerSetVO.getB_set_code());
				cartVO.setCart_b_img_path(burgerSetVO.getB_set_img_path());
				cartVO.setCart_bSet_name(burgerSetVO.getB_set_name());
				cartVO.setCart_b_name(burgerVO.getB_name());
				cartVO.setCart_b_price(burgerSetVO.getB_set_price());
				cartVO.setCart_s_name(side);
				cartVO.setCart_d_name(drink);

				cartList.add(cartVO);

				model.addAttribute("cartList", cartList);

			} else if (va.equals("단품")) {
				BurgerVO burgerVO = burgerService.detailBurger(Integer.parseInt(b_code));

				CartVO cartVO = new CartVO();
				cartVO.setCart_b_code(burgerVO.getB_code());
				cartVO.setCart_b_img_path(burgerVO.getB_img_path());
				cartVO.setCart_b_name(burgerVO.getB_name());
				cartVO.setCart_b_price(burgerVO.getB_price());

				cartList.add(cartVO);

				model.addAttribute("cartList", cartList);
				
			} else if (va.equals("사이드")) {
				SideVO sideVO = sideService.detailSide(side);

				CartVO cartVO = new CartVO();
				cartVO.setCart_s_code(sideVO.getS_code());
				cartVO.setCart_s_img_path(sideVO.getS_img_path());
				cartVO.setCart_s_name(sideVO.getS_name());
				cartVO.setCart_s_price(sideVO.getS_price());

				cartList.add(cartVO);

				model.addAttribute("cartList", cartList);

			} else if (va.equals("음료")) {
				DrinkVO drinkVO = drinkService.detailDrink(drink);

				CartVO cartVO = new CartVO();
				cartVO.setCart_d_code(drinkVO.getD_code());
				cartVO.setCart_d_img_path(drinkVO.getD_img_path());
				cartVO.setCart_d_name(drinkVO.getD_name());
				cartVO.setCart_d_price(drinkVO.getD_price());

				cartList.add(cartVO);

				model.addAttribute("cartList", cartList);
			}
			return "orderConfirm";
		}
	}

//	@GetMapping("/detail.do")
//	public String detail() {
//		return "detail";
//	}

	@GetMapping("/faq.do")
	public String faq(Model model) {
		List<FaqVO> vo = faqService.faqSelect();
		for (FaqVO vo1 : vo) {
			System.out.println(vo1.getFaq_seq());
			System.out.println(vo1.getFaq_name());
			System.out.println(vo1.getFaq_title());
			System.out.println(vo1.getFaq_content());
		}
		model.addAttribute("vo", vo);
		return "faq";
	}

	@GetMapping("/join.do")
	public String join() {
		return "join";
	}

	// qnaselect
	@PostMapping("/qnaSelect.do")
	@ResponseBody
	public QnaVO qna(QnaVO qnaVO, @RequestParam(name = "qa_email", defaultValue = "1") String qa_email,
			@RequestParam(name = "qa_password", defaultValue = "1") String qa_password) throws Exception {
		QnaVO vo = qnaServie.qnaSelect(qnaVO);

		try {
			System.out.println(vo.toString());

		} catch (NullPointerException e) {
			System.out.println("NullException");
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

	// qna Insert
	@RequestMapping("/qnaInsert.do")
	public String qnaInsert(QnaVO qnaVO) {
		// System.out.println("1 = " + qnaVO.getQa_agree1());
		// System.out.println("2 = " + qnaVO.getQa_agree2());

		qnaServie.qnaInsert(qnaVO);
		System.out.println("insertcontroller => " + qnaVO.toString());

		return "qna";
	}

	@GetMapping("/qnaStoreSearch.do")
	public String qnaStoreSearch() {
		return "qnaStoreSearch";
	}

	@PostMapping("/qnaStoreSearchP.do")
	@ResponseBody
	public AdminVO qnaStoreSearchP(AdminVO adminVO, @RequestParam(name = "qa_store") String qa_store) {
		AdminVO adminVo = qnaServie.storeSelect(adminVO);

		System.out.println("qnaStoreSerarch : " + adminVo.toString());

		return adminVo;
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

	@GetMapping("/paymentWin.do")
	public String paymentWin() {
		return "paymentWin";
	}

}