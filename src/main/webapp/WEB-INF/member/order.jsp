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
										<th class="description-column">&nbsp;</th>
										<th class="cost-column">가격</th>
										<th class="calories-column">kcal</th>
										<th class="side-column">사이드</th>
									</tr>
								</thead>
								<tbody>
									<tr id="row">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="라지세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src= "${vo.b_img_path}" alt="" class="img-block1">
										</td>
										<td class="description-column">
											<h4 class="item1-title">${vo.b_name} 라지세트</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${vo.b_price}</td>
										<td class="calories-column">${vo.b_kcal}</td>
										<td class="side-column">선택안함</td>
									</tr>
									<tr id="row">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="세트" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src="${set.b_set_img_path}" alt="" class="img-block2">
										</td>
										<td class="description-column">
											<h4 class="item2-title">${set.b_set_name}</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${set.b_set_price}</td>
										<td class="calories-column">${set.b_set_kcal}</td>
										<td class="side-column">선택안함</td>
									</tr>
									<tr id="row">
										<td class="controls-column">
											<div class="input-group item-quantity item-quantity-picker">
												<input type="checkbox" name="checkbox" value="단품" class="form-controla"/> 
											</div>
										</td>
										<td class="picture-column">
											<img src="${vo.b_img_path}" alt="" class="img-block3">
										</td>
										<td class="description-column">
											<h4 class="item3-title">${vo.b_name}</h4>
											<p class="item-description"></p>
										</td>
										<td class="cost-column">${vo.b_price}</td>
										<td class="calories-column">${vo.b_kcal}</td>
										<td class="side-column">선택안함</td>
									</tr>
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
<!-- 변경 폼 -->
<div class="modal fade in" aria-hidden="false" style="display: none;">
	<div class="modal-container">
		<div class="modal-content">
			<div class="modal-available-choices">
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
														<div class="iradio">
															<input type="radio" name="select-choice" id="choice-1403"
																value="후렌치 후라이 - 라지" data-cartname="후렌치 후라이 - 라지"
																style="position: absolute; opacity: 0;"
																aria-invalid="false">
														</div>
														<label for="choice-1403" class="radio-label">후렌치	후라이 - 라지 </label>
													</div>
												</div>
												<div>
													<div class="radio " data-categoryid="">
														<div class="iradio">
															<input type="radio" name="select-choice" id="choice-6991"
																value="골든 모짜렐라 치즈스틱 2조각" data-cartname="골든 모짜렐라 치즈스틱 2조각"
																style="position: absolute; opacity: 0;"
																aria-invalid="false">
														</div>
														<label for="choice-6991" class="radio-label">골든 모짜렐라 치즈스틱 2조각 </label>
													</div>
												</div>
											</div>
										</div>
										<div class="available-choices-list row"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer text-center">
						<button type="button" id="okbtn" class="btn btn-red btn-lg btn-submit">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

	//변경 폼
	$(document).ready(function() {
		
		$("#okbtn").click(function() {
			$(".modal").attr("style", "display:none");
			
			var value = $(".iradio > .radiobtn").val();
			alert(value);
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
			}
			$(".modal").attr("style", "display:block");
		});
	});
	
</script>