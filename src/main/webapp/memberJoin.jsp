<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head profile="http://www.w3.org/2005/10/profile">

<!-- <link rel="icon" type="image/png" href="http://example.com/myicon.png">
 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>McDonald's Crew</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<!-- @todo: fill with your company info or remove -->
<meta name="description" content="">
<meta name="author" content="Themelize.me">

<link rel="stylesheet" href="resources/css/join/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/join/custom-style_sh.css">
<!-- <link rel="stylesheet" href="resources/css/join/colour-red_sh.css">
<link rel="stylesheet" href="resources/css/join/clingify.css">
<link rel="stylesheet" href="resources/css/join/animate.css">
<link rel="stylesheet" href="resources/css/join/jqeury-ui.css">
<link rel="stylesheet" href="resources/css/join/font-mcdonalds.css">
<link rel="stylesheet" href="resources/css/join/font-awesome.min.css"> 
<link rel="stylesheet" href="resources/css/join/theme-sytle.css">-->
<link rel="stylesheet" href="resources/css/join/join.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Le fav and touch icons - @todo: fill with your icons or remove -->
<!-- <link rel="shortcut icon" href="/m/appstrap/img/icons/favicon.png"> -->
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/m/appstrap/img/icons/114x114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/m/appstrap/img/icons/72x72.png">
<link rel="apple-touch-icon-precomposed"
	href="/m/appstrap/img/icons/default.png">
</head>

