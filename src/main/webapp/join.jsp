<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>McDonald's Crew</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<!-- @todo: fill with your company info or remove -->
<meta name="description" content="">
<meta name="author" content="Themelize.me">
 
<link rel="stylesheet" href="resources/css/main/custom.css?t=2021090901"> 
<script src="https://kit.fontawesome.com/d0b304acae.js" crossorigin="anonymous"></script> <!-- fontawesomeCDN -->

<!-- Bootstrap CSS -->	
<link href="resources/css/join/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link href="/m/appstrap/css/font-awesome.min.css" rel="stylesheet">

<!-- Mcdonalds Font -->
<link href="/m/appstrap/css/font-mcdonalds.css" rel="stylesheet">

<!-- Plugins -->
<link href="/m/appstrap/plugins/animate/animate.css" rel="stylesheet">
<!-- <link href="/m/appstrap/plugins/flexslider/flexslider.css" rel="stylesheet"> -->
<link href="/m/appstrap/plugins/clingify/clingify.css" rel="stylesheet">

<!-- Theme style -->
<link href="resources/css/join/theme-style.min.css" rel="stylesheet">

<!--Your custom colour override-->
<link href="/m/appstrap/css/colour-red_sh.css" id="colour-scheme" rel="stylesheet">

<link rel="stylesheet" href="/m/appstrap/css/font-awesome-4.5.0" />

<!-- Your custom override -->
<link href="resources/css/join/custom-style_sh.css" rel="stylesheet">

<!-- HTML5 shiv & respond.js for IE6-8 support of HTML5 elements & media queries -->
<!--[if lt IE 9]>
      <script src="/m/appstrap/plugins/html5shiv/dist/html5shiv.js"></script>
      <script src="/m/appstrap/plugins/respond/respond.min.js"></script>
    <![endif]-->
<!-- Le fav and touch icons - @todo: fill with your icons or remove -->
<link rel="shortcut icon" href="/m/appstrap/img/icons/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/m/appstrap/img/icons/114x114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/m/appstrap/img/icons/72x72.png">
<link rel="apple-touch-icon-precomposed" href="/m/appstrap/img/icons/default.png">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300|Rambla|Calligraffitti' rel='stylesheet' type='text/css'>

<!--Retina.js plugin - @see: http://retinajs.com/-->
<script src="/m/appstrap/plugins/retina/js/retina-1.1.0.min.js"></script>

<link rel="stylesheet" type="text/css" href="/js/jquery/ui/themes/base/jquery-ui.css" />

<!-- Scripts --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/m/appstrap/js/jquery.min.js"></script>
<script src="/m/appstrap/js/jquery-migrate-1.2.1.min.js"></script> <!--Legacy jQuery support for quicksand plugin--> 
</head>
<body class="page page-join">
	<div class="skipMenu"><a href="#container">본문 바로가기</a></div>
	<div class="wrapper ">
		<header class="header"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			<div class="headArea">
				<strong class="hLogo"><a href="main.jsp" class="logo" title="메인으로 이동"><img src="resources/wcdonald.png" alt="맥도날드"></a></strong>
				<nav class="hMenu">
					<div class="menu">
						<ul class="depth1">
							<li><!-- li 오버시 on 클래스 추가 -->
								<a href="javascript:gotoMenu(1);" class="dth1">Menu</a><!-- 현재페이지 메뉴에 current 클래스 추가 -->
								<ul class="depth2">
									<li><a href="list.jsp" class="dth2">버거</a></li>
									<li><a href="javascript:gotoMenu(14);" role="button">맥런치</a></li>
									<li><a href="javascript:gotoMenu(3);" class="dth2">맥모닝</a></li>
									<li><a href="javascript:gotoMenu(15);" role="button">해피 스낵</a></li>
									<li><a href="javascript:gotoMenu(7);" class="dth2">사이드 &amp; 디저트</a></li>
									<li><a href="javascript:gotoMenu(9);" class="dth2">맥카페 &amp; 음료</a></li>
									<li><a href="javascript:gotoMenu(5);" class="dth2">해피밀</a></li>
									<!-- <li><a href="javascript:gotoMenu(11);" class="dth2">365일 즐거운 혜택</a></li> -->
								</ul>
							</li>
							<li>
								<a href="#" class="dth1 ">Store</a>
								<ul class="depth2">
									<li><a href="store.jsp" class="dth2">매장찾기</a></li>
									<li><a href="/kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="/kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="/kor/store/rental.do" class="dth2">임차문의</a></li>
								</ul>
							</li>
							<li>
								<a href="/kor/promotion/list.do" class="dth1">What’s New</a>
								<ul class="depth2">
									<li><a href="/kor/promotion/list.do" class="dth2">프로모션</a></li>
									<li><a href="/kor/news/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="/kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
								    <li><a href="/kor/happymeal/list.do" class="dth2">이달의 해피밀</a></li> 
								</ul>
							</li>
							<li>
								<a href="/kor/story/main.do" class="dth1">Story</a>
								<ul class="depth2">
									<li><a href="/kor/story/intro/brandintro.do" class="dth2">브랜드 소개</a></li>
									<li><a href="/kor/story/society/list.do" class="dth2">사회적 책임과 지원</a></li>
									<li><a href="/kor/story/competition/farmToRestaurant.do" class="dth2">맥도날드 경쟁력</a></li>
									<li><a href="/kor/story/people/crew.do" class="dth2">맥도날드 사람들</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
					<div class="util">
						<a href="#login_pop" class="btn_login" title="로그인으로 이동">로그인</a>					
						<a href="join.jsp" class="btn_register" title="회원가입으로 이동">회원가입</a>
						<a href="cart.jsp" class="btn_cart" title="카트로 이동">카트</a>
						<div class="topSearch"><!-- 검색 활성화인 경우 open 클래스 추가 -->
							<button type="button" class="srch">검색 열기</button>
							<fieldset class="srchField">
								<legend>통합검색</legend>
								<div class="form">
									<input type="text" name="commonSearchWord" id ="commonSearchWord" placeholder="매장 또는 메뉴정보를 검색하실 수 있습니다." title="검색어 입력" onkeypress="if( event.keyCode==13 ){gotoCommonSearch();}" >
									<button type="button" class="btnMC btnM" onclick="gotoCommonSearch()">검색하기</button>
								</div>
								<button type="button" class="close">검색 닫기</button>
							</fieldset>
						</div>
					</div>
					</form>
					<!-- //util -->
					<!-- 로그인 폼 -->
					<div id="login_pop" class="close">
						<div class="wrapper shadow clearfix">
							<div>
								<p class="roboto">Wcdonalds</p>
								<h3 class="tit01 tit_ico key01">일반 로그인</h3>
								<form action="#" method="post">
									<div class="input">
										<input id="id" type="text" placeholder="아이디를 입력하세요" name="#" data-role="textfield">
									</div>
									<div class="input">
										<input id="password" type="password" placeholder="비밀번호를 입력하세요"	name="#" data-role="textfield">
										<button type="button" tabindex="-1" class="btn_view01"></button>
									</div>
									<div class="check">
										<div>
											<i class="fas fa-check"></i>
										</div>
										<p>앞으로도 자동으로 로그인</p>
									</div>
									<div>
										<input type="submit" value="로그인">
									</div>
									<div>
										<a href="javascript:alert('회원가입페이지는 준비중입니다.')">회원가입</a> <a
											href="javascript:alert('비밀번호찾기 페이지는 준비중입니다.')">비밀번호 찾기</a>
									</div>
								</form>
								<!--아이디비번 버튼-->
							<!--로그인 창-->
							</div>
							<div class="simple_login">
								<div class="btn_x">
									<i class="fas fa-times"></i>
								</div>
								<h3 class="tit01 tit_ico lock">간편 로그인</h3>
								<ul class="list">
									<li class="naver"><a><span>네이버 로그인</span></a></li>
									<li class="kakao"><a><span>카카오톡 로그인</span></a></li>
								</ul>
							</div>
						</div>
						<!--//wrapper-->
						<div class="dimmed"></div>
					</div>
				</nav>
			</div>
			<form id="gotoMenuForm" method="post">
				<input type="hidden" name="sub_category_seq" id="gotoform_sub_category_seq">
			</form>
		</header>
		<!-- //header -->
		
