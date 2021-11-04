package com.wdelivery.menu.burger.dao;

import java.util.List;

import com.wdelivery.menu.burger.vo.BurgerVO;

public interface BurgerDAO {

	public List<BurgerVO> selectBurger();
	
	BurgerVO detailBurger(String b_code);
	
	void updateBurger(BurgerVO burgerVO);
	
	void deleteBurger(String b_code);
	
	void insertBurger(BurgerVO burgerVO);
	
}
