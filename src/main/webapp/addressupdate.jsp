<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="mypage.jsp"%>
<link rel="stylesheet" href="resources/css/address/addressupdate.css">
<!-- 주소 추가하기 테이블 -->
<div class="col-md-10">
	<h3 class="title-divider mt_0">
		<span>주소 추가하기</span><small>주소 추가하기</small>
	</h3>
	<div class="page-content">
		<div class="panel-group panel-lg panel panel-default">
			<div class="panel-heading">
				<h3>새로운 주소 추가</h3>
			</div>
			<div class="panel-body">
				<form method="post" role="form" class="form form_deliveryaddress"
					id="form_deliveryaddress" data-required-symbol="*"
					action="/kr/addAddress.html" novalidate="novalidate">
					<fieldset class="fieldset">
						<div class="fieldset-heading">
							<h2 class="fieldset-title">배달 받을 주소를 한글로 입력해 주세요.</h2>
							<p class="instructions">* 필수 항목</p>
						</div>
						<div class="wrap">
							<div class="flow" style="position: absolute center;">
								<img
									src="https://www.mdsgisprod.co.kr/mdsgis/resources/old/images/order_floww_01.gif"
									width="825" height="100" alt="새로운 주소 추가 단계">
							</div>
							<form id="jibunSform" name="jibunSform" method="post" action="">
								<div id="p_inbox gibun_add" style="margin-left:20px;">
									<p class="tip01">&nbsp;</p>
									<table border="0">
										<tbody>
											<tr>
												<th>지역명</th>
												<td class="area" width="500">
													<span class="add_01">
														<input type="text" id="admin_cty_nm" name="admin_cty_nm" class="input_add" placeholder="지번,도로명,건물명으로 검색해주세요" onkeypress="doIfEnter(event,getBuildList)">
													</span>
													<span class="add_02">
														<button type="button" onclick="getBuidList();" class="btn">검색</button>
													</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</form>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>