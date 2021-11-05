package com.wdelivery.member.controller;


import java.util.Random;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wdelivery.member.service.MailSendService;
import com.wdelivery.member.service.MemberService;
import com.wdelivery.member.vo.KakaoUserVO;
import com.wdelivery.member.vo.NaverUserVO;
import com.wdelivery.member.vo.UserAddressVO;
import com.wdelivery.member.vo.UserVO;

@Controller
public class MemberLoginController {
	
	
	/* @Autowired private BCryptPasswordEncoder pwdEncoder; */
	 
	@Autowired
	private MemberService memberService; 
	@Autowired
	private MailSendService mss;
	
	
	@PostMapping("memLogin.do")
	public String memberLogin(UserVO userVO,HttpSession session,Model model) {

		//status : err1 �븘�씠�뵒 �뾾�쓬 , err2 �깉�눜 �샊�� �젙吏��떦�븳 �쉶�썝 ,err3 鍮꾨�踰덊샇 �삤瑜�
		// err4 : 怨듬갚 �엯�젰遺덇�

		if(!userVO.getUser_email().equals("")&&userVO.getUser_email()!=null
				&&userVO.getUser_password()!=null&&!userVO.getUser_password().equals("")) {
			
			UserVO findUserVO = memberService.findUser(userVO);
			//�엯�젰�븳 �븘�씠�뵒�뿉 ���븳 �젙蹂닿� DB�뿉 ���옣�릺�뼱 �엳�쓣�븣
			
			if(findUserVO==null) {
				System.out.println("�븘�씠�뵒 �삤瑜� ");

				model.addAttribute("status","err1");

				return "main";//�엯�젰�븳 �씠硫붿씪濡� �븘臾댁젙蹂대�� 媛��졇�삤吏� 紐삵뻽�쓣寃쎌슦
			}
			if(userVO.getUser_password().equals(findUserVO.getUser_password())) {
				//db�뿉�꽌 媛��졇�삩 �븘�씠�뵒�� �뙣�뒪�썙�뱶媛� �궗�슜�옄媛� �엯�젰�븳 �뙣�뒪�썙�뱶�� 媛숈쓣�븣
				if(findUserVO.getUser_status()==1) {
					//�쉶�썝�긽�깭 /  0 = �깉�눜,1 = �젙�긽, 2 = �쉶�썝�젙吏�
					session.setAttribute("userInfo", findUserVO);
					session.setAttribute("user_email" , findUserVO.getUser_email());
				}else if(findUserVO.getUser_status()==3){
					//이메일 미인증 유저
					session.setAttribute("userInfo", findUserVO);
					model.addAttribute("status","err5");
				}else {

					model.addAttribute("status","err2");

				}
				return "main";
				}else {
					//�븘�씠�뵒�뒗 �뵒鍮꾩뿉 �엳�뒗�뜲 鍮꾨�踰덊샇媛� �삤瑜섏씪�븣
					System.out.println("鍮꾨�踰덊샇 �삤瑜� : �뵒鍮꾩젒洹� �뻽�쓬");

					model.addAttribute("status","err3");

					return "main";
				}
			}
		//�븘�씠�뵒 鍮꾨�踰덊샇媛� 怨듬갚�쑝濡� �뱾�뼱�솕�쓣 寃쎌슦
		System.out.println("鍮꾨�踰덊샇 �샊�� �븘�씠�뵒 怨듬갚 �젒洹� : �뿉�윭");

		model.addAttribute("status","err4");

		return "main";
		
	}
	
	@RequestMapping("kakaoLogin.do")
	public String kakaoLogin(@RequestBody KakaoUserVO kakaoVO,HttpSession session) {
		session.setAttribute("kakaoSession", kakaoVO);
		System.out.println(kakaoVO.toString());
		return "main";
	}                                                                                                                                            
	
	@Transactional
	@PostMapping("winMemJoin.do")
	public String winMemJoin(UserVO userVO, UserAddressVO addressVO) {
		
		System.out.println(userVO.toString());
		System.out.println(addressVO.toString());
		memberService.winMemJoin(userVO);
		memberService.winAddressJoin(addressVO);
		memberService.insertAuthData(userVO);
		String authKey = mss.sendAuthMail(userVO.getUser_email());
		Map<String,String> map = new HashMap<String,String>();	
		map.put("user_email", userVO.getUser_email());
		map.put("authKey", authKey);
		memberService.updateAuthKey(map);
		return "emailConfirm";
	}
	
	@ResponseBody
	@RequestMapping(value = "emailChk.do", method = RequestMethod.GET)
	public int emailChk(UserVO userVO, String user_email) throws Exception{
		System.out.println("매핑되나?");
		int emailResult = memberService.emailChk(user_email);

		System.out.println("controller : " + emailResult);
		return emailResult;
		
	}
	
	@GetMapping("check/sendSMS.do")
	@ResponseBody 
	public String sendSMS(@RequestParam(value="phone", required = false)String user_phone) {
		
		Random rand = new Random();
		String numStr = "";
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;
		}
		memberService.certifiedPhoneNumber(user_phone, numStr);
		System.out.println("수신자 번호 : " + user_phone);
		System.out.println("인증 번호 : " + numStr);
		
		return numStr;
		
	}
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {

		System.out.println("들어오나?");

		session.invalidate();
		return "redirect:main.do";
	}
	
	@RequestMapping("naverLogin.do")
	@ResponseBody
	public String naverLogin(@RequestBody NaverUserVO naverVO,HttpSession session) {
		session.setAttribute("naverSession", naverVO);
		session.setAttribute("naverAccessKey", naverVO.getAccessToken());
		System.out.println(naverVO.toString());
		return "main";
	}
	
	@RequestMapping("naverCallback.do")
	public String naverCallback() {
		return "naverCallback";
	}
	
	@RequestMapping("signUpConfirm.do")
	public String signUpConfirm(
				@RequestParam("email") String email,
			@RequestParam("authKey") String authKey){
		System.out.println(email + " authKey =" +authKey);
		Map<String,String> emailMap = new HashMap<String,String>();
		emailMap.put("authKey", authKey);
		emailMap.put("email", email);
		if(isAuthKeyAvailable(emailMap))
			memberService.signUpConfirm(email);
		return "main";
	}
	
	public boolean isAuthKeyAvailable(Map<String,String> emailMap) {
		return memberService.isAuthKeyAvailable(emailMap);
	}
}
