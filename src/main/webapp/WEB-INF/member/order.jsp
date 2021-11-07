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
										<th class="change-column">변경</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${burgerVO != null}">
									<tr id="row" class="rowCheck">
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
										<td class="change-column"><a href="#" onclick="sideOpen(0)">변경</a></td>
									</tr>
									<tr id="row" class="rowCheck">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src="${burgerVO.b_img_path}" alt="" class="img-block2">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item2-title">${burgerVO.b_name}</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${burgerVO.b_price}</td>
										<td class="calories-column">${burgerVO.b_kcal}</td>
										<td colspan="2" class="side-column">선택안함</td>
										<td colspan="2" class="drink-column">선택안함</td>
										<td class="change-column"><a href="#" onclick="sideOpen(1)">변경</a></td>
									</tr>
									<tr id="row" class="rowCheck">
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
										<td class="change-column"></td>
									</tr>
									</c:if>
									<c:if test="${sideVO != null}">
									<tr id="row" class="rowCheck">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="라지세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src= "${sideVO.s_img_path}" alt="" class="img-block1">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item1-title">${sideVO.s_name}</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${sideVO.s_price}</td>
										<td class="calories-column">${sideVO.s_kcal}</td>
										<td colspan="2" class="side-column">선택안함</td>
										<td colspan="2" class="drink-column">선택안함</td>
										<td class="change-column"><a href="#" onclick="sideOpen(0)">변경</a></td>
									</tr>
								</c:if>
								<c:if test="${drinkVO != null}">
									<tr id="row" class="rowCheck">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="라지세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src= "${drinkVO.b_img_path}" alt="" class="img-block1">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item1-title">${drinkVO.d_name} 라지세트</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${drinkVO.d_price}</td>
										<td class="calories-column">${drinkVO.d_kcal}</td>
										<td colspan="2" class="side-column">선택안함</td>
										<td colspan="2" class="drink-column">선택안함</td>
										<td class="change-column"><a href="#" onclick="sideOpen(0);">변경</a></td>
									</tr>
<<<<<<< HEAD
<<<<<<< HEAD
=======
									</c:if>
									<c:if test="${sideVO != null}">
									<tr id="row" class="rowCheck">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="라지세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src= "${sideVO.s_img_path}" alt="" class="img-block1">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item1-title">${sideVO.s_name}</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${sideVO.s_price}</td>
										<td class="calories-column">${sideVO.s_kcal}</td>
										<td colspan="2" class="side-column">선택안함</td>
										<td colspan="2" class="drink-column">선택안함</td>
										<td class="change-column"><a href="#" onclick="sideOpen(0)">변경</a></td>
									</tr>
								</c:if>
								<c:if test="${drinkVO != null}">
									<tr id="row" class="rowCheck">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="라지세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src= "${drinkVO.b_img_path}" alt="" class="img-block1">
										</td>
										<td colspan="2" class="description-column">
											<h4 class="item1-title">${drinkVO.d_name} 라지세트</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${drinkVO.d_price}</td>
										<td class="calories-column">${drinkVO.d_kcal}</td>
										<td colspan="2" class="side-column">선택안함</td>
										<td colspan="2" class="drink-column">선택안함</td>
										<td class="change-column"><a href="#" onclick="sideOpen(0);">변경</a></td>
									</tr>
								</c:if>
								</tbody>
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
<<<<<<< HEAD
											<div class="iradio checked">
												<input type="radio" name="select-choice" id="side-label" class="form-radio">
=======
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
											<div class="iradio1 checked">
												<input type="radio" name="select-choice" id="side-label1" class="form-radio1"
													data-cartname="후렌치 후라이 - 라지" style="position: absolute; opacity: 0;"
													aria-invalid="false" checked>
											</div>
											<label for="side" class="side-label1"></label>
										</div>
									</div>
									<div>
										<div class="radio " data-categoryid="">
<<<<<<< HEAD
											<div class="iradio">
												<input type="radio" name="select-choice" id="choice-6991" class="form-radio">