<script type="text/javascript">

	$(document).ready(function() {
		
		var limit = $(".header").height();	
		var ch = false;
		
		$(document).scroll(scrollH);	//마우스 스크롤할떄마다 이벤트 발생
		
		$('.btnTop').click(function() {	//Top 클릭시 이벤트
			$('btnTop').removeClass("fixedB");
			$("body,html").animate({"scrollTop":0},200);
		});
		
		function scrollH(){	//마우스 스크롤 이벤트
			if($(".footer").length > 0) {
			       if($(document).scrollTop()+$(window).height() < $(".footer").offset().top ) {
                       $(".btnTop").removeClass('fixedB');
                       $(".aside").removeClass('fixedB');
                   }else{
                       if($(document).scrollTop() !== 0){
                    	   $(".btnTop").addClass('fixedB');
                    	   $('.aside').addClass('fixedB');
                       }
                   }
			}
			 if($(document).scrollTop() < limit ){	
				 $(".header").removeClass('fixed');
                 if(ch) {
                     ch = false;
                     $(".header").removeClass('fixed');
                     return;
                 }
             }else{
                 if(!ch) {
                     ch = true;
                     $(".header").addClass('fixed');
                     $(".header").stop().css({	//현재동작하는 애니메이션을 중지
                         'margin-top':'-30px'
                     }).animate({
                         'margin-top':0
                     },100,function(){	//animate({'속성명':'속성값'}, 가속도, 가속도함수) - animate로 보여지는 속도값지정
                     });
                     return;
                 }
             }
		};
		
		$(".menu").mouseover(function(e){	//메인 메뉴바에 마우스 오버시 이벤트
			$(".header").addClass("open");
		}).mouseout(function(e){			//메인 메뉴바에 마우스 아웃시 이벤트
			$(".header").removeClass("open");
		});

		$(".btn_login").click(function(e){	//로그인 버튼 클릭 이벤트
			e.preventDefault();
			$("#login_pop").slideDown(200);
			$("#login_pop").removeClass("close");
			$(".dimmed").attr("style", "display:block;");
		});
		
		$("#login_pop > .dimmed, #login_pop .btn_x").click(function(e){	//로그인 x버튼 클릭, 바탕 클릭시 이벤트
	 		e.preventDefault(); 
	  		e.stopPropagation();
	 		$("#login_pop").fadeOut(200);
	 		$("#login_pop").addClass("close");
	 		$(".dimmed").attr("style", "display:none;");
		});	
		
		 $("#login_pop .check").click(function(){
			 if($(this).hasClass("checked")){
			   $(this).removeClass("checked");
			 }else{
			   $(this).addClass("checked");
			 }
		 });
		 
		 var utils = {
			scrollDisabled : function()	{
				// console.log('idsenabled')
				$("html , body").css("overflow","hidden");
			},
			scrollEnabled : function() {
				$("html , body").css("overflow","");
			}
		};
		 
		 var topSearch = $(".topSearch")
         $(".srch").click(function(e) {	//검색 돋보기 클릭 이벤트
             utils.scrollDisabled();
             topSearch.addClass("open");
             e.preventDefault();
             topSearch.find(".dimmed").remove();
        	  // $('.dimmed').show();
             topSearch.append("<div class='dimmed'></div>");
             // open
         });
       	 topSearch.find(".close").click(function(e) {	//검색 닫기버튼 클릭 이벤트
             utils.scrollEnabled();
             e.preventDefault();
             topSearch.removeClass("open");
         	 // $('.dimmed').hide();
             topSearch.find(".dimmed").remove()
         });
       	 
       	 $(".btn_view01").click(function(){	//눈알 이미지 클릭 이벤트
       		if($(this).hasClass("on")){
       			$(this).removeClass("on");
       			$("#password").attr("type", "password");
       		} else {
       			$(this).addClass("on");
       			$("#password").attr("type", "text");
       		}
       	 });
       	 
         function clickItem(){	//이용가능한 메뉴 클릭 이벤트
             $(".storeFind .srvcFilter .service>span input").each(function(){	//각각의 input들을 가져오고 반복문을 돌림(for문과 같음)
                 $(this).click(function(){	//this = 클릭한input,  input 클릭시 이벤트(each로인해 반복됨(중복처리되는듯))
                     var chk = $(this).is(":checked");	//is(":checked") = 체크박스 체크여부
                     var dataOff = $(this).siblings("label").find("img").attr("data-off");	//siblings = this선택자를 제외한 같은 선상에있는 this들
                     var dataOn = $(this).siblings("label").find("img").attr("data-on");
                     if(chk){
                         $(this).prop("checked", true);	//this의 속성(checked)의 값을 true로 줌
                         $(this).parent("span").addClass("on");
                         $(this).siblings("label").find("img").attr({"src": dataOn});
                     }else{
                         $(this).prop("checked", false);
                         $(this).parent("span").removeClass("on");
                         $(this).siblings("label").find("img").attr({"src": dataOff});
                     }
                     
                 });
             });
         };
         clickItem();
	});
	
</script>	
	<div id="content">
  	<div class="container" id="sub-page-content">
    <div class="row"> 
      <!-- sidebar -->
      <div class="col-md-3 sidebar">
	<div class="section-menu">
	  <ul class="nav nav-list">
		<li class="nav-header lnb-header">회원가입<span>Join Us</span></li>
		<li class="active"><a href="join.asp" class="first">회원가입<small>Join Us</small><i class="fa fa-angle-right"></i></a></li>
	  </ul>
	</div>
	 </div>
      <!--main content-->
      <div class="col-md-9">
		<script type="text/javascript" src="/m/appstrap/js/join.js"></script>
		<h3 class="title-divider mt_0"><span>회원가입</span> <small>Join Us</small></h3>
		<form name="join_form" method="post" action="member_join.asp">
			<h4 class="title">이용약관</h4>
			<textarea name="textarea" rows="10" class="w100per" readonly title="이용약관">
제1조. 목적

이 약관은 "한국맥도날드의 아르바이트(Crew) 상시채용시스템 홈페이지"(이하 "홈페이지")가 제공하는 모든 정보 제공 서비스를 이용하는 조건 및 절차에 관한 사항을 규정함을 목적으로 하며, 
이용자는 서비스 제공업체인 한국맥도날드 유한회사(이하 "맥도날드")에서 제공해 드리는 홈페이지 서비스 이용 약관에 동의하였음을 확인합니다. 
맥도날드는 보다 나은 서비스 제공을 위하여 이용자들이 홈페이지 서비스 이용과정에서 제공하는 개인정보를 McDonald's Family와 공유할 수 있습니다. 
McDonald's Family는 맥도날드의 계열회사, 프랜차이즈 및 맥도날드가 고객들에게 제공하는 서비스와 관련하여 맥도날드와 제휴관계에 있는 제휴사를 포함합니다. 
McDonald's Family의 개인정보 사용은 &lt;개인정보 수집목적 및 이용목적&gt;을 준수합니다. 
맥도날드는 맥도날드의 웹사이트를 보호하고 어떠한 법규에도 어긋나지 않기 위하여 여하한 정부기관으로부터 적법한 법률상의 요청이 있을 시 
공공의 안전을 위하여 어떠한 정보이든 해당 정부기관과 협조하여 공유할 권한이 있음을 알려드립니다. 

제2조. 회원가입

1. 홈페이지 회원은 "본인회원"만을 원칙으로 합니다. 
2. 본인회원이란 이 약관을 승인하고 홈페이지 서비스의 회원신청 양식에 의거, 본인의 신상 정보를 사실에 입각, 입력하여 
ID와 Password를 발급받으신 분을 의미합니다. 법인 혹은 단체회원으로 가입신청을 하실 수는 없습니다. 
3. 만14세 미만의 미성년자가 회원으로 가입하고자 하는 경우에는 해당 미성년자의 부모님이나 보호자분의 동의가 있어야 회원으로서의 자격이 부여됩니다. 
만14세 미만의 미성년자가 회원가입을 신청하면 그 부모님이나 보호자분의 이메일로 자녀분 회원가입 동의 이메일을 발송합니다. 
이메일을 받으시고 부모님 또는 보호자분이 14일 이내로 동의를 해주시면 귀하의 자녀가 정식으로 맥도날드의 회원이 되십니다. 
14세 미만의 어린이가 부모님의 이메일을 입력하지 않고 임의의 이메일을 입력하여 회원가입 후 문제점 발생시 맥도날드는 이에 수반되는 법적 책임을 지지 않습니다. 
4. 맥도날드는 다음 사항에 해당하는 경우에는 가입승인을 유보, 거부 또는 삭제 할 수 있습니다. 
1) 가명으로 회원에 가입할 경우. 
2) 혐오스럽거나 타인에게 불쾌감을 줄 수 있는 아이디로 회원가입을 할 경우. 
3) 다른 사람의 명의를 빌리거나 도용하여 차명으로 신청하였을 경우. 
4) 기타 가입신청 항목에 허위로 기재할 경우. 
5) 관계법령에 위배되거나 미풍양속을 저해하고자 하는 목적으로 회원가입 신청을 할 경우. 

제3조. 회원정보

1. 회원 가입 시 입력한 신상정보는 이 약관에서 달리 정한 경우를 제외하고는 회원관리용의 목적 및 특정 물품 (경품이벤트 당첨 등) 발송 외 다른 용도로 사용되지 않으며, 
또한 외부로 유출되지 않습니다. 만약 이 사항에 대한 위반행위 시 맥도날드에서 법적 책임을 질 것을 약속 드립니다. 
2. 상기 제3조 제1항의 예외적용 만약 검찰/경찰 등 수사기관이 수사목적으로 회원 정보의 제공을 요청하는 경우 맥도날드는 법에 의하여 강제되는 범위 내에서는 
부득이하게 회원정보를 해당 수사기관에 제공할 수 있습니다. 
다만, 이 경우 맥도날드는 본인에게 그 내용을 통보해 드리되, 가능한 범위 내에서는 가급적 사전에 통보하도록 노력할 것입니다. 

제4조. 회원의무