<body class="page page-join">
	<script type="text/javascript">
		function popup_orientation_view() {
			window.open('/m/appstrap/qsc/', 'viewScholarshipAdm',
					'width=1250,height=800,scrollbars=yes,resizable=yes');
		}
	</script>
	<div id="header">
			<a href="main.jsp"><img src="resources/img/logo.png" id="header_logo"></a>
	</div>
	<a href="#content" class="sr-only">Skip to content</a>
	<div id="navigation" class="wrapper">
		<div class="navbar-static-top navbar-full-width">
		</div>
	</div>
	<div id="content">
		<div class="container" id="sub-page-content">
			<div class="row">
				<!--main content-->
				<div class="col-md-9">
					<script type="text/javascript" src="resources/js/join/join.js"></script>
					<h3 class="title-divider mt_0">
						<span>회원가입</span>
						<small>Join Us</small>
					</h3>
					<form name="join_form" id="join_form" method="post" action="member_join_dbinput.asp" enctype="multipart/form-data">
						<input type="hidden" id="ar1" value="" />
						<!-- <input type="hidden" name="m_photo" id="m_photo" value="" /> -->
						<input type="hidden" name="id_chk_ok" id="id_chk_ok" value="" />
						<input type="hidden" name="pass_ok" id="pass_ok" value="" /> <input
							type="hidden" name="pass_chk_ok" id="pass_chk_ok" value="" />
						<div class="box-info mb_20">
							모든 항목이 필수 입력항목입니다.<br />패스워드는 영문대문자, 영문소문자, 숫자 3가지가 혼합되어야 회원가입이
							됩니다.
						</div>
						<!-- <div class="box-default resume-photo form-group">
				<img src="/m/appstrap/img/sub/photo_default.jpg" alt="사진" id="preview" class="img-responsive"/>
				<input type="file" name="photo_up" id="photo_up" class="form-control mt_10" />
			</div> -->
						<div class="form-group">
							<label for="m_email" class="dis_b">이메일</label> <input
								name="m_email" id="m_email" type="email"
								class="form-control placeholder" />
						</div>
						<div class="form-group">
							<label for="m_name">성명</label> <input type="text" name="m_name"
								id="m_name" class="form-control placeholder" />
						</div>
						<div class="form-group">
							<label for="m_password">패스워드</label> <input type="hidden"
								id="login_pwd_chk" name="login_pwd_chk" value="0" /> <input
								type="password" id="m_password" name="m_password" value=""
								maxlength="16" class="form-control placeholder" /> <span
								id="pwd_chk_msg" class="f11_ment"> <span
								class="pwd_str_msg" level="0" style="display: none;"><small>패스워드
										안전도 : <strong class="level0 text-danger">사용불가</strong>
								</small></span> <span class="pwd_str_msg" level="1" style="display: none;"><small>패스워드
										안전도 : <strong class="level1 text-warning">낮음</strong>
								</small></span> <span class="pwd_str_msg" level="2" style="display: none;"><small>패스워드
										안전도 : <strong class="level2 text-primary">적정</strong>
								</small></span> <span class="pwd_str_msg" level="3" style="display: none;"><small>패스워드
										안전도 : <strong class="level3 text-success">높음</strong>
								</small></span>
							</span>

						</div>
						<div class="form-group">
							<label for="m_password2">패스워드 확인</label> <input type="password"
								id="m_password2" name="m_password2" value="" maxlength="16"
								class="form-control placeholder" /> <span id="pwd_chk_msg2"
								class="f11_ment"></span>

							<!-- <a name="pass"></a>
              <a href="#pass" class="btn btn-xs btn-warning" data-toggle="collapse" data-target="#collapseExam"><i class="fa fa-info"></i> 패스워드 규칙</a> -->
							<div class="box-info mt_10" id="collapseExam">
								<h5>
									<i class="fa fa-check-circle-o"></i> 패스워드 만들기
								</h5>
								<p>
									<small> 1) 비밀번호 작성 규칙은 3개 문자 조합으로 8자리 이상 가능합니다.<br />
										2) 비밀번호 작성 규칙은 2개 문자 조합으로 10자리 이상 가능합니다.<br /> 3) 주민번호, 생일,
										아이디, 전화번호, 연속된 숫자와 문자, <br /> 사전에 포함된 단어가 포함된 패스워드는 피해주시기
										바랍니다.<br /> 4) 타 사이트와 동일한 패스워드의 사용, 이전에 사용했던<br /> 패스워드의 재사용은
										안전하지 않을 수 있습니다.<br /> 5) 패스워드는 길수록, 그리고 많이 혼용할수록 안전합니다.<br />
									</small>
								</p>
								<h5>
									<i class="fa fa-check-circle-o"></i> 패스워드 안전도
								</h5>
								<p class="last">
									<strong>- 사용불가</strong> : 보안에 매우 취약하여 사용할 수 없습니다.<br /> <strong>-
										낮음</strong> : 사용은 가능하지만 보안에 다소 취약합니다.<br /> <strong>- 적정</strong> : 사용
									가능하며 적정수준의 안전한 패스워드입니다.<br /> <strong>- 높음</strong> : 매우 안전한
									패스워드입니다.
								</p>
							</div>
						</div>
						<a name="daumjuso"></a>
						<div class="form-group">
							<label for="m_zipcode" class="dis_b">주소</label>
							<div class="input-group">
								<input name="m_zipcode" id="m_zipcode" type="text"
									class="form-control placeholder" readonly /> <span
									class="input-group-btn"><a href="#daumjuso"
									class="btn btn-md btn-default" id="zip_find" zip="m_zipcode"
									address1="m_address" focus="m_address"><i
										class="fa fa-search"></i></a></span>
							</div>
							<input name="m_address" id="m_address" type="text"
								class="form-control placeholder mt_10" />
						</div>
						<!-- <div class="form-group">
				<label for="area1" class="dis_b">희망근무지역</label>
				<select name="area1" id="area1" class="form-control"></select>
				<select name="area2" id="area2" class="form-control mt_10"></select>
			</div> -->

						<!-- <div class="form-group">
				<label for="time_type_full" class="dis_b">근무가능시간</label>
				<div>
					<label for="time_type_full" class="radio-inline"><input type="radio" name="time_type" id="time_type_full" value="full" />풀타임</label>
					<label for="time_type_part" class="radio-inline"><input type="radio" name="time_type" id="time_type_part" value="part" />파트타임</label>
				</div>
				<div class="mt_10">
					<select name="apply_start" id="apply_start" class="form-control dis_ib" style="width:46%">
						<option value="">시작시간</option>
						
						<option value="1">1시</option>
						
						<option value="2">2시</option>
						
						<option value="3">3시</option>
						
						<option value="4">4시</option>
						
						<option value="5">5시</option>
						
						<option value="6">6시</option>
						
						<option value="7">7시</option>
						
						<option value="8">8시</option>
						
						<option value="9">9시</option>
						
						<option value="10">10시</option>
						
						<option value="11">11시</option>
						
						<option value="12">12시</option>
						
						<option value="13">13시</option>
						
						<option value="14">14시</option>
						
						<option value="15">15시</option>
						
						<option value="16">16시</option>
						
						<option value="17">17시</option>
						
						<option value="18">18시</option>
						
						<option value="19">19시</option>
						
						<option value="20">20시</option>
						
						<option value="21">21시</option>
						
						<option value="22">22시</option>
						
						<option value="23">23시</option>
						
						<option value="24">24시</option>
						
					</select> ~ 
					<select name="apply_end" id="apply_end" class="form-control dis_ib" style="width:46%">
						<option value="">마감시간</option>
						
						<option value="1">1시</option>
						
						<option value="2">2시</option>
						
						<option value="3">3시</option>
						
						<option value="4">4시</option>
						
						<option value="5">5시</option>
						
						<option value="6">6시</option>
						
						<option value="7">7시</option>
						
						<option value="8">8시</option>
						
						<option value="9">9시</option>
						
						<option value="10">10시</option>
						
						<option value="11">11시</option>
						
						<option value="12">12시</option>
						
						<option value="13">13시</option>
						
						<option value="14">14시</option>
						
						<option value="15">15시</option>
						
						<option value="16">16시</option>
						
						<option value="17">17시</option>
						
						<option value="18">18시</option>
						
						<option value="19">19시</option>
						
						<option value="20">20시</option>
						
						<option value="21">21시</option>
						
						<option value="22">22시</option>
						
						<option value="23">23시</option>
						
						<option value="24">24시</option>
						
					</select>
				</div>
			</div> -->
						<!-- <div class="form-group">
				<label for="m_tel1" class="dis_b">집 전화번호</label>
				<input name="m_tel1" id="m_tel1" type="text" maxlength="4" class="form-control placeholder dis_ib"  style="width:30%"/> - 
				<input name="m_tel2" id="m_tel2" type="text" maxlength="4" class="form-control placeholder dis_ib"  style="width:30%"/> - 
				<input name="m_tel3" id="m_tel3" type="text" maxlength="4" class="form-control placeholder dis_ib"  style="width:30%"/>
			</div> -->
						<div class="form-group">
							<label for="m_mobile1" class="dis_b">핸드폰</label> <select
								name="m_mobile1" id="m_mobile1" class="form-control dis_ib"
								style="width: 30%">
								<option value="">앞자리</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> - <input name="m_mobile2" id="m_mobile2" maxlength="4"
								type="text" class="form-control placeholder dis_ib"
								style="width: 30%" /> - <input name="m_mobile3" id="m_mobile3"
								maxlength="4" type="text"
								class="form-control placeholder dis_ib" style="width: 30%" />
						</div>

						<a name="m_birth_cal"></a>
						<div class="form-group">
							<label for="m_birth">생년월일</label>
							<div class="input-group">
								<input type="text" name="m_birth" id="m_birth" maxlength="10"
									class="form-control placeholder" readonly />
							</div>
						</div>
						<div class="form-group">
							<label for="m_sex" class="dis_b">성별</label> <label for="m_sex1"
								class="radio-inline"><input type="radio" name="m_sex"
								id="m_sex1" value="1" />남자</label> <label for="m_sex2"
								class="radio-inline"><input type="radio" name="m_sex"
								id="m_sex2" value="2" />여자</label>
						</div>
						<!-- <div class="form-group">
				<label for="m_route" class="dis_b">가입경로</label>
				<select name="m_route" id="m_route" class="form-control">
					<option value="">선택</option>
					<option value="맥도날드 홈페이지">맥도날드 홈페이지</option>
					<option value="알바몬">알바몬</option>
					<option value="알바천국">알바천국</option>
					<option value="친구 소개">친구 소개</option>
					<option value="매장 방문/맥알바">매장 방문/맥알바</option>
					<option value="매장 포스터">매장 포스터</option>
					<option value="채용행사">채용행사</option>
					<option value="지역신문">지역신문</option>
					<option value="기타">기타</option>
				</select>
			</div> -->
						<!-- <div class="form-group">
				<label for="introduction" class="dis_b">자기소개서 (경험을 바탕으로 한 본인의 장점 혹은 하고싶은 말)</label>
				<textarea name="introduction" id="introduction" rows="5" title="자기소개서 (경험을 바탕으로 한 본인의 장점 혹은 하고싶은 말)" class="form-control placeholder"></textarea>
			</div> -->

						<label for="sms_agree_ck" class="checkbox-sms"> <input
							type="checkbox" name="" id="sms_agree_ck" value="#" />광고성 SMS
							수신동의
						</label> <br> <label for="email_agree_ck" class="checkbox-email">
							<input type="checkbox" name="" id="email_agree_ck" value="#" />광고성
							E-Mail수신동의
						</label>
					</form>

					<div class="b_btn_c">
						<button class="btn btn-md btn-red" id="join_ok">확인</button>
						<a href="javascript:history.back();"
							class="btn btn-md btn-default">뒤로</a>
					</div>

				</div>

				<!-- //content -->

			</div>
			<!-- //.row -->
		</div>
		<!-- //.container -->
	</div>
	<!-- //#content -->

	<!-- FOOTER -->
	<footer id="footer">
		<div class="container">
			<div class="col-sm-6">
				<ul class="list-inline footer-menu-list">
					<li><!-- <a href="" class="color-yellow"
						style="font-weight: bold; color: #ffcc00;"><img
							src="/m/appstrap/img/common/mcdonald_logo.png" alt="지점" /> </a>--> <a
						href="#privacy-modal" data-toggle="modal">개인정보처리방침</a></li>
					<li><a href="#login-modal" data-toggle="modal">로그인</a></li>
					<li><a href="http://www.mcdonalds.co.kr/www/kor/main/main.do"
						target="_blank">한국맥도날드</a></li>
				</ul>
				<p class="copyright">Copyright &copy; 2015 McDonald's. All Right
					Reserved.</p>
			</div>
			<div class="col-sm-6">
				<div id="toplink">
					<a href="#top" class="top-link">Back To Top <i
						class="fa fa-chevron-up"></i></a>
				</div>
			</div>
		</div>
	</footer>

	<!-- <script type="text/javascript">
		$(document)
				.ready(
						function() {

							$(document)
									.on(
											'click',
											"#btn_login_user",
											function() {

												var u_id = $("#u_id").val();
												var u_password = $(
														"#u_password").val();
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

												$
														.ajax({
															type : "POST",
															url : "/m/appstrap/ajax/ajax_login_action.asp",
															data : $(
																	"#frm_user")
																	.serialize()
																	.replace(
																			/=([^&]*)/g,
																			function(
																					$0,
																					$1) {
																				return "="
																						+ escape(decodeURIComponent(
																								$1)
																								.replace(
																										/\n/g,
																										"\r\n"))
																			}),
															//data : 'u_id=' + u_id + '&u_password=' + u_password, 
															dataType : "html",
															contentType : "application/x-www-form-urlencoded; charset=UTF-8",
															error : function(
																	html) {
																alert("ajaxCall_edit Error!");
															},
															success : function(
																	html) {
																if (html == "success") {
																	alert("로그인 하였습니다.");
																	location.href = "/m";
																} else if (html == "fail") {
																	$("#u_id")
																			.val(
																					"");
																	$(
																			"#u_password")
																			.val(
																					"");
																	alert("아이디 또는 비밀번호를 다시 확인하세요.");
																} else if (html == "pwd_fail") {
																	alert("비밀번호를 5회 이상 잘못 입력하였습니다.");
																}
															}
														});

											});

						});
	</script> -->

	<!-- /.modal -->

	<!--@modal - login modal-->
	<!-- <div class="modal fade" id="login-store-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h3 class="modal-title">Store Login</h3>
		</div>
		<div class="modal-body">
          <form role="form" id="frm" method="post" action="store_login_action.asp">
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
	  /.modal-content 
	</div>
	/.modal-dialog 
