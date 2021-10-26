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
				<h3 class="step-title">1단계: 메뉴를 선택하세요</h3>
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
									<th class="calories-column">변경</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="controls-column">
										<div class="input-group item-quantity item-quantity-picker">
											<span class="input-group-btn">
												<button type="button"
													class="btn btn-decrease action-decrease btn-primary btn-black"
													onclick="form_btn(0)">-</button>
											</span> <input type="number" id="text" value="1" min="0" max="10"
												class="form-controla" maxlength="1" /> <span
												class="input-group-btn">
												<button type="button"
													class="btn btn-decrease action-decrease btn-primary btn-black"
													onclick="form_btn(1)">+</button>
											</span>
										</div>
									</td>
									<td class="picture-column"><img src="이미지" alt=""
										class="img-block"></td>
									<td class="description-colum">
										<h4 class="item-title">MenuName</h4>
										<p class="item-description"></p>
									</td>
									<td class="cost-colum">가격</td>
									<td class="calories-colum">칼로리</td>
									<td><a href="#" class="calories-colum">변경</a></td>
								</tr>
						</table>
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
				<a href="list.jsp"
					class="h5 text-default text-ucase btn-back action-cancel"><i
					class="fa fa-caret-left text-primary"></i> 메뉴로 돌아가기</a>
			</div>
			<div class="media-body">
				<div id="cost-section" class="clearfix"></div>
			</div>
			<div class="media-right text-center">
				<button
					class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder">
					<i class="mcd icon mcd-bag"></i>결제
				</button>
			</div>
		</div>
	</div>
</div>
<!-- 변경 폼 -->
<div class="modal fade in" aria-hidden="false" style="display: bolck;">
	<div class="modal-backdrop fade in" style="height: 968px;"></div>
		<div class="modal-container">
			<div class="modal-content">
				<div class="modal-available-choices">
					<form action="" accept-charset="utf-8">
		<div class="modal-dialog columns-{{columnsToDisplay}}">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						<i class="mcd icon mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="media">
						<div class="pull-left">
							<img src="http://placehold.it/120x90/" alt="" class="img-block choice-image" />
						</div>
						<div class="media-body">
							<ul class="category-tabs">
								<li><a data-categoryID="all" href="javascript:void(0);">All</a></li>	
								<li><a data-categoryID="{{ this.categoryID }}" href="javascript:void(0);">{{ this.categoryName }}</a></li>	
							</ul>
							<div class="available-choices-list row">
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer text-center">
					<button type="submit" class="btn btn-red btn-lg btn-submit">확인</button>
				</div>
				
			</div>
		</div>
	</form>
				</div>
			</div>
	</div>
</div>
<div class="step-content">
	<div id="upsell-items">
		<div class="colsize-5-row"></div>
	</div>
</div>
<script type="text/javascript">
	//폼값 증가&감소

	function form_btn(n) {

		var text = document.getElementById("text"); // 폼 선택

		text_val = parseInt(text.value); // 폼 값을 숫자열로 변환

		if (n == 1) {
			text_val += 1; // 계산
		} else {
			text_val -= 1;
		}

		text.value = text_val; // 계산된 값을 바꾼다

		if (text_val <= 0) {
			text.value = 0; // 만약 값이 0 이하면 1로 되돌려준다, 1보다 작은 수는 나타나지 않게하기 위해   
		}
	}
</script>
<%@include file="footer.jsp"%>