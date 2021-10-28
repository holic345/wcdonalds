<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mypage.jsp"%>
<div class="col-md-9">
	<h3 class="title-divider mt_0">
		<span>주문조회</span> <small>Track Order</small>
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
					<td class="trackorder_td">주문번호</td>
					<td class="trackorder_td">예상 배달 시간</td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/notes.png"></td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/notes.png"></td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/notes.png"></td>
					<td class="trackorder_td_img"><img class="trackorder_receive" src="resources/img/notes.png"></td>
				</tr>
				<tr></tr>
			</tbody>
			<tfoot class="table_foot_trackorder">
				<tr class="table_foot_tr">
					<td colspan="6" class="table_foot_td"><a data-toggle="modal" class="btn btn-red btn-lg" href="list.jsp">새로운 주문하기</a>
						<p>
							<a href="#trackOrder" data-toggle="modal" class="action-secondary action-link">
								<i class="fa fa-caret-right"></i> 주문 조회가 안 되시나요?</a>
						</p>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<%@ include file="footer.jsp"%>