package com.wdelivery.member.persistence;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberPersistence {
	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
}
