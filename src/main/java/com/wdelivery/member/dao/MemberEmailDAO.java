package com.wdelivery.member.dao;

import com.wdelivery.member.vo.MemberEmailVO;

public interface MemberEmailDAO {
	//email test 회원가입
	public void register(MemberEmailVO emailVO) throws Exception;
	
	//디비에 authKey 저장
	public int createAuthKey(String email, String authKey) throws Exception;
	
	//이메일 인증 후 authstatus 1로 변경
	public void updateAuthstatus(String email) throws Exception;
}
