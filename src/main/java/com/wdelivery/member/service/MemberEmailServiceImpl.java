package com.wdelivery.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import com.wdelivery.member.dao.MemberEmailDAO;
import com.wdelivery.member.util.EmailHandler;
import com.wdelivery.member.util.TempKey;
import com.wdelivery.member.vo.MemberEmailVO;

public class MemberEmailServiceImpl implements MemberEmailService {

	//�̸��� ����
	@Autowired
	private JavaMailSender mailSender;
	
	TransactionTemplate transactionTemplate;
	MemberEmailDAO emailDAO;
	
	public MemberEmailServiceImpl(PlatformTransactionManager txManager, MemberEmailDAO emailDAO) {
		this.transactionTemplate = new TransactionTemplate(txManager);
		this.emailDAO = emailDAO;
	}
	
	//ȸ������
	@Override
	public void register(MemberEmailVO emailVO) throws Exception {
		//DB�� ȸ������ ���� ����
		emailDAO.register(emailVO);
		
		//����Ű ����
		String Key = new TempKey().getKey(10, false);
		
		//����Ű DB�� ���� 
		//emailDAO.createAuthKey(emailVO.getEmail(), Key);
		emailDAO.createAuthKey("rlawngus7978@naver.com", Key);
		
		//���� �߼�
		EmailHandler sendMail = new EmailHandler(); 
		
		sendMail.setSubject("[Windonald ȸ������ ���� �̸��� �����Դϴ�.]");
		sendMail.setText(new StringBuffer().append("<h1> WinDonald ���� ���� �����Դϴ�.</h1>")
				.append("<a href = 'http://localhost:8080/controller?email=")
				//.append(emailVO.getEmail()).append("&Key=").append(Key)
				.append("rlawngus7978@naver.com").append("&Key=").append(Key)
				.append("' target='_blenk'>���� �ϷḦ ���� �̸��� �̰��� �����ּ���!</a>").toString());
		sendMail.setFrom("guyri5514@naver.com", "�������� �����");
		sendMail.setTo("rlawngus7978@naver.com");
		//sendMail.setTo(emailVO.getEmail());
		sendMail.send();
	}

	//authstatus 1�� ����
	@Override
	public void updateAuthstatus(String email) throws Exception {
		emailDAO.updateAuthstatus(email);
	}

}
