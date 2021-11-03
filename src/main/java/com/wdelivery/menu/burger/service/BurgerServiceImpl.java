package com.wdelivery.menu.burger.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wdelivery.menu.burger.dao.BurgerDAO;
import com.wdelivery.menu.burger.vo.BurgerVO;

@Service
public class BurgerServiceImpl implements BurgerService {

	@Inject
	BurgerDAO burgerDAO;

	@Override
	public List<BurgerVO> listBurger() {
		return burgerDAO.listBurger();
	}

	@Override
	public BurgerVO detailBurger(String b_code) {
		return burgerDAO.detailBurger(b_code);
	}

	@Override
	public void updateBurger(BurgerVO burgerVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBurger(String b_code) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertBurger(BurgerVO burgerVO) {
		// TODO Auto-generated method stub
		
	}
	
	
}