</div> -->
	<!-- <script type="text/javascript">
		$(document)
				.ready(
						function() {

							$(document)
									.on(
											'click',
											"#btn_login",
											function() {

												var ad_id = $("#ad_id").val();
												var ad_password = $(
														"#ad_password").val();
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

												$
														.ajax({
															type : "POST",
															url : "/m/appstrap/ajax/ajax_store_login_action.asp",
															//data : $("#frm").serialize().replace(/=([^&]*)/g, function($0,$1){ return "="+escape(decodeURIComponent($1).replace(/\n/g,"\r\n")) }),
															data : 'ad_id='
																	+ ad_id
																	+ '&ad_password='
																	+ ad_password,
															dataType : "html",
															contentType : "application/x-www-form-urlencoded; charset=UTF-8",
															error : function(
																	html) {
																alert("ajaxCall_edit Error!");
															},
															success : function(
																	html) {
																if (html == "success") {
																	alert("로그인 하였습니다.");
																	location.href = "/m/appstrap/applicant.asp";
																} else {
																	$("#ad_id")
																			.val(
																					"");
																	$(
																			"#ad_password")
																			.val(
																					"");
																	alert("아이디 또는 비밀번호를 다시 확인하세요.")
																}
															}
														});

											});

						});
	</script> -->
	<!-- /.modal -->
	<!-- Bootstrap JS -->
	<!-- <script src="/resources/js/join/bootstrap.js"></script>
	JS plugins
	<script src="/resources/js/join/jquery.flexslider-min.js"></script>
	<script src="/resources/js/join/jquery.clingify.min.js"></script>
	<script src="/resources/js/join/jquery.jpanelmenu.min.js"></script>
	<script src="/resources/js/join/jRespond.js"></script>
	<script src="/resources/js/join/jquery.quicksand.js"></script>
	<script src="/resources/js/join/jquery-ui.js"></script> -->
	<script src="/resources/js/join/datepicker.js"></script>
	<!--
	Custom scripts mainly used to trigger libraries
	<script src="/resources/js/join/script.min.js"></script>
	<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
	Added by Jay
	<script src="/m/appstrap/js/custom.js"></script>
	<script src="/m/appstrap/js/member_join.js"></script> -->
</body>
</html>