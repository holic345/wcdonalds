package com.wdelivery.menu.drink.dao;

import java.util.List;

import com.wdelivery.menu.drink.vo.DrinkVO;
import com.wdelivery.menu.side.vo.SideVO;

public interface DrinkDAO {
	
	public List<DrinkVO> selectDrink();

	DrinkVO detailDrink(String drink_code);

}