1. ID와 Password는 회원본인이 직접 사용하여야 하며, 본인이 아닌 타인이 이용하게 하여서는 안됩니다. 
2. 본인 부주의로 ID와 비밀번호가 타인에게 유출되어 발생할 수 있는 각종 손실 및 손해에 대한 책임은 본인에게 귀속됩니다. 
3. 개인신상정보의 변경사항 발생시 회원본인이 수정하지 않은 사항에 관련된 문제점 발생시, 책임은 회원 본인에게 귀속됩니다. 

제5조. 회원관리

1. 회원은 언제든지 개인정보를 열람하고 정정 또는 동의철회(회원탈퇴)를 요청할 수 있습니다. 
2. 개인정보의 수집에 대한 동의철회(회원탈퇴)를 하시려면 회원탈퇴를 누르시고 회원탈퇴를 하시면 됩니다. 
회원탈퇴시 귀하가 맥도날드에 제공한 개인정보는 회원탈퇴의 효력이 발생한 날로부터 3개월 안에 모두 삭제됩니다. 
3. 홈페이지 이용자는 홈페이지 내에 게재되어 있는 각종 정보서비스 이용에 관련된 불만사항이나 의견을 제안하여 시정을 요구할 수 있습니다. 
4. 회원으로 가입되어 있는 분들은 누구나 동등한 자격으로 서비스를 이용하실 수 있습니다. 

제6조. 회원정보 이용

1. 홈페이지 이용자는 홈페이지의 이용과정에서 취득한 e-mail 주소 등 다른 이용자의 개인정보를 영리 목적을 불문하고 사용하거나 제3자에게 제공할 수 없습니다. 
2. 홈페이지 이용자가 스팸메일 발송 등을 위하여 다른 회원들의 e-mail 주소를 사용하거나 이를 제3자에게 제공하였을 경우 , 이에 대한 법적책임은 해당 홈페이지 이용자에게 있으며, 
해당 홈페이지 이용자는 이로 인하여 발생하는 모든 손실 또는 손해로부터 맥도날드가 면책되도록 하여야 합니다. 

제7조. 저작권

1. 홈페이지 이용자가 홈페이지에서 제공하는 각종 서비스에 대한 정보를 사전 동의 없이 외부로 유출시켰을 경우, 해당 홈페이지 이용자는 저작권법등 관련법령에 의하여 제재를 받을 수 있습니다. 
2. 홈페이지 이용자는 홈페이지 등록되어 있는 맥도날드의 CI/BI 혹은 캐릭터 등 상표권법에 의해 보호 받고 있는 이미지 파일을 무단으로 사용하실 수 없으며, 
위반사항 적발 시 해당 행위에 대한 법적 제재가 따른다는 사실을 인정하고 이에 동의합니다. 

제8조. 회원자격 중지 및 탈퇴

1. 서비스 제공업자인 맥도날드는 다음사항 발생시 별도 통보절차 없이 회원의 자격을 정지하거나 박탈할 수 있습니다. 
1) 회원가입시 입력사항을 허위로 기재하였을 경우. 
2) 회원들 간의 홈페이지 내에서의, 음란물 거래 혹은 음란물 등록을 하였을 경우. 
3) 명백한 형사처벌 또는 민사상 불법행위의 대상이 되는 행위 적발시. (불법 상행위 포함) 
4) 게시판 등 홈페이지에서 욕설이나 저속한 문구를 사용하여, 타인에게 불쾌감을 준다고 판단되는 경우. 
2. 홈페이지를 이용한 부당광고 및 다른 회원들에게 피해를 주는 행위를 하였을 경우, 맥도날드는 1회에 한하여 해당 이용자에게 해당 행위를 중지할 것으로 통보하며, 
그러한 통보에도 불구하고 그러한 행위에 발생하는 때에는 별도의 통보 없이 맥도날드는 회원자격을 정지 또는 박탈하게 됩니다. 

제9조. 서비스 이용

1. 서비스는 맥도날드의 업무상 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다. 
2. 제1항의 이용시간은 정기 점검 등의 필요로 인하여 맥도날드가 정한 날과 시간에는 예외로 합니다. 
단, 부득이한 경우로 서비스를 일시 중지 할 경우에는 맥도날드는 가급적 사전에 이를 공지하여야 하나, 불가피한 경우에는 사후 통지로 갈음할 수 있습니다. 
3. 회원의 ID 및 비밀번호 등의 관리 및 이용은 전적으로 회원의 책임으로 하며 회원의 부주의로 인한 이용상의 과실 
또는 제3자에 의한 부정사용 등에 대한 모든 책임은 회원에게 있습니다. 

제10조. 서비스 제공업자의 의무

1. 맥도날드는 특별한 사정이 없는 한 이용자가 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록 합니다. 
2. 맥도날드는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다. 
3. 맥도날드는 이 약관에서 특별히 정한 경우를 제외하고는 이용자의 개인신상정보를 본인의 승낙 없이 타인에게 누설, 배포하여서는 아니됩니다. 
다만 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 적법한 요구가 있는 경우에는 예외로 합니다. 
4. 맥도날드는 이용자로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다. 
다만, 즉시 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보 하여야 합니다. 

11조. 기타사항 (명기되지 않은 사항)

1. 이 약관에 명기되지 않은 사항이나 약관의 해석에 관하여서는 관계법령 또는 상관례에 따릅니다. 
2. 본 약관은 특별한 사유발생시 수정될 수 있으며, 이 경우 홈페이지를 통해 사전 공지됩니다. 

12조. 약관위반 시 책임

1. 이 약관을 위반함으로써 발생하는 모든 책임은 위반한 자가 부담하며, 이로 인하여 상대방에게 손해를 입힌 경우에는 관계법령에 의거하여 법적 책임을 져야 합니다. 
2. 서비스 이용과 관련하여 맥도날드와 이용자 간에 발생하는 분쟁에 관한 소송은 민사소송법 등에 의거한 관할법원에 제기합니다. 

부칙

본 약관은 2010 . 8 . 5부터 적용하고, 2006 . 8 . 16부터 적용되던 종전의 개인정보정책은 본 약관으로 대체합니다. 

			</textarea>
			<div class="form-group mt_5">
				<label for="checkbox1">
					<input type="checkbox" name="checkbox1" id="checkbox1" value="1" /> 
					한국맥도날드의 아르바이트(Crew) 상시채용시스템 사이트 이용약관에 동의합니다.
				</label>
			</div>
			<h4 class="title">지원자의 개인정보 처리에 관한 동의</h4>
			<textarea name="textarea" rows="10" class="w100per" readonly title="지원자의 개인정보 처리에 관한 동의">
※ 수집하는 개인정보의 항목
&nbsp;&nbsp;&bull;&nbsp;이름, 사진, 생년월일, 성별, 로그인ID, 비밀번호, 자택 전화번호, 자택 주소, 휴대전화번호, 이메일, 자기소개,
&nbsp;&nbsp;서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보 등
&nbsp;&nbsp;&bull;&nbsp;희망직종, 지원경로, 적성검사 결과 등

※ 개인정보의 수집·이용 목적
&nbsp;&nbsp;&bull;&nbsp;회원관리: 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지,
&nbsp;&nbsp;가입 의사 확인, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리, 고지사항
&nbsp;&nbsp;전달
&nbsp;&nbsp;&bull;&nbsp;과거 지원이력의 관리, 채용 여부의 결정 및 통지 

※ 개인정보의 보유·이용 기간
&nbsp;&nbsp;&bull;&nbsp;관계 법령의 규정에 따라 귀하의 개인정보를 보존할 의무가 있는 경우가 아닌 한, 회사는 위의 수집 및 이용목적을
&nbsp;&nbsp;달성할 때까지 귀하의 개인정보를 보유 및 이용합니다.
			</textarea>
			<div class="form-group mt_5">
				<label for="checkbox2"><input type="checkbox" name="checkbox2" id="checkbox2" value="2" /> 개인정보 처리에 동의합니다.</label>
			</div>
			
			<div class="b_btn_c">
				<a href="memberJoin.jsp" class="btn btn-md btn-red">확인</a>
				<a href="javascript:history.back();" class="btn btn-md btn-default">뒤로</a>
			</div>
		</form>
      </div>
	  <!-- //content -->

    </div> <!-- //.row -->
  </div> <!-- //.container -->
</div> <!-- //#content -->

<!--Hidden elements - excluded from jPanel Menu on mobile-->
<div class="hidden-elements jpanel-menu-exclude">
	<!--@modal - SMS modal-->
	<div class="modal fade" id="sms-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h3 class="modal-title">SMS 보내기</h3>
		</div>
		<form id="frm" name="frm" method="post" action="recruit_list.asp">
			<div class="modal-body">
				<div class="box-default mb_15">
					<div class="form-group">
						<label>수신자</label>
						<p><span class="icon-wrap"><i class="fa fa-user"></i></span>홍길동<br />
						<span class="icon-wrap"><i class="fa fa-phone"></i></span>010-1111-2222</p>
					</div>
					<div class="form-group" style="margin-bottom:0px;">
						<label>발신자</label>
						<p style="margin-bottom:0px;"><span class="icon-wrap"><i class="fa fa-user"></i></span>홍길순<br />
						<span class="icon-wrap"><i class="fa fa-phone"></i></span>010-1111-2222</p>
					</div>
				</div>
				<div class="form-group">
					<textarea name="" id="" rows="5" class="form-control placeholder" placeholder="내용"></textarea>
				</div>
				
			</div>
			<!-- /.modal-body --> 
			<div class="modal-footer ta_c">
				<a class="btn btn-md btn-red">보내기</a>
				<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">닫기</button>
			</div>
		</form>
	  </div>
	  <!-- /.modal-content --> 
	</div>
	<!-- /.modal-dialog --> 
