<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/m/appstrap/js/jquery.min.js"></script>
<script src="/m/appstrap/js/jquery-migrate-1.2.1.min.js"></script> <!--Legacy jQuery support for quicksand plugin--> 
<script src="resources/js/commons.js"></script>
</head>

		<div style="padding: 40px 0px 40px;">
			<div class="container" id="sub-page-content">
				<div class="row">
					<div class="col-md-3 sidebar">
						<div class="section-menu">
							<ul class="nav nav-list">
								<li class="nav-header lnb-header">마이페이지<span>MyPage</span></li>
								<li class="active"><a href="mypageupdate.do" class="first">마이페이지<small>MyPage</small><i class="fa fa-angle-right"></i></a></li>
								<li class=""><a href="addressBook.do" class="first">주소<small>Address</small><i class="fa fa-angle-right"></i></a></li>
								<li class=""><a href="trackOrder.do" class="first">주문조회<small>Order check</small><i class="fa fa-angle-right"></i></a></li>
								<li class=""><a href="orderHistory.do" class="first">주문내역<small>Order details</small><i class="fa fa-angle-right"></i></a></li>
							</ul>
						</div>			
					</div>
					
					<!-- 테이블 -->
					
					<div class="col-md-9">
					<h3 class="title-divider mt_0"><span>마이페이지</span> <small>MyPage</small></h3>
						<div class="page-content">
							<div class="panel-lg panel panel-default">
								<div class="panel-heading">
									<h3>회원정보 수정</h3>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-xs-12">
											<form action="mypageUpdate.do" method="post"
												role="form" data-form-sync="#form_consentnewnumber"
												class="form form-register" id="form_accountsetting"
												name="form_accountsetting" data-required-symbol="*"
												autocomplete="off">
												<div class="form-register error-container">
													<p>표시된 필수 항목을 입력해 주세요.</p>
												</div>
												<fieldset class="fieldset">
													<div class="fieldset-heading">
														<h2 class="fieldset-title">회원 정보</h2>
														<p class="instructions">* 필수 항목</p>
													</div>
													<div class="row">
														<div class="col-xs-12">
															<div class="form-group">
																<label class="field-label" for="form_accountsetting_firstname">성함:</label>
																<input type="text"
																	class="form-control input-lg required no-special-characters"
																	id="form_accountsetting_firstname" name="firstName"
																	value="잉ㅇ" readonly/><%-- ${sessionScope.name} --%>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-xs-6">
															<div class="form-group">
																<label class="field-label"
																	for="form_accountsetting_gender">성별:</label> <select
																	name="gender" id="form_accountsetting_gender"
																	class="select-lg">
																	<option value="">${gender}</option>
																	<option value="Male">남</option>
																	<option selected="selected" value="Female">여</option>
																	<option value="Do Not Specify">선택 안함</option>
																</select>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-xs-12">
															<div class="form-group">
																<label class="field-label"
																	for="form_accountsetting_contactno">휴대전화 번호:</label> <input
																	type="text"
																	class="form-control input-lg required number digit-only"
																	maxlength="11" id="form_accountsetting_contactno"
																	name="contactNo" placeholder="숫자만 입력"
																	value="${sessionScope.phone}" />
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-xs-12">
															<div class="form-group">
																<label class="field-label"
																	for="form_accountsetting_contactno">새로운 비밀번호:</label> 
																<input type="text"
																	class="form-control input-lg required number digit-only"
																	maxlength="11" id="form_accountsetting_contactno"
																	name="contactNo" placeholder="새로운 비밀번호"/>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-xs-12">
															<div class="form-group">
																<label class="field-label"
																	for="form_accountsetting_contactno">새로운 비밀번호 재입력:</label> 
																<input type="text"
																	class="form-control input-lg required number digit-only"
																	maxlength="11" id="form_accountsetting_contactno"
																	name="contactNo" placeholder="새로운 비밀번호 재입력"/>
															</div>
														</div>
													</div>
											</fieldset>
												<!-- START Notification Channel -->
												<div class="fieldset-heading">
													<h2 class="fieldset-title">인증방법</h2>
													<p class="instructions">선택하신 경로를 패스워드를 리셋을 위해 사용됩니다.</p>
												</div>
												<fieldset class="fieldset">
													<div class="form-group">
														<div class="radio">
															<input type="radio" id="form_notification_channel_email"
																name="preferredNotificationChannel" checked="checked"
																value="1-15671994" style="padding-bottom: 0px"/>
															<label for="form_notification_channel_email"
																class="radio-label"> 이메일: 
															<span id="form_notification_channel_email_mirror">회원이메일 가져오기</span>
															</label>
														</div>
														<div class="radio">
															<input type="radio" id="form_notification_channel_mobile"
																name="preferredNotificationChannel" value="2-15671995" />
															<label for="form_notification_channel_mobile"
																class="radio-label"> 휴대폰번호 : <span
																id="form_notification_channel_mobile_mirror">회원번호가져오기</span>
															</label>
														</div>
													</div>
												</fieldset>
									<fieldset class="fieldset form-actions">
									<div class="form-group">
										<button type="submit" class="btn btn-red btn-xl btn-submit">수정사항 저장</button>	
										<button id="deleteaccount" class="btn btn-red btn-xl btn-submit">회원 탈퇴</button>		
									</div>
							</fieldset>
						</form>
						<!-- END Notification Channel -->
					</div>
					<!--  -->
				</div>
			</div>
		</div>
	</div>
</div>
<!--  myPage 사이드바 <div> 부분 -->


<%@ include file="footer.jsp"%>