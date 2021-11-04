package com.wdelivery.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdelivery.member.dao.MemberDAO;
import com.wdelivery.member.vo.UserAddressVO;
import com.wdelivery.member.vo.UserVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public UserVO findUser(UserVO userVO) {
		return  memberDAO.findUser(userVO);
	}

	@Override
	public void winMemJoin(UserVO userVO) {
		memberDAO.winMemJoin(userVO);
	}

	@Override
	public void winAddressJoin(UserAddressVO addressVO) {
		memberDAO.winAddressJoin(addressVO);
	}

	@Override
	public void mypageUpdate(UserVO userVO) {
		memberDAO.mypageUpdate(userVO);
	}

	@Override
	public int emailChk(String user_email) throws Exception {
		int result = memberDAO.emailChk(user_email);
		System.out.println("serviceImpl : " + result);
		return result;
	}

	public UserVO userSelect(String user_email) {
		
		return memberDAO.userSelect(user_email);
	}

	

	
	
}