</div>
	<!-- /.modal -->

	<!--@modal - 채용정보 검색 modal-->
	<div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h3 class="modal-title">채용정보 검색</h3>
		</div>
		<form id="frm" name="frm" method="post" action="recruit_list.asp">
			<div class="modal-body">
				<div class="form-group">
					<label for="area1">희망 근무지</label>
					<select name="area1" id="area1" class="form-control"></select>
					<select name="area2" id="area2" class="form-control mt_10"></select>
					<p class="help-block">※ 마산, 진해, 창원시는 창원시로 검색하시기 바랍니다.</p>
				</div>
				<div class="form-group">
					<label for="" class="dis_b">근무형태</label>
					<label for="r_division1" class="checkbox-inline">
						<input type="checkbox" name="r_division1" id="r_division1" value="crew" />크루
					</label>
					<label for="r_division2" class="checkbox-inline">
						<input type="checkbox" name="r_division2" id="r_division2" value="rider" />라이더
					</label>
					<label for="r_division3" class="checkbox-inline">
						<input type="checkbox" name="r_division3" id="r_division3" value="etc" />기타
					</label>
				</div>
                <!--
				<div class="form-group">
					<label for="" class="dis_b">근무 가능시간</label>
					<label for="r_hours_type1" class="checkbox-inline">
						<input type="checkbox" name="r_hours_type1" id="r_hours_type1" value="오전" />오전
					</label>
					<label for="r_hours_type2" class="checkbox-inline">
						<input type="checkbox" name="r_hours_type2" id="r_hours_type2" value="오후" />오후
					</label>
					<label for="r_hours_type3" class="checkbox-inline">
						<input type="checkbox" name="r_hours_type3" id="r_hours_type3" value="야간" />야간
					</label>
					<label for="r_hours_type4" class="checkbox-inline">
						<input type="checkbox" name="r_hours_type4" id="r_hours_type4" value="새벽" />새벽
					</label>
				</div>
                -->
				<div class="form-group">
					<label for="">매장검색</label><br />
					<input type="radio" name="sp" value="r_name" checked /> 매장명
					&nbsp;&nbsp;
					<input type="radio" name="sp" value="r_address" /> 주소<br />
					<input name="sk" id="srchtxt" type="text" class="form-control mt_10" />
				</div>
			</div>
			<!-- /.modal-body --> 
			<div class="modal-footer ta_c">
				<input type="submit" value="검색" class="btn btn-md btn-red" />
				<a href="recruit_list.asp" class="btn btn-md btn-default r_reset">초기화</a>
				<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">닫기</button>
			</div>
		</form>
	  </div>
	  <!-- /.modal-content --> 
	</div>
	<!-- /.modal-dialog --> 
</div>
	<!-- /.modal -->

	<!--@modal - login modal-->
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h3 class="modal-title">Login</h3>
		</div>
		<div class="modal-body">
          <form id="frm_user" name="form" data-toggle="validator" method='post'>
			<div class="form-group">
			  <label class="sr-only" for="u_id">ID</label>
			  <input type="text" id="u_id" name="u_id" class="form-control placeholder" placeholder="ID"/>
			</div>
			<div class="form-group">
			  <label class="sr-only" for="u_password">Password</label>
			  <input type="password" id="u_password" name="u_password" class="form-control password">
			</div>
			<div class="form-group">
				<!--회원가입후 1년이상 활동내역이 없으면 자동으로 탈퇴처리 됩니다.(개인정보보호 지침 준수)</li>-->
			</div>
			
			<button type="button" class="btn btn-md btn-red btn-block" id="btn_login_user" type="submit">Login</button>
			
		  </form>
		</div>
		<div class="modal-footer ta_c">
			<div class="btn-group" role="group" aria-label="btn_login_box">
				<a href="join.asp" class="btn btn-sm btn-default">회원가입</a>
				<a href="search_id.asp" class="btn btn-sm btn-default">ID찾기</a>
				<a href="search_pw.asp" class="btn btn-sm btn-default">Password찾기</a>
				<button type="button" class="btn btn-sm btn-default" data-dismiss="modal" aria-hidden="true">닫기</button>
			</div>
		</div>
	  </div>
	  <!-- /.modal-content --> 
	</div>
	<!-- /.modal-dialog --> 
</div>
<script type="text/javascript">
    $(document).ready(function() {

        $(document).on('click', "#btn_login_user", function() {
        
            var u_id = $("#u_id").val();
            var u_password = $("#u_password").val();
            if (u_id == "") {
                alert("아이디를 입력하세요.");
                $("#u_id").focus();
                return false;
            }
            if (u_password == "") {
                alert("비밀번호를 입력하세요.");
                $("#u_password").focus();
                return false;
            }

            $.ajax({
				type : "POST",
				url : "/m/appstrap/ajax/ajax_login_action.asp",
                data : $("#frm_user").serialize().replace(/=([^&]*)/g, function($0,$1){ return "="+escape(decodeURIComponent($1).replace(/\n/g,"\r\n")) }),
                //data : 'u_id=' + u_id + '&u_password=' + u_password, 
				dataType : "html",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				error: function(html) {
					alert("ajaxCall_edit Error!");
				},
				success: function(html) {
                    if ( html=="success" )
                    {
                        alert("로그인 하였습니다.");
                        location.href="/m";
                    }else if( html == "fail"){
                        $("#u_id").val("");
                        $("#u_password").val("");
                        alert("아이디 또는 비밀번호를 다시 확인하세요.");
                    }else if( html == "pwd_fail") {
                        alert("비밀번호를 5회 이상 잘못 입력하였습니다.");
                    }
				}
			});

        });

    });
</script>
	<!-- /.modal -->

	<!--@modal - 매장정보 modal-->
	<div class="modal fade" id="store-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h3 class="modal-title">매장정보</h3>
		</div>
		<div class="modal-body" id="view_store"></div>
		<!-- /.modal-body --> 
		<div class="modal-footer ta_c">
			<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">닫기</button>
		</div>
	  </div>
	  <!-- /.modal-content --> 
	</div>
	<!-- /.modal-dialog --> 
</div>
	<!-- /.modal -->

	<!--@modal - 지원하기 modal-->
	<div class="modal fade" id="apply-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" id="modal_apply_content"></div>
	</div>
</div>

<script type="text/javascript">
	$(function(){
		$(".btn").click(function(){
			//alert("test");
		});
	});
</script>
	<!-- /.modal -->

    <!--@modal - 지원하기 modal 수정용 20170605-->
	<div class="modal fade" id="apply-modal_20170605" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" id="modal_apply_content_20170605"></div>
	</div>
</div>

<script type="text/javascript">
	$(function(){
		$(".btn").click(function(){
			//alert("test");
		});
	});
