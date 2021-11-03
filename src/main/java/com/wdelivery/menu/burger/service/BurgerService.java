package com.wdelivery.menu.burger.service;

import java.util.List;

import com.wdelivery.menu.burger.vo.BurgerVO;

public interface BurgerService {

	List<BurgerVO> listBurger();
	
	BurgerVO detailBurger(String b_code);
	
	void updateBurger(BurgerVO burgerVO);
	
	void deleteBurger(String b_code);
	
	void insertBurger(BurgerVO burgerVO);
	
}
