<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "mypage.jsp"%>
<style>
.table-panel td, .table-panel th {
    padding: 15px 24px;
    border: 1;
    /* width: 0px; */
    border-bottom: 1px solid #bcbcbc;
   
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
.table-addressbook .address-number {
    font-family: "Din Black",sans-serif;
    /* font-size: 24px; */
    font-size: 1.5rem;
    width: 5%;
    
}
.table-default td, .table-default th {
    /* vertical-align: top; */
     
}
.table-addressbook tfoot .actions, .table-mycards .controls, .table-mycards tfoot .actions {
    text-align: right;
    width: 100%;
    border-bottom: 1px solid #bcbcbc;
}

</style>

<div class="col-md-9">
<h3 class="title-divider mt_0"><span>MyPage</span> <small>MyPage</small></h3>

<div class="page-content">
			<table class="table-default table-panel table-addressbook">
				<thead>
					<tr>
						<th scope="colgroup" colspan="2"><h3>주소</h3></th>
						<th scope="col"><h3>배달 시 유의사항</h3></th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tfoot>
					<td colspan="4" class="actions">
						<a class="btn btn-red btn-lg" href="/kr/address.html">새로운 주소 추가</a>		
						<a class="btn btn-red btn-lg" href="/kr/home.html">메인화면으로 이동</a>
					</td>
				</tfoot>
				<tbody>
					<tr>
						<td class="address-number">1</td>
						<td class="address-details">
							<div>주소 가져오기</div>
							<!-- <div th:text="${addressEntry.street}">Address Line 2</div>
							<div th:text="${addressEntry.Unit}">Address Line 3</div>
							<div th:text="${addressEntry.building}">Address Line 4</div>
							<div th:text="${addressEntry.zipCode}">Address Line 5</div> -->
						</td>
						<td class="special-instructions"></td>
						<td class="controls">
						 <a class="text-gray-light" href="/kr/address.html?addressType=1" title="주소 변경하기"><i class="fa mcd mcd-edit icon"></i></a>
						 
						 </td>
					</tr>
					<!-- <tr>
						<td class="address-number">1</td>
						<td class="address-details">
							<div>Address Line 1</div>
							<div>Address Line 2</div>
							<div>Address Line 3</div>
						</td>
						<td class="special-instructions">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quidem vitae mollitia commodi corporis suscipit esse laboriosam blanditiis labore minus.</td>
						<td class="controls"><a href="/index.php?r=site/page&amp;view=account-edit-address" class="text-gray-light"><i class="fa mcd mcd-edit icon"></i></a> <a href="" class="text-gray-light"><i class="fa mcd mcd-remove icon"></i></a></td>
					</tr>
					<tr>
						<td class="address-number">2</td>
						<td class="address-details">
							<div>Address Line 1</div>
							<div>Address Line 2</div>
							<div>Address Line 3</div>
						</td>
						<td class="special-instructions">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quidem vitae mollitia commodi corporis suscipit esse laboriosam blanditiis labore minus.</td>
						<td class="controls"><a href="/index.php?r=site/page&amp;view=account-edit-address" class="text-gray-light"><i class="fa mcd mcd-edit icon"></i></a> <a href="" class="text-gray-light"><i class="fa mcd mcd-remove icon"></i></a></td>
					</tr> -->
				</tbody>
			</table>
		</div>
	
</div>
</div>
</div>

<%@ include file = "footer.jsp"%>
