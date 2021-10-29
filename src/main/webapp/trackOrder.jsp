<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mypage.jsp"%>

<link rel="stylesheet" href="resources/css/mypage/trackOrder.css">

<script src="/resources/js/mypage/jquery-3.6.0.min.js"></script>
<script>
function order_detail_show() {
	if ($("#order_detail_table").css("display") == "none") {
		$("#order_detail_table").show();
	} else {
		$("#order_detail_table").hide();
	}
}
</script>

<div class="col-md-9">
	<h3 class="title-divider mt_0">
		<span>주문조회</span><small>Track Order</small>
	</h3>
	<div class="page-content">
		<table class="table-trackorder">
			<thead class="table_head_trackorder">
				<tr>
					<td class="table_head_td">주문 번호</td>
					<td class="table_head_td">예상 배달 시간</td>
					<td class="table_head_td_img">주문 접수</td>
					<td class="table_head_td_img">준비 중</td>
					<td class="table_head_td_img">배달 중</td>
					<td class="table_head_td_img">배달 완료</td>
				</tr>
			</thead>
			<tbody class="table_body_trackorder">
				<tr>
					<td class="trackorder_td">
						<a href="javascript:order_detail_show()" id="order_detail" title="주문 상세 내역 보기">주문번호</a>
					</td>
					<td class="trackorder_td">예상 배달 시간</td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/notes.png"></td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/cook.png"></td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/delivery-man.png"></td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/burger.png"></td>
				</tr>
			</tbody>
			<tfoot class="table_foot_trackorder">
				<tr class="table_foot_tr">
					<td colspan="6" class="table_foot_td"><a data-toggle="modal" class="btn btn-red btn-lg" href="list.jsp">새로운 주문하기</a>
						<p>
							<a href="#trackOrder" data-toggle="modal" class="action-secondary action-link">
								<i class="fa fa-caret-right"></i> 주문 조회가 안 되시나요?
							</a>
						</p>
					</td>
				</tr>
			</tfoot>
		</table>
		<div id="order_detail_table">
			<table>
				<!-- <thead class="table_head_trackorder">
					<tr>
						<td class="table_head_td">주문 상품</td>
						<td class="table_head_td">총 결제 금액</td>
					</tr>
				</thead> -->
				<tbody class="table_body_trackorder">
					<tr>
						<td class="trackorder_td">
							빅맥<br>
							<small>라지세트 : 37,650원</small>
						</td>
						<td class="trackorder_td_totalprice">37,650원</td>
					</tr>
				</tbody>
				<tfoot>
					<tr> 
						<td>
							총 주문금액
						</td>
						<td class="order_price">
							37,600원
						</td>
					</tr>
					<tr>
						<td>
							배달팁
						</td>
						<td class="delivery_price">
							2,000원
						</td>
					</tr>
					<tr>
						<td>
							총 결제금액
						</td>
						<td class="total_price">
							39,600원
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>