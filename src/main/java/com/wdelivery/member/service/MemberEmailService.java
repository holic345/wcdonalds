package com.wdelivery.member.service;

import com.wdelivery.member.vo.MemberEmailVO;

public interface MemberEmailService {
	//ȸ������
	public void register(MemberEmailVO emailVO) throws Exception;
	
	//authstatus 1�� ����
	public void updateAuthstatus(String email) throws Exception;
}
