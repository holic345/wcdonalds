package com.wdelivery.member.service;

import com.wdelivery.member.vo.UserAddressVO;
import com.wdelivery.member.vo.UserVO;

public interface MemberService {

	UserVO findUser(UserVO userVO);
	
	public void winMemJoin(UserVO userVO);
	
	public void winAddressJoin(UserAddressVO addressVO);
}
