package com.wdelivery.member.dao;

import com.wdelivery.member.vo.UserAddressVO;
import com.wdelivery.member.vo.UserVO;

public interface MemberDAO {

	public UserVO findUser(UserVO userVO);
	
	public void winMemJoin(UserVO userVO);

	public void winAddressJoin(UserAddressVO addressVO);
}
