package com.wdelivery.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdelivery.member.dao.MemberDAO;
import com.wdelivery.member.vo.UserVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memPersis;

	@Override
	public UserVO searchID(UserVO userVO) {
		System.out.println("����");
		UserVO findUserVO = memPersis.findUser(userVO);
		return findUserVO;
	}
}
