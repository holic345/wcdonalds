package com.wdelivery.member.service;

import java.util.HashMap;

import org.json.simple.JSONObject;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdelivery.member.dao.MemberDAO;
import com.wdelivery.member.vo.UserAddressVO;
import com.wdelivery.member.vo.UserVO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public UserVO findUser(UserVO userVO) {
		return  memberDAO.findUser(userVO);
	}

	@Override
	public void winMemJoin(UserVO userVO) {
		memberDAO.winMemJoin(userVO);
	}

	@Override
	public void winAddressJoin(UserAddressVO addressVO) {
		memberDAO.winAddressJoin(addressVO);
	}

	@Override
	public void mypageUpdate(UserVO userVO) {
		memberDAO.mypageUpdate(userVO);
	}

	@Override
	public int emailChk(String user_email) throws Exception {
		int result = memberDAO.emailChk(user_email);
		System.out.println("serviceImpl : " + result);
		return result;
	}

	public UserVO userSelect(String user_email) {
		
		return memberDAO.userSelect(user_email);
	}

	@Override
	public void certifiedPhoneNumber(String user_phone, String numStr) {
		String api_key = "NCSLKKH1668CXHYF"; //일성Key
		String api_secret = "XTKDJVGBZYYGT1CVBVHOXVXYP05L7DND";
		Message coolsms = new Message(api_key, api_secret);
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", user_phone);
		params.put("from", "01042820579");
		params.put("type", "SMS");
		params.put("text", "[Wdonald] 인증 번호는 [" + numStr + "] 입니다." );
		params.put("app_version", "test app 1.2");
		
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println("문자 인증 : " + obj.toString());
		} catch (CoolsmsException e) {
			e.printStackTrace();
		}
	}
	public void insertAuthData(UserVO userVO) {
		memberDAO.insertAuthData(userVO);
	}

	@Override
	public void updateAuthKey(Map<String, String> map) {
		memberDAO.updateAuthKey(map);
	}

	@Override
	public void signUpConfirm(String email) {
		memberDAO.signUpConfirm(email);
	}

	@Override
	public boolean isAuthKeyAvailable(Map<String, String> emailMap) {
		int result =memberDAO.isAuthKeyAvailable(emailMap);
		System.out.println("MemberServiceImpl result =>"+ result);
		if(result>0)
			return true;
		else
			return false;
	}
	
	

	
	
}
