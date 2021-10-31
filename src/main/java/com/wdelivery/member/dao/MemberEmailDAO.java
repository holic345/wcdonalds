package com.wdelivery.member.dao;

import com.wdelivery.member.vo.MemberEmailVO;

public interface MemberEmailDAO {
	//email test ȸ������
	public void register(MemberEmailVO emailVO) throws Exception;
	
	//��� authKey ����
	public int createAuthKey(String email, String authKey) throws Exception;
	
	//�̸��� ���� �� authstatus 1�� ����
	public void updateAuthstatus(String email) throws Exception;
}
