package com.wdelivery.member.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@PostMapping("memLogin.do")
	public String memberLogin(UserVO userVO,HttpSession session,Model model) {

		//status : err1 아이디 없음 , err2 탈퇴 혹은 정지당한 회원 ,err3 비밀번호 오류
		// err4 : 공백 입력불가

		if(!userVO.getUser_email().equals("")&&userVO.getUser_email()!=null
				&&userVO.getUser_password()!=null&&!userVO.getUser_password().equals("")) {
			
			UserVO findUserVO = memberService.findUser(userVO);
			//입력한 아이디에 대한 정보가 DB에 저장되어 있을때
			
			if(findUserVO==null) {
				System.out.println("아이디 오류 ");

				model.addAttribute("status","err1");

				return "main";//입력한 이메일로 아무정보를 가져오지 못했을경우
			}
			if(userVO.getUser_password().equals(findUserVO.getUser_password())) {
				//db에서 가져온 아이디와 패스워드가 사용자가 입력한 패스워드와 같을때
				if(findUserVO.getUser_status()==1) {
					//회원상태 /  0 = 탈퇴,1 = 정상, 2 = 회원정지
					session.setAttribute("userInfo", findUserVO);
				}else if(findUserVO.getUser_status()==3){
					//이메일 미인증 유저
					session.setAttribute("userInfo", findUserVO);
					model.addAttribute("status","err5");
				}else {

					model.addAttribute("status","err2");

				}
				return "main";
				}else {
					//아이디는 디비에 있는데 비밀번호가 오류일때
					System.out.println("비밀번호 오류 : 디비접근 했음");

					model.addAttribute("status","err3");

					return "main";
				}
			}
		//아이디 비밀번호가 공백으로 들어왔을 경우
		System.out.println("비밀번호 혹은 아이디 공백 접근 : 에러");

		model.addAttribute("status","err4");

		return "main";
		
	}
	
	@RequestMapping("kakaoLogin.do")
	public String kakaoLogin(@RequestBody KakaoUserVO kakaoVO,HttpSession session) {
		session.setAttribute("kakaoSession", kakaoVO);
		System.out.println(kakaoVO.toString());
		return "main";
	}
	
	@PostMapping("winMemJoin.do")
	public String winMemJoin(UserVO userVO, UserAddressVO addressVO) {
		
		System.out.println(userVO.toString());
		memberService.winMemJoin(userVO);
		memberService.winAddressJoin(addressVO);
		return "main";
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		/*
		 * UserVO userVO = (UserVO)session.getAttribute("userInfo");
		 * System.out.println(userVO.toString()+" 세션 초기화");
		 */
		System.out.println("들어오나?");
		session.invalidate();
		return "main";
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
}