=======
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
											<div class="iradio1">
												<input type="radio" name="select-choice" id="choice-6991" class="form-radio1"
													value="골든 모짜렐라 치즈스틱 2조각" data-cartname="골든 모짜렐라 치즈스틱 2조각"
													style="position: absolute; opacity: 0;"
													aria-invalid="false">
											</div>
<<<<<<< HEAD
											<label class="side-label2">골든 모짜렐라 치즈스틱 2조각 </label>
=======
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
											<label for="side1" class="side-label2">골든 모짜렐라 치즈스틱 2조각 </label>
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
								<c:forEach var="drinkList" items="${drinkList}" varStatus="status">
								<div class="choices-column col-xs-4 column-0">
									<c:if test="${status.count eq 1}">
										<div>
											<div class="radio " data-categoryid="">
												<div class="iradio2 checked">
													<input type="radio" name="select-choice" id="${drinkList.d_code}" class="form-radio"
														value="${drinkList.d_name}" data-cartname="${drinkList.d_name}"
														aria-invalid="false" 
														style="position: absolute; opacity: 0;" checked>
												</div>
												<label for="choice-1507" class="radio-label">${drinkList.d_name} </label>
											</div>
										</div>
									</c:if>
									<c:if test="${status.count ne 1}">
										<div>
											<div class="radio " data-categoryid="">
												<div class="iradio2">
													<input type="radio" name="select-choice" id="${drinkList.d_code}" class="form-radio"
														value="${drinkList.d_name}" data-cartname="${drinkList.d_name}"
														aria-invalid="false" 
														style="position: absolute; opacity: 0;">
												</div>
												<label for="choice-1507" class="radio-label">${drinkList.d_name}</label>
											</div>
										</div>
									</c:if>
								</div>
								</c:forEach>
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
<<<<<<< HEAD
<<<<<<< HEAD
=======
var side = "";
var drink = "";
var va = "";
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e

