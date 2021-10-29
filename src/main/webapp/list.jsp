<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<div id="container">
		<div class="content">
			<div class="visualArea bgMenu01">
					<div class="inner">
						<h1 class="titDep1">버거</h1>
						<p class="subCopy">빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub> 상하이버거까지, <br>주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.</p>
						<ul class="navPath">
							<li><a href="/">Home</a></li>
							<li><a href="javascript:gotoMenu(1);">Menu</a></li>
							<li><a href="javascript:gotoMenu(1);">버거</a></li>
						</ul>
					</div>
				</div>
    			<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li data-title="버거" data-desc="버거메뉴"><a href="javascript:gotoMenu(1);" role="button" aria-selected="true">단품메뉴</a></li><!-- 선택 된 태그에 aria-selected="true" 추가 -->
							<li><a href="javascript:gotoMenu(2);" role="button">세트메뉴</a></li>
						</ul>
						<div class="mcMenu">
							<p class="count" id="count">21 Products</p>
							<ul class="menuList" id="menuList">
								<li>
									<a href="javascript:goDetail(300)" data-seq="300">
										<div class="thum">
											<img src="https://www.mcdonalds.co.kr/upload/product/pcList/1633520381157.png" alt="1955 스모키 더블 베이컨">
										</div>
										<div class="name">
											<strong class="ko">1955 스모키 더블 베이컨</strong>
											<em class="en">1955 Smoky Double Bacon</em>
											<button style="background-color:#ffbc0d; color:white; margin : 8px 0 0 200px; border-radius:25px; width:90px;"><h4>주문하기</h4></button>
										</div>
									</a>
								</li>
								<li>
									<a href="javascript:goDetail(396)" data-seq="396">
										<div class="thum">
											<img src="https://www.mcdonalds.co.kr/upload/product/pcList/1624844044781.png" alt="슈니언 버거">
										</div>
										<div class="name">
											<strong class="ko">슈니언 버거</strong>
											<em class="en">Shrimp Onion Burger</em>
										</div>
									</a>
								</li>
								<li>
									<a href="javascript:goDetail(387)" data-seq="387">
										<div class="thum">
											<img src="https://www.mcdonalds.co.kr/upload/product/pcList/1621834836862.png" alt="트리플 치즈버거">
										</div>
										<div class="name">
											<strong class="ko">트리플 치즈버거</strong>
											<em class="en">Triple Cheeseburger</em>
										</div>
									</a>
								</li>
								<li>
									<a href="javascript:goDetail(15)" data-seq="15">
										<div class="thum">
											<img src="https://www.mcdonalds.co.kr/upload/product/pcList/1583727841393.png" alt="빅맥®">
										</div>
										<div class="name">
											<strong class="ko">빅맥<sub class="reg">®</sub></strong>
											<em class="en">Big Mac<sub class="reg">®</sub></em>
										</div>
									</a>
								</li>
								<li>
									<a href="javascript:goDetail(19)" data-seq="19">
										<div class="thum">
											<img src="https://www.mcdonalds.co.kr/upload/product/pcList/1583728339451.png" alt="맥스파이시® 상하이 버거">
										</div>
										<div class="name">
											<strong class="ko">맥스파이시<sub class="reg">®</sub> 상하이 버거</strong>
											<em class="en">WcSpicy<sub class="reg">®</sub> Shanghai Burger</em>
										</div>
									</a>
								</li>
								<li>
									<a href="javascript:goDetail(1)" data-seq="1">
										<div class="thum">
											<img src="https://www.mcdonalds.co.kr/upload/product/pcList/1599119588089.png" alt="1955 버거™">
										</div>
										<div class="name">
											<strong class="ko">1955<sub>®</sub> 버거</strong>
											<em class="en">1955<sub>®</sub> Burger</em>
										</div>
									</a>
								</li>
							</ul>
							<div class="btnMore" id="btnMore">
								<button type="button" class="more" onclick="more()">더보기</button>
							</div>
						</div>
					</div>
				</div>
			 <form id="searchForm" method="post">
				<input type="hidden" name="page" id="page" value="1">
				<input type="hidden" name="seq" id="seq">
				<input type="hidden" name="sub_category_seq" id="sub_category_seq" value="1">
			</form>
		</div>
		<div class="aside">
			<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">CART</a>
		</div>
		<button type="button" class="btnTop">맨 위로 가기</button>
	</div>
<script type="text/javascript">
	function goDetail(seq) {
		$('#seq').val(seq);
		$('#searchForm').attr("action","detail.jsp");
		$('#searchForm').submit();
	}
</script>
<%@ include file="footer.jsp" %>