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

<h1 style="padding-top: 30px; padding-left: 180px">CART</h1>

<div class="configurator-body" role="main">
	<div class="configurator-scroller scroller">
		<div class="container">
			<div class="configurator-step step-choose-meals">
				<h3 class="step-title">1단계: 메뉴를 선택하세요hu</h3>
				<div class="step-content">
					<div id="available-sets"></div>
					<div>
						<table id="table-select-meal" class="table table-select-meal">
							<thead>
								<tr>
									<th class="controls-colum">&nbsp;</th>
									<th class="picture-column">&nbsp;</th>
									<th class="description-column">&nbsp;</th>
									<th class="cost-column">가격</th>
									<th class="calories-column">kcal</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="controls-column">
										<div class="input-group item-quantity item-quantity-picker">
											<span class="input-group-btn">
												<button type="button" class="btn btn-decrease action-decrease btn-primary btn-black" > - </button>
											</span>
											<input type="number" value="1" min="0" max="3" class="form-controla" maxlength="2" /> 
											<span class="input-group-btn">
												<button type="button" class="btn btn-decrease action-decrease btn-primary btn-black"> + </button>
											</span>
										</div>
									</td>
									<td class="picture-column"><img src="https://www.mcdelivery.co.kr/kr//static/1634797870905/assets/82/products/1025.png" alt="" class="img-block" /></td>
								</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="configurator-step step-customize-meals">
				<h3 class="step-title">2단계: 메뉴 항목을 선택하세요</h3>
				<div class="step-content">
					<div id="added-sets" class="selected-meals"></div>
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
				<a href="list.jsp"
					class="h5 text-default text-ucase btn-back action-cancel"><i
					class="fa fa-caret-left text-primary"></i> 메뉴로 돌아가기</a>
			</div>
			<div class="media-body">
				<div id="cost-section" class="clearfix"></div>
			</div>
			<div class="media-right text-center">
				<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder">
					<i class="mcd icon mcd-bag"></i> {{#if isNewOrder}} 메뉴 추가{{else}} 결제 
					{{/if}}
				</button>
			</div>
		</div>
	</div>
</div>
<div class="step-content">
	<div id="upsell-items">
		<div class="colsize-5-row"></div>
	</div>
</div>
<%@include file="footer.jsp"%>