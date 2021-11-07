<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<style type="text/css">
div {
display: block;
}
.panel {
	margin-top : 35px;
	margin-left : 170px;
	margin-bottom: 50px;
    border: 1px solid transparent;
    border-radius: 2px;
    width: 50%;
    min-width: 590px;
    min-height: 780px; 
    float : left;
}
.panel-default{
	border-color:#ddd;
}
.h1-area{
	margin-top: 80px;
	margin-left: 150px;
	margin-bottom: 20px;
	width:70%;
}
.h1-area hr{
	background-color: yellow;
	
}
hr{
	background-color: #ddd;
}
.panel-heading{
	padding:15px 24px;
}
.panel-body{
	border-radius:0 0 4px 4px;
}
.panel-heading .panel-body, .panel-product .panel-footer 
, .panel-shaded, .table-panel tbody{
	backgroud-clip: padding-box;
}
fieldset {
    margin: 0;
    min-width: 0;
    display: block;
    margin-inline-start: 2px;
    margin-inline-end: 2px;
    padding-block-start: 0.35em;
    padding-inline-start: 0.75em;
    padding-inline-end: 0.75em;
    padding-block-end: 0.625em;
    min-inline-size: min-content;
}
.fieldset:last-child {
    margin-bottom: 0;
}

fieldset, legend {
    padding: 0;
    border: 0;
}
.radio:first-child{
	margin-top:0;
}
.radio{
	padding: 15px;
	overflow:hidden;
	zoom:1;
	position: relative;
    display: block;
}
</style>
<div class="h1-area">
	<h3><font>주문 확인</font></h3><br>
	<hr>
</div>
<div class="panel panel-lg panel-default">
	<div class="panel-heading">
	
		<h3>지불 유형을 선택하십시오</h3>
	</div>
	<form>
	<div class="panel-body">
		<fieldset class="fieldset payment-types">
			<div class="form-group row">
				<div class="radio">
					<input type="radio" id="credit" name="payment_type" value="1">
					<label for="creditpayment">신용카드 / 간편결제 / 기타 </label>
					<br><hr>
					<br>
					현장 결제<br>
					<input type="radio" id="cash" name="payment_type" value="2">
					<label for="cash">현금</label>
					<br><hr>
					<input type="radio" id="card_meeting" name="payment_type" value="3">
					<label for="cash">카드 (현장에서 카드 단말기로 결제)</label>
					<br><hr>
				</div>
				
			</div>
		</fieldset>
		
	</div>
	</form>
</div>
<%@include file="footer.jsp" %>