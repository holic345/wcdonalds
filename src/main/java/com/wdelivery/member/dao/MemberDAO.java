package com.wdelivery.member.dao;

import com.wdelivery.member.vo.UserVO;

public interface MemberDAO {

	public UserVO findUser(UserVO userVO);
	
}
