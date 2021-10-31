package com.wdelivery.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdelivery.member.persistence.MemberPersistence;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberPersistence memPersis;
}
