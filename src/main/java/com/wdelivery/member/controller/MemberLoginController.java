package com.wdelivery.member.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
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

		//status : err1 占쎈툡占쎌뵠占쎈탵 占쎈씨占쎌벉 , err2 占쎄퉱占쎈닚 占쎌깏占쏙옙 占쎌젟筌욑옙占쎈뼣占쎈립 占쎌돳占쎌뜚 ,err3 �뜮袁⑨옙甕곕뜇�깈 占쎌궎�몴占�
		// err4 : �⑤벉媛� 占쎌뿯占쎌젾�겫�뜃占�

		if(!userVO.getUser_email().equals("")&&userVO.getUser_email()!=null
				&&userVO.getUser_password()!=null&&!userVO.getUser_password().equals("")) {
			
			UserVO findUserVO = memberService.findUser(userVO);
			//占쎌뿯占쎌젾占쎈립 占쎈툡占쎌뵠占쎈탵占쎈퓠 占쏙옙占쎈립 占쎌젟癰귣떯占� DB占쎈퓠 占쏙옙占쎌삢占쎈┷占쎈선 占쎌뿳占쎌뱽占쎈르
			
			if(findUserVO==null) {
				System.out.println("占쎈툡占쎌뵠占쎈탵 占쎌궎�몴占� ");

				model.addAttribute("status","err1");

				return "main";//占쎌뿯占쎌젾占쎈립 占쎌뵠筌롫뗄�뵬嚥∽옙 占쎈툡�눧�똻�젟癰귣�占쏙옙 揶쏉옙占쎌죬占쎌궎筌욑옙 筌륁궢六쏙옙�뱽野껋럩�뒭
			}
			if(userVO.getUser_password().equals(findUserVO.getUser_password())) {
				//db占쎈퓠占쎄퐣 揶쏉옙占쎌죬占쎌궔 占쎈툡占쎌뵠占쎈탵占쏙옙 占쎈솭占쎈뮞占쎌뜖占쎈굡揶쏉옙 占쎄텢占쎌뒠占쎌쁽揶쏉옙 占쎌뿯占쎌젾占쎈립 占쎈솭占쎈뮞占쎌뜖占쎈굡占쏙옙 揶쏆늿�뱽占쎈르
				if(findUserVO.getUser_status()==1) {
					//占쎌돳占쎌뜚占쎄맒占쎄묶 /  0 = 占쎄퉱占쎈닚,1 = 占쎌젟占쎄맒, 2 = 占쎌돳占쎌뜚占쎌젟筌욑옙
					session.setAttribute("userInfo", findUserVO);
					session.setAttribute("user_email" , findUserVO.getUser_email());
				}else if(findUserVO.getUser_status()==3){
					//�씠硫붿씪 誘몄씤利� �쑀��
					session.setAttribute("userInfo", findUserVO);
					model.addAttribute("status","err5");
				}else {

					model.addAttribute("status","err2");

				}
				return "main";
				}else {
					//占쎈툡占쎌뵠占쎈탵占쎈뮉 占쎈탵�뜮袁⑸퓠 占쎌뿳占쎈뮉占쎈쑓 �뜮袁⑨옙甕곕뜇�깈揶쏉옙 占쎌궎�몴�꼷�뵬占쎈르
					System.out.println("�뜮袁⑨옙甕곕뜇�깈 占쎌궎�몴占� : 占쎈탵�뜮袁⑹젔域뱄옙 占쎈뻥占쎌벉");

					model.addAttribute("status","err3");

					return "main";
				}
			}
		//占쎈툡占쎌뵠占쎈탵 �뜮袁⑨옙甕곕뜇�깈揶쏉옙 �⑤벉媛싷옙�몵嚥∽옙 占쎈굶占쎈선占쎌넅占쎌뱽 野껋럩�뒭
		System.out.println("�뜮袁⑨옙甕곕뜇�깈 占쎌깏占쏙옙 占쎈툡占쎌뵠占쎈탵 �⑤벉媛� 占쎌젔域뱄옙 : 占쎈퓠占쎌쑎");

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
		System.out.println("留ㅽ븨�릺�굹?");
		int emailResult = memberService.emailChk(user_email);
//		System.out.println("email Controller : " + result);
//		return result;
		System.out.println("controller : " + emailResult);
		return emailResult;
		
	}
	
//	@RequestMapping(value = "signup", method = RequestMethod.POST)
//	public String regPost(UserVO userVO, String user_email) throws Exception{
//		int emailResult = memberService.emailChk(user_email);
//		System.out.println("controller : " + emailResult);
//		try {
//			if (emailResult == 1) {
//				return "signup";
//			}else if (emailResult == 0) {
//				memberService.winMemJoin(userVO);
//				return "winMemJoin";
//			}
//		} catch (Exception e) {
//			throw new RuntimeException();
//		}
//		return "redirect:/";
//	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {

		System.out.println("�뱾�뼱�삤�굹?");

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