</script>
	<!-- /.modal -->

    <!--@modal - 지원시험 modal-->
    <div class="modal fade" id="test-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="modal_test">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 class="modal-title">적성테스트 <small>Aptitude Test..</small></h3>
            </div>

            <div class="modal-body">
                <div class="box-info mb_20">
                    <h4>What if? Situations?</h4>
                    <small>
                    다음 질문은 다양한 상황에서 여러분이 어떤 선택을 내리는지 파악하여 맥도날드가 추구하는 고객 중심 서비스 역량이 있는지 평가하기 위한 것입니다. 각 상황마다 여러분이 가장 동의하는 행동을 선택해주시기 바랍니다. 
                    </small>
                </div>

                <form id="frm_test">
                <!-- question 1 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q1</h3>
                        <p>
                            당신이 어떤 고객을 도와드리던 중 한 어머니 고객의 자녀가 식사를 쏟아 어려움을 겪고 있는 것을 보았습니다. 쏟아진 버거와 음료 때문에 위험해질 수도 있는 상황인데 매니저는 현재 부재중입니다. 당신은 어떻게 하시겠습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans2" value="0" id="ans2" /> <strong> 도와줄 수 있는 다른 사람들이 있으므로 하던 일을 계속 합니다.</strong><br />
                            <input type="radio" name="ans2" value="1" /> <strong>매니저가 돌아올 때까지 기다렸다가 상황을 알려서 매니저가 적절히 해결할 수 있도록 합니다.</strong><br />
                            <input type="radio" name="ans2" value="1" /> <strong>도움을 드리던 고객을 마저 도운 후 어머니 고객 쪽으로 가서 쏟아진 제품을 치우고 청소를 시작합니다</strong><br />
                            <input type="radio" name="ans2" value="1" /> <strong>도움을 드리던 고객을 마저 도운 후 어머니 고객이 도움이 필요한지 확인합니다.</strong><br />
                        </div>
                    </div>
                </div>
                <!-- /question 1 -->

                <!-- question 2 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q2</h3>
                        <p>
                            당신의 매니저가 새로운 정책과 절차들이 생길 것이라고 공지하였습니다. 새로운 정책과 절차는 당신의 일에 막대한 영향을 주게 될 것입니다. 당신은 어떻게 하시겠습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans4" value="1" id="ans4" /> <strong>새로운 정책과 절차에 대한 정보를 최대한 파악해서 새로운 업무를 잘 준비할 수 있도록 합니다.</strong><br />
                            <input type="radio" name="ans4" value="0" /> <strong>늘 하던대로 하는 것이 좋기 때문에 실망합니다.</strong><br />
                            <input type="radio" name="ans4" value="1" /> <strong>이러한 변화로 인해 발생할 수 있는 긍정적인 영향에 중점을 둡니다.</strong><br />
                            <input type="radio" name="ans4" value="1" /> <strong>당신은 어떤 변화에도 잘 대처할 수 있기 때문에 긍정적으로 생각합니다.</strong><br />
                            <input type="radio" name="ans4" value="1" /> <strong>변화에 대해 더 편안하게 느껴질 때까지 가능한 한 모든 것을 알아봅니다.</strong>
                        </div>
                    </div>
                </div>
                <!-- /question 2 -->

                <!-- question 3 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q3</h3>
                        <p>
                            당신은 매우 바쁜 레스토랑에서 일하고 있습니다. 당신이 맡은 업무만으로도 벅찬데 동료가 지금 당장 도와줄 것을 요청합니다. 그 동료를 도와주는 것이 당신의 역할은 아니며, 매니저는 부재중입니다. 당신은 어떻게 하시겠습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans5" value="1" id="ans5" /> <strong>도와주겠다고 답하고 당신의 업무 스케줄에 동료의 업무를 최대한 반영합니다.</strong><br/>
                            <input type="radio" name="ans5" value="1" /> <strong>도와주겠다고 답하고 필요하다면 추가 시간을 들여서라도 모든 일을 다 마칠 수 있도록 열심히 일합니다.</strong><br/>
                            <input type="radio" name="ans5" value="1" /> <strong>동료를 도와주어도 될지 매니저에게 물어보고 알려주겠다고 답합니다.</strong><br/>
                            <input type="radio" name="ans5" value="0" /> <strong>사과하고 이미 당신의 업무만으로도 버거운 상황이라 도와줄 시간이 없다고 말합니다.</strong><br/>
                            <input type="radio" name="ans5" value="1" /> <strong>도와주겠다고 답하고 나중에 당신이 도움이 필요하게 되면 동료에게 도움을 요청합니다.</strong><br/>
                        </div>
                    </div>
                </div>
                <!-- /question 3 -->

                <!-- question 4 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q4</h3>
                        <p>
                            당신은 학교에서 많은 과제와 시험 공부로 매우 바쁜 상황입니다. 시간을 어떻게 관리하겠습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans8" value="1" id="ans8" /> <strong>일정을 구체적으로 계획하고 우선 순위를 세워서 가장 중요한 과제를 잘 해결할 수 있도록 합니다.</strong><br/>
                            <input type="radio" name="ans8" value="1" /> <strong>밤 늦게까지라도 최대한 할 수 있는 모든 것을 해서 최선의 결과를 달성합니다.</strong><br/>
                            <input type="radio" name="ans8" value="0" /> <strong>모든 것을 다 완료하지 못하더라도 걱정하지 않습니다.</strong><br/>
                            <input type="radio" name="ans8" value="1" /> <strong>일정을 조율해서 모든 과제를 적절한 수준 이상으로 완료할 수 있는 시간을 확보합니다.</strong><br/>
                            <input type="radio" name="ans8" value="1" /> <strong>시험과 과제를 성공적으로 마칠 수 있도록 한꺼번에 여러 일들을 처리합니다.</strong><br/>
                        </div>
                    </div>
                </div>
                <!-- /question 4 -->

                <!-- question 5 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q5</h3>
                        <p>
                            여러분의 레스토랑 출근 첫날입니다. RGM이 다가오더니 여러분의 복장이 고객에게 좋지 않은 인상을 줄 것 같다고 말합니다. 이 상황에서 어떻게 대응하겠습니까? 
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans9" value="1" id="ans9" /> <strong>회사의 이미지를 바르게 전달하는데 중요한 부분이므로 옷을 갈아입는다. </strong><br/>
                            <input type="radio" name="ans9" value="1" /> <strong>RGM의 지시를 따르는 것이 중요하므로 옷을 갈아 입는다. </strong><br/>
                            <input type="radio" name="ans9" value="1" /> <strong>RGM의 요구를 어느 정도 까지만 따른 다음, RGM이 괜찮다고 하는지 본다.</strong><br/>
                            <input type="radio" name="ans9" value="0" /> <strong>RGM에게 고객은 직원 복장에 관심 없다고 설명한다.</strong><br/>
                            
                        </div>
                    </div>
                </div>
                <!-- /question 5 -->

                <!-- question 6 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q6</h3>
                        <p>
                            당신은 영화관에서 일하고 있습니다. 보고 싶어하는 영화가 매진 되었기 때문에 당신에게 화를 내고 있는 고객 한 명을 상대하고 있습니다. 이 손님을 어떻게 응대하시겠습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans12" value="1" id="ans12" /> <strong>이 상황이 얼마나 화가 났는지 이해해주며, 다른 영화를 볼 것을 추천해 줍니다.</strong><br/>
                            <input type="radio" name="ans12" value="1" /> <strong>고객에게 사과하고 해당 영화의 다음 상영 일정을 알려줍니다.</strong><br/>
                            <input type="radio" name="ans12" value="0" /> <strong>정중하게 고객에게 대기중인 사람들이 있으니 결정을 내려야 한다고 말합니다.</strong><br/>
                            <input type="radio" name="ans12" value="1" /> <strong>손님에게 도움을 줄 수 있도록 관리자를 불러드리겠다고 말합니다.</strong><br/>
                            <input type="radio" name="ans12" value="1" /> <strong>불행히도 할 수 있는 방법이 없다고 사과합니다.</strong>
                        </div>
                    </div>
                </div>
                <!-- /question 6 -->

                <!-- question 7 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q7</h3>
                        <p>
                            당신이 일하는 회사는 최근 부정적이고 불공평한 언론 뉴스가 있습니다. 친구들이 회사에 대해 나쁜 말을 하고 있어 혼란스럽습니다. 당신은 어떻게 하시겠습나까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans13" value="1" id="ans13" /> <strong>친구들과 이야기 할 때 불편해서 친구들의 말을 들어 본 적이 없는 것처럼 행동합니다.</strong><br/>
                            <input type="radio" name="ans13" value="1" /> <strong>어쨌든 친구들이 나의 의견을 경청하지 않기 때문에 아무 것도 말하지 않기로 합니다.</strong><br/>
                            <input type="radio" name="ans13" value="0" /> <strong>문제되지 않으니 의견 충돌보다는 친구의 의견에 동의해 줍니다.</strong><br/>
                            <input type="radio" name="ans13" value="1" id="ans13" /> <strong>친구와 문제에 대해 논의하고 적절한 정보를 공유합니다.</strong><br/>
                            <input type="radio" name="ans13" value="1" id="ans13" /> <strong>친구들에게 나는 너희가 말하는 것에 동의하지 않는다고 정중하게 이야기합니다.</strong><br/>
                        </div>
                    </div>
                </div>
                <!-- /question 7 -->

                <!-- question 8 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q8</h3>
                        <p>
                            슈퍼마켓에에서 당신 뒤에 있는 남자의 쇼핑백이 찢어지더니 내용물이 다 쏟아져버립니다. 그는 당황스러워합니다. 당신은 어떻게 하시겠습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans16" value="0" id="ans16" /> <strong>도울 수 있는 다른 사람들이 있기 때문에 그것에 대해 상관하지 않습니다.</strong><br/>
                            <input type="radio" name="ans16" value="1" /> <strong>남자에게 도움이 필요한지 물어봅니다.</strong><br/>
                            <input type="radio" name="ans16" value="1" /> <strong>그의 식료품들을 주우며 도와줍니다.</strong><br/>
                            <input type="radio" name="ans16" value="1" /> <strong>나에게도 똑같은 일이 일어 났었고, 필요한 도움을 제공합니다.</strong><br/>
                        </div>
                    </div>
                </div>
                <!-- /question 8 -->

                <!-- question 9 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q9</h3>
                        <p>
                            당신이 레스토랑에서 테이블을 닦고 있습니다. 그런데 한 어린이가 프론트 카운터 앞에서 아이스크림 콘을 떨어뜨리고 울기 시작하는 것을 보았습니다 당신은 어떻게 하시겠습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans18" value="0" id="ans18" /> <strong>어린이의 엄마에게 아이스크림 콘을 새로 사주시겠냐고 물어봅니다.</strong><br />
                            <input type="radio" name="ans18" value="1" /> <strong>아이스크림 하나 더 그냥 어린이에게 주면서 더러워진 것에 걱정하지 말라고 말하고는 깨끗하게 치웁니다.</strong><br/>
                            <input type="radio" name="ans18" value="1" /> <strong>어린이에게 기다리라고 말하고 카운터에 있는 다른 동료에게  아이스크림 콘을 무료로 드리라고 알려줍니다.</strong><br/>
                            <input type="radio" name="ans18" value="1" /> <strong>어린이에게 다른 아이스크림콘을 당신이 그냥 줄 수 있는지를 매니저에게 물어봅니다.</strong><br/>
                        </div>
                    </div>
                </div>
                <!-- /question 9 -->

                <!-- question 10 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Q10</h3>
                        <p>
                            맥도날드에서 일해 보기로 한 것에 감사 드립니다. 맥도날드에서 일해보고 싶은 이유를 말해 줄 수 있습니까?
                        </p>
                    </div>
                    <div class="panel-body">
                        <p></p>
                        <div>
                            <input type="radio" name="ans19" value="1" id="ans19" /> <strong>나는 새로운 친구들을 사귈 수 있어서 좋습니다.</strong><br/>
                            <input type="radio" name="ans19" value="1" /> <strong>나는 새로운 기술을 배우고 좋은 교육을 받을 수 있을 것으로 기대합니다.</strong><br/>
                            <input type="radio" name="ans19" value="1" /> <strong>나는 일자리를 갖는 것이 중요합니다.</strong><br/>
                            <input type="radio" name="ans19" value="1" /> <strong>나는 돈을 벌 수 있기를 기대합니다.</strong><br/>
                            <input type="radio" name="ans19" value="1" /> <strong>맥도날드는 일하기에 즐거운 곳이라 들었습니다.</strong><br/>
                            <input type="radio" name="ans19" value="0" /> <strong>맥도날드는 늘 일자리가 많습니다.</strong>
                        </div>
                    </div>
                </div>
                <!-- /question 10 -->
                </form>

            </div>
            <!-- /.modal-body --> 
            <div class="modal-footer ta_c">
                <a href="#" class="btn btn-md btn-red" id="test_submit">제출</a>
                <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">취소</button>
            </div>

        </div>
    </div>
