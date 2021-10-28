<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "mypage.jsp"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="resources/js/join/datepicker.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  	<div class="container" id="sub-page-content">
   
	 
      <!--main content-->
      <div class="col-md-9">
		<h3 class="title-divider mt_0"><span>주문내역</span> <small>Order History</small></h3>
		<form name="orderHistoryFind" method="post" action="orderHistory.jsp">
		<input type="hidden" value="#회원번호값" name="user_seq">
			<div class="form-group">
									<input type="text" name=start_history id="start_history" maxlength="10" readonly="readonly" /> 
										&nbsp;	-  &nbsp; 
									<input type="text" name="end_history" id="end_history" maxlength="10"  readonly="readonly" />
					&nbsp;&nbsp;&nbsp;<a href="javascript:historySearch()" class="btn btn-md btn-red" >검색</a>
					<table class="table-trackorder">
         <thead class="table_head_trackorder">
            <tr>
               <td class="table_head_td">주문 번호</td>
               <td class="table_head_td">주문 날짜</td>
               <td class="table_head_td">배송지</td>
            </tr>
         </thead>
         <tbody class="table_body_trackorder">
            <tr>
               <td class="table_head_td">주문 번호</td>
               <td class="table_head_td">주문 날짜</td>
               <td class="table_head_td">배송지</td>               
            </tr>
            <tr></tr>
         </tbody>       
      </table>					
						</div>
			<hr>
		</form>
      </div>
     </div>
	  <!-- //content -->
<!--Hidden elements - excluded from jPanel Menu on mobile-->
</html>
</body>