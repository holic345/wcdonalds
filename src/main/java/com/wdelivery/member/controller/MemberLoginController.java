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



		//status : err1 �븘�씠�뵒 �뾾�쓬 , err2 �깉�눜 �샊�� �젙吏��떦�븳 �쉶�썝 ,err3 鍮꾨�踰덊샇 �삤瑜�
		// err4 : 怨듬갚 �엯�젰遺덇�


		if(!userVO.getUser_email().equals("")&&userVO.getUser_email()!=null
				&&userVO.getUser_password()!=null&&!userVO.getUser_password().equals("")) {
			
			UserVO findUserVO = memberService.findUser(userVO);

			//���ν�� ���대���� ���� ��蹂닿� DB�� ���λ���� ������
			
			if(findUserVO==null) {
				System.out.println("���대�� �ㅻ� ");

				model.addAttribute("status","err1");

				return "main";//���ν�� �대��쇰� ��臾댁��蹂대�� 媛��몄�ㅼ� 紐삵����寃쎌��
			}
			if(userVO.getUser_password().equals(findUserVO.getUser_password())) {
				//db���� 媛��몄�� ���대���� �⑥�ㅼ����媛� �ъ�⑹��媛� ���ν�� �⑥�ㅼ������ 媛�����
				if(findUserVO.getUser_status()==1) {
					//�������� /  0 = ����,1 = ����, 2 = ������吏�

			//�엯�젰�븳 �븘�씠�뵒�뿉 ���븳 �젙蹂닿� DB�뿉 ���옣�릺�뼱 �엳�쓣�븣
			

					session.setAttribute("userInfo", findUserVO);
					
					 //delete ggogogo
					 session.setAttribute("name", findUserVO.getUser_name());
					 session.setAttribute("phone", findUserVO.getUser_phone());
					
					
				}else if(findUserVO.getUser_status()==3){
					//�대��� 誘몄�몄� ����
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
	
	@PostMapping("winMemJoin.do")
	public String winMemJoin(UserVO userVO, UserAddressVO addressVO) {
		
		System.out.println(userVO.toString());
		System.out.println(addressVO.toString());
		memberService.winMemJoin(userVO);
		memberService.winAddressJoin(addressVO);
		return "main";
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		/*
		 * UserVO userVO = (UserVO)session.getAttribute("userInfo");
		 * System.out.println(userVO.toString()+" �몄�� 珥�湲고��");
		 */
		System.out.println("�ㅼ�댁�ㅻ��?");
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
}
