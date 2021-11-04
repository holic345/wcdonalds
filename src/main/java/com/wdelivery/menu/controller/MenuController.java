package com.wdelivery.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wdelivery.menu.burger.service.BurgerService;
import com.wdelivery.menu.burger.vo.BurgerVO;

@Controller
public class MenuController {
	
	@Autowired
	public BurgerService burgerService;
	
	@GetMapping("/list.do")
	public String test(Model model) {
		List<BurgerVO> selectBurger = burgerService.selectBurger();
		model.addAttribute("selectBurger", selectBurger);
		
		System.out.println("selectBurger");
		
		return "list";
	}

}