//변경 폼
$(function(){
	$("#sideOkbtn").click(function() {
		$("#sideModal").attr("style", "display:none");
		
		$('.form-radio1').each(function(){
			if($(this).is(":checked")) {
				side = $(this).val();
				console.log(side);
			} 
		});
=======
var side = "";
var drink = "";
var va = "";

//변경 폼
$(function(){
	$("#sideOkbtn").click(function() {
		$("#sideModal").attr("style", "display:none");
		
		$('.form-radio1').each(function(){
			if($(this).is(":checked")) {
				side = $(this).val();
				console.log(side);
			} 
		});
		
		$("#drinkModal").slideDown(200);
	});
	
	$("#drinkOkbtn").click(function() {
		$("#drinkModal").attr("style", "display:none");
>>>>>>> parent of f147cd9 (카트)
		
		$("#drinkModal").slideDown(200);
	});
	
	$("#drinkOkbtn").click(function() {
		$("#drinkModal").attr("style", "display:none");
		
		$('.form-radio').each(function(){
			if($(this).is(":checked")) {
				drink = $(this).val();
				console.log(drink);
			} 
		});
<<<<<<< HEAD
<<<<<<< HEAD
		
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
=======
		$('.rowCheck').each(function(){
			if($(this).hasClass('selected')) {
				$(this).find('.side-column').html(side);
				$(this).find('.drink-column').html(drink);
			} 
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
		});
	});
	
	$(".fas").click(function() {
		$(".modal").attr("style", "display:none");
	});
	
	$('#addBtn').click(function(){
		var va = "";
		$('.form-controla').each(function(){
			if($(this).is(":checked")) {
				va = $(this).val();
				if(va == "라지세트"){ 
					location.href="cart.do?b_code="+${burgerVO.b_code}+"&va="+va+"&side="+side+"&drink="+drink+"";
				} else if(va == "세트"){ 
					location.href="cart.do?b_code="+${burgerVO.b_code}+"&va="+va+"&side="+side+"&drink="+drink+"";
				} else if(va == "단품"){ 
					location.href="cart.do?b_code="+${burgerVO.b_code}+"&va="+va+"&side="+side+"&drink="+drink+"";
				}
			} 
		});
<<<<<<< HEAD
=======
	});
	
	$(".fas").click(function() {
		$(".modal").attr("style", "display:none");
	});
	
	$('#addBtn').click(function(){
		var va = "";
		$('.form-controla').each(function(){
			if($(this).is(":checked")) {
				va = $(this).val();
				if(va == "라지세트"){ 
					location.href="cart.do?b_code="+${burgerVO.b_code}+"&va="+va+"&side="+side+"&drink="+drink+"";
				} else if(va == "세트"){ 
					location.href="cart.do?b_code="+${burgerVO.b_code}+"&va="+va+"&side="+side+"&drink="+drink+"";
				} else if(va == "단품"){ 
					location.href="cart.do?b_code="+${burgerVO.b_code}+"&va="+va+"&side="+side+"&drink="+drink+"";
				}
			} 
		});
=======
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
		if(va == "") {
			alert("메뉴를 선택해주세요");
			return;
		}
<<<<<<< HEAD
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
	});

	//사이드변경 라디오버튼 설정
	$('.iradio1').click(function() {
		$(this).find('.form-radio1').prop('checked', true);
		if($(this).find('.form-radio1').prop('checked')) {
			$('.form-radio1').prop('checked', false);
			$('.form-radio1').closest('.iradio1').removeClass("checked");
			$(this).find('.form-radio1').prop('checked', true); 
			$(this).addClass("checked");
		} else { 
			$(this).removeClass("checked");
		} 
>>>>>>> parent of f147cd9 (카트)
=======
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
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
	});

	//사이드변경 라디오버튼 설정
	$('.iradio1').click(function() {
		$(this).find('.form-radio1').prop('checked', true);
		if($(this).find('.form-radio1').prop('checked')) {
			$('.form-radio1').prop('checked', false);
			$('.form-radio1').closest('.iradio1').removeClass("checked");
			$(this).find('.form-radio1').prop('checked', true); 
			$(this).addClass("checked");
		} else { 
			$(this).removeClass("checked");
		} 
	});
	
	$('.iradio2').click(function() {
		$(this).find('.form-radio').prop('checked', true);
		if($(this).find('.form-radio').prop('checked')) {
			$('.form-radio').prop('checked', false);
			$('.form-radio').closest('.iradio2').removeClass("checked");
			$(this).find('.form-radio').prop('checked', true); 
			$(this).addClass("checked");
		} else { 
			$(this).removeClass("checked");
		} 
	});
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
});
function sideOpen(index) {
	var val = "";
	$('.rowCheck').each(function(i){
		console.log(i);
		console.log(index);
		if($(this).find('.form-controla').prop('checked') && i == index){
			val = $(this).find('.form-controla').val();
			if(val == "라지세트"){ 
				$('label[for="side"]').text("후렌치 후라이 - 라지");
				$('#side-label1').val("후렌치 후라이 - 라지");
				console.log($('label[for="side"]').text());
				console.log($('#side-label1').val());
			} else if(val == "세트"){ 
				$('label[for="side"]').text("후렌치 후라이 - 미디움");
				$('#side-label1').val("후렌치 후라이 - 미디움");
				console.log($('label[for="side"]').text());
			} else if(val == "단품"){ 
				return false;
			}
			return false;
		} 
	});	
	if(val == "") 
		alert("메뉴를 선택해주세요");
	 else
		$("#sideModal").slideDown(200);
}

function drinkOpen(index) {
	$('.rowCheck').each(function(){
		if($(this).find('a').hasClass('drinkCol'+index)){
			$('.rowCheck').find('.form-controla').prop('checked', false);
			$(this).find('.form-controla').prop('checked', true); 
			
			$('.rowCheck').removeClass("selected");
			
			$(this).addClass("selected");
			
			$("#drinkModal").slideDown(200);
		}
	});		 
}
<<<<<<< HEAD
>>>>>>> parent of f147cd9 (카트)
=======
>>>>>>> 71f6fa04eceb81d4f4e3f05ace28a80538fe063e
</script>