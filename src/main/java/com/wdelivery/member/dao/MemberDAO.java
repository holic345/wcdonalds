package com.wdelivery.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wdelivery.member.vo.MemberEmailVO;
import com.wdelivery.member.vo.UserVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlTemplate;

	public UserVO findUser(UserVO userVO) {
		return (UserVO)sqlTemplate.selectOne("memDAO.findUser",userVO);
	}
	
}
