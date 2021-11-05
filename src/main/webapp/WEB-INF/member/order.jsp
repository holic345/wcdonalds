<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<link rel="stylesheet" href="resources/css/menu/menu.css">
<!-- <div class="configurator-header"> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="quantity"> -->
<!-- 				<span class="added-quantity">0</span> <span -->
<!-- 					class="small text-ucase show-on-expand">수량</span> -->
<!-- 			</div> -->
<!-- 			<div class="picture show-on-expand text-center"> -->
<!-- 				<img src="{{images.0.imageUrl}}" alt="" /> -->
<!-- 			</div> -->
<!-- 			<div class="description"> -->
<!-- 				<h1 class="item-name">1955 스모키 더블 베이컨</h1> -->
<!-- 				<div class="clearfix"> -->
<!-- 					<div class="product-badges show-on-expand"> -->
<!-- 						{{#each badges}} <span -->
<!-- 							class="food-icons-sprite ir food-icons-{{this}}"></span> -->
<!-- 						{{/each}} -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<button type="button" class="close action-cancel" aria-hidden="true"> -->
<!-- 				<i class="mcd icon mcd-close"></i> -->
<!-- 			</button> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->

<h1 class="container" style="padding-top: 40px">ORDER</h1>
<div class="configurator-body" role="main">
	<div class="configurator-scroller scroller">
		<div class="container">
			<div class="configurator-step step-choose-meals">
				<h3 class="step-title">메뉴를 선택하세요</h3>
				<div class="step-content">
					<div id="available-sets"></div>
					<div>
						<form id="orderForm">
							<table id="table-select-meal" class="table table-select-meal">
								<thead>
									<tr>
										<th class="controls-colum">&nbsp;</th>
										<th class="picture-column">&nbsp;</th>
										<th colspan="2" class="description-column">&nbsp;</th>
										<th class="cost-column">가격</th>
										<th class="calories-column">kcal</th>
										<th colspan="2" class="side-column">사이드</th>
										<th colspan="2"class="drink-column">음료</th>
									</tr>
								</thead>
								<c:if test="${burgerVO != null}">
								<tbody>
									<tr id="row">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="라지세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src= "${burgerVO.b_img_path}" alt="" class="img-block1">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item1-title">${burgerVO.b_name} 라지세트</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${burgerVO.b_price}</td>
										<td class="calories-column">${burgerVO.b_kcal}</td>
										<td colspan="2" class="side-column">선택안함</td>
										<td colspan="2" class="drink-column">선택안함</td>
									</tr>
									<tr id="row">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src="${burgerVO.b_img_path}" alt="" class="img-block2">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item2-title">${set.b_set_name}</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${burgerVO.b_price}</td>
										<td class="calories-column">${burgerVO.b_kcal}</td>
										<td colspan="2" class="side-column">선택안함</td>
										<td colspan="2" class="drink-column">선택안함</td>
									</tr>
									<tr id="row">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="단품" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src="${burgerVO.b_img_path}" alt="" class="img-block3">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item3-title">${burgerVO.b_name}</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${burgerVO.b_price}</td>
										<td class="calories-column">${burgerVO.b_kcal}</td>
										<td colspan="2" class="side-column"></td>
										<td colspan="2" class="drink-column"></td>
									</tr>
								</tbody>
								</c:if>
							</table>
						</form>
					</div>
				</div>
			</div>
			<div class="configurator-step step-upsell-items" id="upsell-section"></div>
		</div>
	</div>
</div>
<div class="configurator-footer">
	<div class="container">
		<div class="media">
			<div class="media-left">
				<a href="list.do" class="h5 text-default text-ucase btn-back action-cancel">
				<i class="fa fa-caret-left text-primary"></i> 메뉴로 돌아가기</a>
			</div>
			<div class="media-body">
				<div id="cost-section" class="clearfix"></div>
			</div>
			<div class="media-right text-center">
				<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder" id="addBtn">
					<i class="fas fa-shopping-cart"></i>&nbsp;카트에 추가하기
				</button>
			</div>
		</div>
	</div>
</div>
<!-- 사이드 변경 폼 -->
<div class="modal fade in" id="sideModal" aria-hidden="false" style="display: none;">
	<form action="" accept-charset="utf-8">
		<div class="modal-dialog columns-{{columnsToDisplay}}">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						<i class="fas fa-times"></i> 	
					</button>
				</div>
				<div class="modal-body">
					<div class="media">
						<div class="pull-left">
							<img src="https://www.mcdelivery.co.kr/kr//static/1635300416887/assets/82/products/1403.png"
								alt="" class="img-block choice-image" />
						</div>
						<div class="media-body">
							<div class="available-choices-list row">
								<div class="choices-column col-xs-12 column-0">
									<div>
										<div class="radio" data-categoryid="">
											<div class="iradio checked">
												<input type="radio" name="select-choice" id="side-label" class="form-radio"
													data-cartname="후렌치 후라이 - 라지" style="position: absolute; opacity: 0;"
													aria-invalid="false" checked>
											</div>
											<label for="side" class="side-label1"></label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-6991" class="form-radio"
													value="골든 모짜렐라 치즈스틱 2조각" data-cartname="골든 모짜렐라 치즈스틱 2조각"
													style="position: absolute; opacity: 0;"
													aria-invalid="false">
											</div>
											<label class="side-label2">골든 모짜렐라 치즈스틱 2조각 </label>
										</div>
									</div>
								</div>
							</div>
							<div class="available-choices-list row"></div>
						</div>
					</div>
				</div>
				<div class="modal-footer text-center">
					<button type="button" id="sideOkbtn" class="btn btn-red btn-lg btn-submit">확인</button>
				</div>
			</div>
		</div>
	</form>
</div>
<!--  라디오버튼 클릭시 음료 이름, 음료 이미지를 ajax로 불러와야하며 불러온 이미지를 .pull-left의 img에 넣어줘야됨 .. -->
<!-- 음료 변경 폼 -->
<div class="modal fade in" id="drinkModal" aria-hidden="false" style="display: none;">
	<form action="" accept-charset="utf-8" novalidate="novalidate">
		<div class="modal-dialog columns-2">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						<i class="fas fa-times"></i> 
					</button>
				</div>
				<div class="modal-body">
					<div class="media">
						<div class="pull-left">
							<img src="https://www.mcdelivery.co.kr/kr//static/1635901928321/assets/82/products/1507.png"
								alt="" class="img-block choice-image">
						</div>
						<div class="media-body">
							<div class="available-choices-list row">
								<div class="choices-column col-xs-4 column-0">
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio checked">
												<input type="radio" name="select-choice" id="choice-1507" class="form-radio"
													value="코카-콜라 - 라지" data-cartname="코카-콜라 - 라지"
													aria-invalid="false" 
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1507" class="radio-label">코카-콜라 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1528" class="form-radio"
													value="스프라이트 - 라지" data-cartname="스프라이트 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1528" class="radio-label">스프라이트 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1510" class="form-radio"
													value="환타 - 라지" data-cartname="환타 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1510" class="radio-label">환타 - 라지</label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1531" class="form-radio"
													value="코카-콜라 제로 - 라지" data-cartname="코카-콜라 제로 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1531" class="radio-label">코카-콜라 제로 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1853" class="form-radio"
													value="딸기 칠러 - 라지" data-cartname="딸기 칠러 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1853" class="radio-label">딸기 칠러 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1631" class="form-radio"
													value="자두 칠러 - 라지" data-cartname="자두 칠러 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1631" class="radio-label">자두 칠러 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1575" class="form-radio"
													value="아이스 드립커피 (시럽 없음) - 라지" 
													data-cartname="아이스 드립 커피 (시럽 없음) - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1575" class="radio-label">아이스 드립커피 (시럽 없음) - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1897" class="form-radio"
													value="아이스 아메리카노 (시럽 없음) - 라지" 
													data-cartname="아이스 아메리카노 (시럽 없음) - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1897" class="radio-label">아이스 아메리카노 (시럽 없음) - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1574" class="form-radio"
													value="아이스 카페라떼(시럽 없음) - 라지" 
													data-cartname="아이스 카페라떼 (시럽 없음) - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1574" class="radio-label">아이스 카페라떼(시럽 없음) - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-3216" class="form-radio"
													value="아이스 바닐라라떼 - 라지" data-cartname="아이스 바닐라 라떼 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3216" class="radio-label">아이스 바닐라라떼 - 라지 </label>
										</div>
									</div>
								</div>
								<div class="choices-column col-xs-4 column-1">
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1660" class="form-radio"
													value="드립 커피 - 라지" data-cartname="드립 커피 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1660" class="radio-label">드립 커피 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1661" class="form-radio"
													value="아메리카노 - 라지" data-cartname="아메리카노 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1661" class="radio-label">아메리카노 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1662" class="form-radio"
													value="카페라떼 - 라지" data-cartname="카페라떼 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1662" class="radio-label">카페라떼 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1663" class="form-radio"
													value="카푸치노 -	라지" data-cartname="카푸치노 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1663" class="radio-label">카푸치노 -	라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1536" class="form-radio"
													value="에스프레소" data-cartname="에스프레소"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1536" class="radio-label">에스프레소 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-3214" class="form-radio"
													value="바닐라 라떼 - 라지" data-cartname="바닐라 라떼 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3214" class="radio-label">바닐라 라떼 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-3183" class="form-radio"
													value="디카페인 아이스 아메리카노 (시럽 없음) - 라지" 
													data-cartname="디카페인 아이스 아메리카노 (시럽 없음) - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3183" class="radio-label">디카페인 아이스 아메리카노 (시럽 없음) - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-3188" class="form-radio"
													value="디카페인 아이스 카페라떼 (시럽 없음) - 라지" data-cartname="디카페인 아이스 카페라떼 (시럽 없음) - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3188" class="radio-label">디카페인 아이스 카페라떼 (시럽 없음) - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-3181" class="form-radio"
													value="디카페인 아메리카노 - 라지" data-cartname="디카페인 아메리카노 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3181" class="radio-label">디카페인 아메리카노 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio"> 
												<input type="radio" name="select-choice" id="choice-3186" class="form-radio"
													value="디카페인 카페라떼 - 라지" data-cartname="디카페인 카페라떼 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3186" class="radio-label">디카페인 카페라떼 - 라지 </label>
										</div>
									</div>
								</div>
								<div class="choices-column col-xs-4 column-2">
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-3191" class="form-radio"
													value="디카페인 카푸치노 - 라지" data-cartname="디카페인 카푸치노 - 라지"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3191" class="radio-label">디카페인 카푸치노 - 라지 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-3192" class="form-radio"
													value="디카페인 에스프레소" data-cartname="디카페인 에스프레소"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-3192" class="radio-label">디카페인 에스프레소 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1701" class="form-radio"
													value="딸기 쉐이크 - 미디엄" data-cartname="딸기 쉐이크 - 미디엄"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1701" class="radio-label">딸기 쉐이크 - 미디엄 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1702" class="form-radio"
													value="초코 쉐이크 - 미디엄" data-cartname="초코 쉐이크 - 미디엄"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1702" class="radio-label">초코 쉐이크 - 미디엄 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1703" class="form-radio"
													value="바닐라 쉐이크 - 미디엄" data-cartname="바닐라 쉐이크 - 미디엄"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1703" class="radio-label">바닐라 쉐이크 - 미디엄 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1550" class="form-radio"
													value="오렌지 주스(캔)" data-cartname="오렌지 주스 (캔)"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1550" class="radio-label">오렌지 주스(캔) </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1581" class="form-radio"
													value="우유" data-cartname="우유"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1581" class="radio-label">우유 </label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-1591" class="form-radio"
													value="생수" data-cartname="생수"
													style="position: absolute; opacity: 0;">
											</div>
											<label for="choice-1591" class="radio-label">생수 </label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn btn-red btn-lg btn-submit" id="drinkOkbtn">확인</button>
				</div>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">

	//변경 폼
	$(document).ready(function() {
		
		var side = "";
		var drink = "";
		
		$("#sideOkbtn").click(function() {
			$("#sideModal").attr("style", "display:none");
			
			$('.form-radio').each(function(){
				if($(this).is(":checked")) {
					va = $(this).val();
				} 
			});
			
			$("#drinkModal").slideDown(200);
		});
		
		$(".fas").click(function() {
			$(".modal").attr("style", "display:none");
		});
		
		$("#drinkOkbtn").click(function() {
			$("#drinkModal").attr("style", "display:none");
		});
		
		$('#addBtn').click(function(){
			var va = "";
			$('.form-controla').each(function(){
				if($(this).is(":checked")) {
					va = $(this).val();
					if(va == "라지세트"){ 
						location.href="orderConfirm.do?b_code="+${vo.b_code}+"&va="+va+"";
					} else if(va == "세트"){ 
						location.href="orderConfirm.do?b_code="+${set.b_set_code}+"&va="+va+"";
					} else if(va == "단품"){ 
						location.href="orderConfirm.do?b_code="+${vo.b_code}+"&va="+va+"";
					}
				} 
			});
			if(va == "") {
				alert("메뉴를 선택해주세요");
				return;
			}
		});
		
		//체크박스 설정
		$('.form-controla').click(function() {
			if($(this).prop('checked')) {
				$('.form-controla').prop('checked', false);
				$('.form-controla').closest('tr').removeClass("selected");
				$(this).prop('checked', true); 
				$(this).closest('tr').addClass("selected");
			} else { 
				$(this).closest('tr').removeClass("selected");
				return;
			}
			
			var va = "";
			$('.form-controla').each(function(){
				if($(this).is(":checked")) {
					va = $(this).val();
					alert(va);
					if(va == "라지세트"){ 
						$('label[for="side"]').text("후렌치 후라이 - 라지");
						$('#side-label').val("후렌치 후라이 - 라지");
						console.log($('label[for="side"]').text());
						$("#sideModal").slideDown(200);
					} else if(va == "세트"){ 
						$('label[for="side"]').text("후렌치 후라이 - 미디움");
						$('#side-label').val("후렌치 후라이 - 미디움");
						console.log($('label[for="side"]').text());
						$("#sideModal").slideDown(200);
					} else if(va == "단품"){ 
						return;
					}
				} 
			});
		});
	});
	
	//사이브변경 라디오버튼 설정
	$('.iradio').click(function() {
		$(this).find('.form-radio').prop('checked', true);
		if($(this).find('.form-radio').prop('checked')) {
			$('.form-radio').prop('checked', false);
			$('.form-radio').closest('.iradio').removeClass("checked");
			$(this).find('.form-radio').prop('checked', true); 
			$(this).addClass("checked");
		} else { 
			$(this).removeClass("checked");
		} 
	});
</script>