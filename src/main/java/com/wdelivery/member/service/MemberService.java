package com.wdelivery.member.service;

import com.wdelivery.member.vo.UserVO;

public interface MemberService {

	UserVO searchID(String user_email);

}
