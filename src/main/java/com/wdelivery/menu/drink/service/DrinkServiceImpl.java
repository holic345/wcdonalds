package com.wdelivery.menu.drink.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.wdelivery.menu.drink.dao.DrinkDAO;
import com.wdelivery.menu.drink.vo.DrinkVO;

public class DrinkServiceImpl implements DrinkService {

	@Autowired
	public DrinkDAO drinkDAO;
	@Override
	public List<DrinkVO> selectDrink() {
		System.out.println("selectDrink");
		return drinkDAO.selectDrink();
	}

}
