package com.wdelivery.member.service;

import com.wdelivery.member.vo.MemberEmailVO;

public interface MemberEmailService {
	//회원가입
	public void register(MemberEmailVO emailVO) throws Exception;
	
	//authstatus 1로 변경
	public void updateAuthstatus(String email) throws Exception;
}