</div>
    <!-- /.modal -->

	<!--@modal - 개인정보처리방침 modal-->
	<div class="modal fade" id="privacy-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h3 class="modal-title">개인정보처리방침</h3>
		</div>
		<div class="modal-body box-scroll">
			<p>
				한국 맥도날드 유한회사(이하 '회사')는 회원의 개인정보를 중요시하며, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 개인정보 보호와 관련된 법령을 준수하고 있습니다. <span style="color:#025cca;">&lt;개정 2014.11.17&gt;</span><br />
				회사는 개인정보취급방침을 통하여 회원과, 웹사이트를 통하여 회사가 채용한 Crew(이하 ‘회원’은 웹사이트 회원 중 Crew를 제외한 일반 회원을 의미합니다)가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br />
				회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br />
				본 방침은 2012년 4월 1일부터 시행됩니다. 
			</p>
			<h4 class="title">1. 회사가 수집하는 개인정보 항목은 무엇인가요?</h4>
			<p class="help-block">&bull; 회사는 회원의 다음과 같은 정보를 수집·이용하고 있습니다.</p>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>구분</th>
					<th>수집·이용 목적</th>
					<th>수집·이용 항목</th>
				</tr>
				<tr>
					<td>필수적 정보</td>
					<td>- 회원 관리: 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리, 고지사항 전달<br />
					- 과거 지원이력의 관리, 채용 여부의 결정 및 통지</td>
					<td>- 성명, 사진, 생년월일, 성별, 로그인ID, 비밀번호, 자택 전화번호, 자택 주소, 휴대전화번호, 이메일, 서비스 이용기록, 지원이력, 접속 로그, 접속 IP 정보</td>
				</tr>
				<tr>
					<td>선택적 정보</td>
					<td>- 회원과 비회원의 접속 빈도나 방문 시간 분석, 이용자의 취향과 관심분야 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 개인 맞춤 서비스 제공</td>
					<td>- 쿠키</td>
				</tr>
			</table>
			<p class="help-block">&bull; 회사는 Crew의 다음과 같은 정보를 수집·이용하고 있습니다.</p>
			<h5>[일반 개인정보]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>구분</th>
					<th>수집·이용 목적</th>
					<th>수집·이용 항목</th>
				</tr>
				<tr>
					<td>필수적 정보</td>
					<td>
						- 인사관리 및 업무분배: 채용, 승진, 평가, 보상, 상벌, 부서이동, 배치, 전보, 퇴직, 교육. 미팅 등<br />
						- 경력관리: 재직증명서 · 경력증명서 · 퇴직증명서 등 증명서의 발급 및 해당사실의 확인 등<br />
						- 급여관리: 기본급, 퇴직금 등의 정산 및 지급<br />
						- 복리후생: 휴가 등 근로계약에서 정하는 구성원 복지 관련 사항의 이행<br />
						- 법규준수/계약이행: 국민연금 · 건강보험 · 고용보험 · 산재보험 등 사회보험의 가입, 소득세 · 주민세 등 각종 세금의 신고 · 납부, 소득세법에 따른 연말정산의 실시 등 회사에 부과되는 법적 · 행정적 의무의 이행<br />
						- 보안/연락: 회사 내 시스템의 유지 · 관리, 회사 내에서 발생 가능한 범죄, 비리 등의 예방 및 증거수집, 연락처 공유와 비상연락망 구축<br />
						- 분쟁해결: 고객 민원의 처리, 향후 발생 가능한 송 등의 대비지원자의 신원 및 학력·경력의 확인, 과거 지원이력의 관리, 채용 여부의 결정 및 통지
					</td>
					<td>
						- 신상정보: 성명, 사진, 생년월일, 성별, 국적, 전화번호, 휴대전화번호, 전자우편주소, 가족 관련 정보(귀하와의 관계, 성명, 생년월일, 성별, 직업, 동거여부 등), 보훈정보(구분, 등급, 관계), 지문, 계좌번호<br />
						- 학력 및 경력: 학력(학교명, 전공, 입학 및 졸업연도, 졸업 여부, 성적 등), 경력(근무지, 직책, 담당업무, 연봉 및 급여내역, 입사일 및 퇴사일, 근무연한 등), 자격, 수상/징계내역, 병역사항<br />
						- 근무관련정보: 입사일, 사번, 근무지, 소속부서, 직위/직책, 근무일수, 근로계약기간, 재직상태, 고용형태, 채용경로, 월별 근무시간, 교육실시내역, 퇴사일과 퇴직사유, 휴직기간과 휴직사유<br />
						- 급여 및 보험: 급여정보(월별 급여정보, 연봉, 개인 Award, 근속선물비, Tip/Rcip 지급액, 퇴직금 중간정산일 등) 및 사회보험정보(가입상태, 보험증번호, 취득일, 상실일, 만료일, 경감여부 및 기간, 수급자해당여부, 수급액 등)<br />
						- 근무태도, 업무성과 등에 대한 평가<br />
						- CCTV를 통해 수집되는 영상정보
					</td>
				</tr>
				<tr>
					<td>선택적 정보</td>
					<td>- 사보발간</td>
					<td>- 결혼기념일, 취미</td>
				</tr>
			</table>
			<h5>[고유식별정보]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>구분</th>
					<th>수집·이용 목적</th>
					<th>수집·이용 항목</th>
				</tr>
				<tr>
					<td>필수적 정보</td>
					<td>- 인사관리 및 업무분배, 경력관리, 급여관리, 복리후생, 법규준수/계약이행</td>
					<td>- 주민등록번호 또는 외국인등록번호(본인 외 가족, 신원보증인 포함), 운전면허번호</td>
				</tr>
			</table>
			<h5>[민감정보]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>구분</th>
					<th>수집·이용 목적</th>
					<th>수집·이용 항목</th>
				</tr>
				<tr>
					<td>필수적 정보</td>
					<td>
						- 식품위생법 등 관련 법령의 준수<br />
						- 장애인 고용현황의 신고<br />
						- 산재보험 등 산업재해 관련 업무의 처리<br />
					</td>
					<td>
						- 건강검진결과(신장, 체중, 혈액형, 결핵 · 장티프스 · 전염성피부질환 등 유무<br />
						- 장애관련정보: 장애여부, 장애진단일, 등급, 등록번호<br />
						- 산업재해 발생시 그로 인한 부상 관련 정보장애여부, 장애등급
					</td>
				</tr>
			</table>
			<h4 class="title">2. 회원 및 Crew의 개인정보는 어떻게 수집되나요?</h4>
			<p>
				&bull; 회사는 홈페이지 회원가입을 통하여 회원의 정보를 수집합니다.<br />
				&bull; 회사는 제출받은 이력서 등 채용서류를 통하여 추가적인 Crew의 정보를 수집합니다.
			</p>
			<h4 class="title">3. 개인정보 보유 및 이용기간은 얼마나 되나요?</h4>
			<p>&bull; 원칙적으로, 회사는 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 회사는 사이트 내 부정행위와 불법행위 방지를 위하여 개인정보 수집 및 이용목적 달성 후에도 3개월간 회원 및 Crew의 정보를 보존할 수 있습니다.</p>
			<h4 class="title">4. 회원 및 Crew의 개인정보 파기절차 및 방법은 어떻게 되나요?</h4>
			<p>
				&bull; 파기절차<br />
				  회원 및 Crew가 제공한 정보는 목적이 달성된 후 별도의 DB로 옮겨져 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(위 3. 참조) 일정 기간 저장된 후 파기됩니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유 목적 이외의 다른 목적으로 이용되지 않습니다.<br />
				&bull; 파기방법<br />
				  회사는 파기하여야 할 개인정보가 전자적 파일 형태인 경우 복원이 불가능한 방법으로 영구 삭제하며, 이외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우 파쇄 또는 소각합니다.
			</p>
			<h4 class="title">5. 회사의 개인정보 제3자 제공 현황은 어떠한가요?</h4>
			<p>
				&bull; 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우, 또는 회원 및 Crew가 별도로 동의한 경우 외에는 개인정를 외부에 제공하지 않습니다.<br />
				&bull; 회사 Crew의 개인정보 제3자 제공 현황은 다음과 같습니다.
			</p>
			<h5>[일반 개인정보]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>구분</th>
					<th>제공받는 자(연락처)</th>
					<th>제공받는 자의 개인정보 이용목적</th>
					<th>제공하는 개인정보의 항목</th>
					<th>제공받는 자의 개인정보 보유·이용기간</th>
				</tr>
				<tr>
					<td rowspan="11">필수적제공</td>
					<td>McDonald’s<br />Corporation</td>
					<td>미국 법령의 준수</td>
					<td>성명</td>
					<td rowspan="12">개인정보 이용목적을 달성할 때까지</td>
				</tr>
				<tr>
					<td>한아통상㈜<br />(062-222-3633)</td>
					<td>회사 내 장비 이용방법 교육</td>
					<td>성명, 직급, 근무지</td>
				</tr>
				<tr>
					<td>국세청<br />(126)</td>
					<td>소득세·주민세 등 각종 세금의 부과감면 및 징수</td>
					<td>성명, 입사일, 퇴사일, 퇴직사유, 취득일, 상실일, 고용형태, 급여, 휴직일, 휴직사유, 근무일수, 가족관련정보</td>
				</tr>
				<tr>
					<td>국민연금공단<br />(1355)</td>
					<td>국민연금 가입·유지 등 관리 및 보험료 수급, 환급</td>
					<td>성명, 입사일, 퇴사일, 퇴직사유, 취득일, 상실일, 고용형태, 급여, 휴직일, 휴직사유, 근무일수, 계좌번호, 가족관련정보</td>
				</tr>
				<tr>
					<td>건강보험공단<br />(1577-1000)</td>
					<td>건강보험 가입·유지 등 관리 및 보험료 수급, 환급</td>
					<td>성명, 입사일, 퇴사일, 퇴직사유, 취득일, 상실일, 고용형태, 급여, 휴직일, 휴직사유, 근무일수, 계좌번호, 가족관련정보</td>
				</tr>
				<tr>
					<td>고용노동부<br />(1350)</td>
					<td>고용보험 가입·유지 등 관리 및 보험료 수급, 환급</td>
					<td>성명, 입사일, 퇴사일, 퇴직사유, 취득일, 상실일, 고용형태, 급여, 휴직일, 휴직사유, 근무일수, 교육실시내역, 계좌번호, 가족관련정보</td>
				</tr>
				<tr>
					<td>근로복지공단<br />(1588-0075)</td>
					<td>산재보험 가입·유지 등 관리 및 보험료 수급, 환급</td>
					<td>성명, 입사일, 퇴사일, 퇴직사유, 취득일, 상실일, 고용형태, 급여, 휴직일, 휴직사유, 근무일수, 계좌번호, 가족관련정보</td>
				</tr>
				<tr>
					<td>보훈청<br />(1577-0606)</td>
					<td>국가유공자 및 보훈가족의 대우</td>
					<td>성명, 보훈정보, 근무지, 직위, 근무기간, 퇴직일, 퇴직사유, 가족관련정보</td>
				</tr>
				<tr>
					<td>한국장애인고용공단<br />(02-6320-7056)</td>
					<td>장애인 고용현황 관리 및 고용훈련실시</td>
					<td>성명, 급여, 입사일, 퇴사일</td>
				</tr>
				<tr>
					<td>근무지가<br />소재한<br />각 지방자치단체</td>
					<td>식품위생법 관련 업무의 처리</td>
					<td>성명, 휴대전화번호</td>
				</tr>
				<tr>
					<td>MDS 주문 고객<br />(라이더에 한함)<br />[K&C note: 계산서의 담당자 마스킹 처리가 가능할 경우 본 항목은 삭제 가능]</td>
					<td>MDS 주문 관련 담당자 확인</td>
					<td>성명</td>
				</tr>
				<tr>
					<td>선택적 제공</td>
					<td>㈜와이비엠 (02-2008-5200)</td>
					<td>수강생 관리</td>
					<td>성명, 근무지, 직위</td>
				</tr>
			</table>
			<h5>[고유식별정보]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>구분</th>
					<th>제공받는 자<br />(연락처)</th>
					<th>제공받는 자의<br />개인정보 이용목적</th>
					<th>제공하는<br />개인정보의 항목</th>
					<th>제공받는 자의<br />개인정보 보유·이용기간</th>
				</tr>
				<tr>
					<td rowspan="8">필수적 제공</td>
					<td>국세청<br />(126)</td>
					<td>소득세·주민세 등 각종 세금의 부과감면 및 징수</td>
					<td rowspan="9">주민등록번호, 외국인등록번호</td>
					<td rowspan="9">개인정보 이용목적을 달성할 때까지</td>
				</tr>
				<tr>
					<td>국민연금공단<br />(1355)</td>
					<td>국민연금 가입·유지 등 관리 및 보험료 수급, 환급</td>
				</tr>
				<tr>
					<td>건강보험공단<br />(1577-1000)</td>
					<td>건강보험 가입·유지 등 관리 및 보험료 수급, 환급</td>
				</tr>
				<tr>
					<td>고용노동부<br />(1350)</td>
					<td>고용보험 가입·유지 등 관리 및 보험료 수급, 환급</td>
				</tr>
				<tr>
					<td>근로복지공단<br />(1588-0075)</td>
					<td>산재보험 가입·유지 등 관리 및 보험료 수급, 환급</td>
				</tr>
				<tr>
					<td>보훈청<br />(1577-0606)</td>
					<td>국가유공자 및 보훈가족의 대우</td>
				</tr>
				<tr>
					<td>한국장애인고용공단<br />(02-6320-7056)</td>
					<td>장애인 고용현황 관리 및 고용훈련실시</td>
				</tr>
				<tr>
					<td>근무지가 소재한 각 지방자치단체</td>
					<td>식품위생법 관련 업무의 처리</td>
				</tr>
				<tr>
					<td>선택적 제공</td>
					<td>㈜와이비엠<br />(02-2008-5200)</td>
					<td>수강생 관리</td>
				</tr>
			</table>
			<h5>[민감정보]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>구분</th>
					<th>제공받는 자<br />(연락처)</th>
					<th>제공받는 자의<br />개인정보 이용목적</th>
					<th>제공하는<br />개인정보의 항목</th>
					<th>제공받는 자의<br />개인정보 보유·이용기간</th>
				</tr>
				<tr>
					<td>필수적 제공</td>
					<td>한국장애인고용공단<br />(02-6320-7056)</td>
					<td>장애인 고용현황 관리 및 고용훈련실시</td>
					<td>장애관련정보</td>
					<td>개인정보 이용목적을 달성할 때까지</td>
				</tr>
			</table>
			<h4 class="title">6. 회사의 개인정보 관련 업무 위탁 현황은 어떠한가요?</h4>
			<p class="help-block">&bull; 회사는 아래와 같이 개인정보 처리업무를 위탁하고 있습니다. 수탁자나 위탁하는 업무의 내용이 변경되는 경우 본 처리방침을 통해 공개하겠습니다.</p>
			<h5>[회원 개인정보 관련 업무]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>수탁자</th>
					<th>위탁하는 업무의 내용</th>
				</tr>
				<tr>
					<td>㈜엔잡얼라이언스</td>
					<td>웹사이트 및 시스템 관리</td>
				</tr>
			</table>
			<h5>[Crew 개인정보 관련 업무]</h5>
			<table class="table table-bordered table-th-grey">
				<tr>
					<th>수탁자</th>
					<th>위탁하는 업무의 내용</th>
				</tr>
				<tr>
					<td>㈜커머스랩 </td>
					<td>Payroll System 개발, 유지 및 관리</td>
				</tr>
				<tr>
					<td>LG U+ CMS</td>
					<td>실명확인 및 급여 대량 이체</td>
				</tr>
				<tr>
					<td>한영회계법인</td>
					<td>감사, 정리 등 회계 및 세무 업무</td>
				</tr>
				<tr>
					<td>딜로이트</td>
					<td>감사, 정리 등 회계 및 세무 업무</td>
				</tr>
				<tr>
					<td>신한은행/외환은행</td>
					<td>급여 대량 이체</td>
				</tr>
				<tr>
					<td>㈜DDB코리아</td>
					<td>웹사이트 및 시스템 관리</td>
				</tr>
				<tr>
					<td>㈜엔잡얼라이언스</td>
					<td>웹사이트 및 시스템 관리</td>
				</tr>
				<tr>
					<td>ORC Partner</td>
					<td>직원 만족도 조사</td>
				</tr>
				<tr>
					<td>KT mHows</td>
					<td>고객 대상 프로모션 행사에 대한 참여 제한</td>
				</tr>
				<tr>
					<td>㈜맨파워코리아</td>
					<td>사내 전화 안내 및 연결 업무</td>
				</tr>
				<tr>
					<td>크리에이티브아이콘</td>
					<td>회사 수첩(Planning Calender) 제작</td>
				</tr>
				<tr>
					<td>㈜에스원</td>
					<td>CCTV 설치 및 관리</td>
				</tr>
				<tr>
					<td>GAP Buster<br /><span style="color:#025cca">&lt;신설 2014.11.17&gt;</span></td>
					<td>GAP Buster에 회원가입 한 자, mystery shopper로 등록 한 자 또는 mystery shopper 활동 등과 관련된 자 중 자격요건 미달인 자가 있는지 정기적으로 확인하는 업무<br /><span style="color:#025cca">&lt;신설 2014.11.17&gt;</span></td>
				</tr>
			</table>
			<p>&bull; 회사는 개인정보 처리업무 위탁시 개인정보보호법 등 관계법령의 규정에 따라 위탁업무 수행목적 외 개인정보의 처리금지, 개인정보의 기술적 · 관리적 보호조치, 위탁업무의 목적 및 범위, 재위탁의 제한, 수탁자에 대한 관리 · 감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.</p>
			<h4 class="title">7-1. 회원의 개인정보 관련 권리로는 어떤 것이 있고 그 행사 방법은 어떻게 되나요?</h4>
			<p>
				&bull; 회원 및 회원의 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.<br />
				&bull; 회원 혹은 만 14세 미만 아동의 개인정보 조회. 수정을 위해서는 ‘개인정보변경’ (또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 ‘회원탈퇴’를 클릭하여 개인정보의 열람, 정정 또는 회원탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면
				지체 없이 조치하겠습니다.<br />
				&bull; 회원이 개인정보의 오류에 대한 정정을 요청하신 경우에는 회사는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.<br />
				&bull; 회원 혹은 법정 대리인의 요청에 의해 삭제된 개인정보는 별도의 DB로 옮겨져 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(위 4. 참조) 일정 기간 저장된 후 파기됩니다.
			</p>
			<h4 class="title">7-2. Crew의 개인정보 관련 권리로는 어떤 것이 있고 그 행사 방법은 어떻게 되나요?</h4>
			<p>
				&bull; Crew는 자신의 개인정보의 열람 및 처리정지를 요구할 수 있습니다. 다만 다음의 어느 하나에 해당하는 경우에는 회사는 해당 사유를 Crew에게 알리고, 처리정지 요구를 거절할 수 있습니다.<br />
				<span style="display:block; margin:0; padding:0 0 0 10px;">
					(i) 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우<br />
					(ii) 다른 사람의 생명 · 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우<br />
					(iii) 개인정보를 처리하지 아니하면 직원과 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 직원이 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우
				</span>
				&bull; Crew는 자신의 개인정보의 오류에 대한 정정 및 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.<br />
				&bull; Crew가 개인정보의 오류에 대한 정정 및 삭제를 요청한 경우에는 정정 및 삭제를 완료할 때까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 이용 또는 제공한 경우 발견 즉시 지체 없이 수정하겠습니다.<br />
				&bull; 위의 권리는 Crew의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하여야 합니다.<br />
				&bull; Crew는 개인정보보호법 등 관계법령을 위반하여 회사가 처리하고 있는 Crew 본인이나 타인의 개인정보 및 사생활을 침해하여서는 아니됩니다.
			</p>
			<h4 class="title">8. 쿠키(cookie)가 무엇인가요?</h4>
			<p>회사는 웹사이트에서 회원 및 Crew의 정보를 수시로 저장하고 찾아내는 개인정보 자동수집 장치인 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 회사 웹사이트를 운영하는데 이용되는 서버가 회원의 브라우저에 보내는 아주 작은 텍스트 파일로서 회원의 컴퓨터 하드디스크에 저장됩니다.</p>
			<h4 class="title">9. 쿠키(cookie) 설정을 거부할 수 있는 방법이 있나요?</h4>
			<p>회원 및 Crew는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 회원 및 Crew는 사용하는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.</p>
			<h4 class="title">10. 개인정보보호 관련 불만이나 질의 사항이 있을 경우 어떻게 하나요?</h4>
			<p>
				&bull; 회사는 회원 및 Crew의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보관리책임자를 지정하고 있습니다. 회원 및 Crew의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.<br />
				&bull; 개인정보관리책임자<br />
			   성명: 김철홍<br />
			   이메일: Churl.Kim@kr.mcd.com
			</p>
			<h4 class="title">11. 회사 이외에 다른 신고나 상담 기관이 있나요?</h4>
			<p>
				&bull; 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br />
				개인정보분쟁조정위원회 (http://privacy.kisa.or.kr/privacy/jsp/privacy.jsp/ TEL : 118)<br />
				정보보호마크인증위원회 (www.eprivacy.or.kr/ TEL : 02-580-0533~4)<br /> 
				대검찰청 인터넷범죄수사센터 (http://www.spo.go.kr/ TEL : 02-3480-2000)<br />
				경찰청 사이버테러대응센터 (www.netan.go.kr/ TEL : 02-393-9112)
			</p>
		</div>
		<div class="modal-footer ta_c">
			<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">닫기</button>
		</div>
	  </div>
	  <!-- /.modal-content --> 
	</div>
	<!-- /.modal-dialog --> 
</div>
	<!-- /.modal -->

    <!--@modal - login modal-->
	<div class="modal fade" id="login-store-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h3 class="modal-title">Store Login</h3>
		</div>
		<div class="modal-body">
         <!--  <form role="form" id="frm" method="post" action="store_login_action.asp"> -->
          <form id="frm" name="form" data-toggle="validator" method='post'>
			<div class="form-group">
			  <label class="sr-only" for="ad_id">ID</label>
			  <input type="text" id="ad_id" class="form-control placeholder" placeholder="ID"/>
			</div>
			<div class="form-group">
			  <label class="sr-only" for="ad_password">Password</label>
			  <input type="password" id="ad_password" class="form-control password">
			</div>
			
            <button type="button" class="btn btn-md btn-red btn-block" id="btn_login" type="submit">Login</button>
			
		  </form>
		</div>
		<div class="modal-footer ta_c">
			<div class="btn-group" role="group" aria-label="btn_login_box">
				<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">닫기</button>
			</div>
		</div>
	  </div>
	  <!-- /.modal-content --> 
	</div>
	<!-- /.modal-dialog --> 
</div>
<script type="text/javascript">
    $(document).ready(function() {

        $(document).on('click', "#btn_login", function() {
        
            var ad_id = $("#ad_id").val();
            var ad_password = $("#ad_password").val();
            if (ad_id == "") {
                alert("아이디를 입력하세요.");
                $("#ad_id").focus();
                return false;
            }
            if (ad_password == "") {
                alert("비밀번호를 입력하세요.");
                $("#ad_password").focus();
                return false;
            }

            $.ajax({
				type : "POST",
				url : "/m/appstrap/ajax/ajax_store_login_action.asp",
                //data : $("#frm").serialize().replace(/=([^&]*)/g, function($0,$1){ return "="+escape(decodeURIComponent($1).replace(/\n/g,"\r\n")) }),
                data : 'ad_id=' + ad_id + '&ad_password=' + ad_password, 
				dataType : "html",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				error: function(html) {
					alert("ajaxCall_edit Error!");
				},
				success: function(html) {
                    if ( html=="success" )
                    {
                        alert("로그인 하였습니다.");
                        location.href="/m/appstrap/applicant.asp";
                    }else{
                        $("#ad_id").val("");
                        $("#ad_password").val("");
                        alert("아이디 또는 비밀번호를 다시 확인하세요.")
                    }
				}
			});

        });

    });
</script>
	<!-- /.modal -->
    
</div>
<!-- Bootstrap JS --> 
<script src="/m/appstrap/js/bootstrap.min.js"></script> 

<!--JS plugins--> 
<script src="/m/appstrap/plugins/flexslider/jquery.flexslider-min.js"></script> 
<script src="/m/appstrap/plugins/clingify/jquery.clingify.min.js"></script> 
<script src="/m/appstrap/plugins/jPanelMenu/jquery.jpanelmenu.min.js"></script> 
<script src="/m/appstrap/plugins/jRespond/js/jRespond.js"></script> 
<script src="/m/appstrap/plugins/quicksand/jquery.quicksand.js"></script> 

<script src="/js/jquery/ui/jquery-ui.js"></script> 
<script src="/js/jquery/ui/lang/jquery.ui.datepicker-ko2.js"></script> 

<!--Custom scripts mainly used to trigger libraries --> 
<script src="/m/appstrap/js/script.min.js"></script>


<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>

<!-- Added by Jay -->
<script src="/m/appstrap/js/custom.js"></script>

<%@ include file="footer.jsp"%>

