package com.wdelivery.menu.burger.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.wdelivery.menu.burger.vo.BurgerVO;

@Mapper
public interface BurgerDAO {

	List<BurgerVO> listBurger();
	
	BurgerVO detailBurger(String b_code);
	
	void updateBurger(BurgerVO burgerVO);
	
	void deleteBurger(String b_code);
	
	void insertBurger(BurgerVO burgerVO);
	
}
