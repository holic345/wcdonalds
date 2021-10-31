package com.wdelivery.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wdelivery.member.dao.MemberEmailDAO;
import com.wdelivery.member.util.EmailHandler;
import com.wdelivery.member.util.TempKey;
import com.wdelivery.member.vo.MemberEmailVO;

@Service
@Transactional	//트랜잭션은 어노테이션으로 걸자!(root-context에 tx:annotation 선언)
public class MemberEmailServiceImpl implements MemberEmailService {

	//이메일 인증
	@Autowired
	private JavaMailSender mailSender;
	
//	@Autowired
//	TransactionTemplate transactionTemplate;
	
	@Autowired
	MemberEmailDAO emailDAO;

//	이부분 뭐지 모르겠음..
//	public MemberEmailServiceImpl(PlatformTransactionManager txManager, MemberEmailDAO emailDAO) {
//		this.transactionTemplate = new TransactionTemplate(txManager);
//		this.emailDAO = emailDAO;
//	}
	
	//회원가입
	@Override
	public void register(MemberEmailVO emailVO) throws Exception {
		//DB에 회원가입 정보 저장
		emailDAO.register(emailVO);
		
		//인증키 생성
		String Key = new TempKey().getKey(10, false);
		
		//인증키 DB에 저장 
		//emailDAO.createAuthKey(emailVO.getEmail(), Key);
		emailDAO.createAuthKey("rlawngus7978@naver.com", Key);
		
		//메일 발송
		EmailHandler sendMail = new EmailHandler(); 
		
		sendMail.setSubject("[Windonald 회원가입 서비스 이메일 인증입니다.]");
		sendMail.setText(new StringBuffer().append("<h1> WinDonald 가입 인증 메일입니다.</h1>")
				.append("<a href = 'http://localhost:8080/controller?email=")
				//.append(emailVO.getEmail()).append("&Key=").append(Key)
				.append("rlawngus7978@naver.com").append("&Key=").append(Key)
				.append("' target='_blenk'>가입 완료를 위해 이메일 이곳을 눌러주세요!</a>").toString());
		sendMail.setFrom("guyri5514@naver.com", "윈도날드 담당자");
		sendMail.setTo("rlawngus7978@naver.com");
		//sendMail.setTo(emailVO.getEmail());
		sendMail.send();
	}

	//authstatus 1로 변경
	@Override
	public void updateAuthstatus(String email) throws Exception {
		emailDAO.updateAuthstatus(email);
	}

}
