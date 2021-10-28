<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="mypage.jsp"%>

<!-- 테이블 -->
<div class="col-md-9">
	<h3 class="title-divider mt_0">
		<span>MyPage</span> <small>MyPage</small>
	</h3>
	<div class="page-content">
		<div class="panel-lg panel panel-default">
			<div class="panel-heading">
				<h3>회원정보 수정</h3>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-xs-12">
						<form action="/kr/updateProfile.html" method="post" role="form"
							data-form-sync="#form_consentnewnumber"
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
											<input type="text" class="form-control input-lg required no-special-characters"
												id="form_accountsetting_firstname" name="firstName"	value="이름가져오기"/>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<div class="form-group">
											<label class="field-label" for="form_accountsetting_gender">성별:</label>
											<select name="gender" id="form_accountsetting_gender" class="select-lg">
												<option value=""></option>
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
											<label class="field-label" for="form_accountsetting_contactno">휴대전화 번호:</label> 
											<input type="text" class="form-control input-lg required number digit-only"
												maxlength="11" id="form_accountsetting_contactno" name="contactNo" placeholder="숫자만 입력" value="01082655085"/>
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
										<input type="radio" id="form_notification_channel_email" name="preferredNotificationChannel" checked="checked" value="1-15671994" /> 
										<label for="form_notification_channel_email" class="radio-label">
											이메일: <span id="form_notification_channel_email_mirror">회원이메일 가져오기</span>
										</label>
									</div>
									<div class="radio">
										<input type="radio" id="form_notification_channel_mobile" name="preferredNotificationChannel" value="2-15671995" /> 
										<label for="form_notification_channel_mobile" class="radio-label">
											휴대폰번호 : <span id="form_notification_channel_mobile_mirror">회원번호가져오기</span>
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
</div>
</div>
</div>

<%@ include file="footer.jsp"%>