package com.wdelivery.member.dao;

import com.wdelivery.member.vo.UserAddressVO;
import com.wdelivery.member.vo.UserVO;

public interface MemberDAO {

	public UserVO findUser(UserVO userVO);
	
	public void winMemJoin(UserVO userVO);
	public void winAddressJoin(UserAddressVO addressVO);
	int emailChk(String user_email) throws Exception;
	String sendSMS(String user_phone);
	
	public UserVO userSelect(String user_email);
	public void mypageUpdate(UserVO userVO);
}
