<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp"%>

<div id="container">
	<div class="content">
		<h1 class="hide" data-desc="메인">Main</h1>
		<!-- 
			basicSwiper > swiper ul li li의 업데이트 업데이트 이후 아래 함수 실행
			commonJs.swiperSetup( target ) 함수 실행 타겟은 $('#test1') 아이디나 클래스를 부여해 호출 클래스의 경우 중복인 경우는 순서에 맞춰서 호출해야 하기 때문에
			id를 부여하거나 commonJs.swiperSetup( $('.class:eq(0)') ) , commonJs.swiperSetup( $('.class:eq(1)') )  개별 호출이 필요
		 -->
		<div class="mainEvent basicSwiper">
			<button type="button" class="ctrl prev">이전</button>
			<div class="swiper">
				<ul>
					<li>
						<a href="/kor/promotion/detail.do?page=1&seq=339&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=1007_1955Smoky">
							<img src="https://www.mcdonalds.co.kr/upload/main/banner/1633519760853.png" alt="1955 스모키 더블 베이컨 버거 출시"></a>
					</li>
					<li><a href="/kor/promotion/detail.do?page=1&seq=306&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=1007_McCafe">
							<img src="https://www.mcdonalds.co.kr/upload/main/banner/1633519887333.png" alt=""></a>
					</li>
					<li>
						<img src="https://www.mcdonalds.co.kr/upload/main/banner/1633532684256.png"	alt="맥런치 리힛">
					</li>
					<li>
						<a href="/kor/promotion/detail.do?page=1&seq=338&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=0923_BA2H">
							<img src="https://www.mcdonalds.co.kr/upload/main/banner/1631842026946.png" alt="해피스낵 Q3"></a>
					</li>
					<li>
						<a href="/kor/promotion/detail.do?page=1&seq=336&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=0902_PlumChiller">
							<img src="https://www.mcdonalds.co.kr/upload/main/banner/1630301940217.png" alt="자두 칠러"></a>
					</li>
					<li>
						<a href="/kor/promotion/detail.do?page=1&seq=325&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=0527_TripleCheeseburger">
							<img src="https://www.mcdonalds.co.kr/upload/main/banner/1621833457701.png" alt="트리플치즈버거"></a>
					</li>
					<li>
						<a href="/kor/promotion/detail.do?page=1&seq=317&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=0401_FOF">
							<img src="https://www.mcdonalds.co.kr/upload/main/banner/1617176534703.png" alt=""></a>
					</li>
					<li>
						<a href="/kor/promotion/detail.do?page=1&seq=320&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=0408_Strawberry">
							<img src="https://www.mcdonalds.co.kr/upload/main/banner/1617838609437.png" alt=""></a>
					</li>
				</ul>
			</div>
			<button type="button" class="ctrl next">다음</button>
		</div>

		<!-- //mainEvent -->
		<div class="contArea mainCont">
			<div class="inner">
				<h2 class="titMain">WcDonald's LIVE</h2>
				<ul class="whatsNew" id="menuList">
					<li>
						<a href="#" onclick="goDetail(this)" data-seq="118" data="118,N,/kor/promotion/detail.do?page=1&amp;seq=339&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=1007_1955Smoky">
							<div class="tmb">
								<img src="https://www.mcdonalds.co.kr/upload/main/card/1633520217218.png" alt="1955 버거와 함께 할로윈을 더 특별하게! 1955 스모키 더블 베이컨 컴백!">
							</div>
							<div class="con">
								<strong class="tit">1955 버거와 함께 할로윈을 더 특별하게! <br>1955 스모키 더블 베이컨 컴백!</strong>
							</div>
						</a>
					</li>
					<li>
						<a href="#" onclick="goDetail(this)" data-seq="89" data="89,N,/kor/promotion/detail.do?page=1&amp;seq=306&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0118_Mccafe">
							<div class="tmb">
								<img src="https://www.mcdonalds.co.kr/upload/main/card/1611036026703.png" alt="0.1초에 1잔!   매일 마시는 커피를 더 맛있게"></div>
							<div class="con">
								<strong class="tit">0.1초에 1잔! <br>  매일 마시는 커피를 더 맛있게</strong>
							</div>
						</a>
					</li>
					<li>
						<a href="#" onclick="goDetail(this)" data-seq="117" data="117,N,/kor/promotion/detail.do?page=1&amp;seq=338&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0923_BA2H">
							<div class="tmb">
								<img src="https://www.mcdonalds.co.kr/upload/main/card/1631843671425.png" alt="달콤! 바삭! 쫄깃! 츄러스 출시 새로운 해피 스낵 가을/겨울 시즌 오픈!"></div>
							<div class="con">
								<strong class="tit">달콤! 바삭! 쫄깃! 츄러스 출시 <br>새로운 해피 스낵 가을/겨울 시즌 오픈!</strong>
							</div>
						</a>
					</li>
					<li>
						<a href="#" onclick="goDetail(this)" data-seq="115" data="115,N,/kor/promotion/detail.do?page=1&amp;seq=336&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0902_PlumChiller">
							<div class="tmb">
								<img src="https://www.mcdonalds.co.kr/upload/main/card/1630302197958.png" alt="자두 칠러가 돌아왔다!"></div>
							<div class="con">
								<strong class="tit">자두 칠러가 돌아왔다!</strong>
							</div>
						</a>
					</li>
					<li>
						<a href="#" onclick="goDetail(this)" data-seq="104" data="104,N,/kor/promotion/detail.do?page=1&amp;seq=325&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0527_TripleCheeseburger">
							<div class="tmb">
								<img src="https://www.mcdonalds.co.kr/upload/main/card/1621833597484.png" alt="육즙도 3배! 진한 풍미도 3배! 트리플 치즈버거 출시!"></div>
							<div class="con">
								<strong class="tit">육즙도 3배! 진한 풍미도 3배!<br> 트리플 치즈버거 출시!</strong>
							</div>
						</a>
					</li>
					<li>
						<a href="#" onclick="goDetail(this)" data-seq="97" data="97,N,/kor/promotion/detail.do?page=1&amp;seq=317&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0401_FOF">
							<div class="tmb">
								<img src="https://www.mcdonalds.co.kr/upload/main/card/1617177291038.png" alt="신선한 맛 가득 담아 알래스카에서 왔다!필레 오 피쉬 출시!"></div>
							<div class="con">
								<strong class="tit">신선한 맛 가득 담아 알래스카에서 왔다!<br>필레 오 피쉬 출시!</strong>
							</div>
						</a>
					</li>
				</ul>
				<div class="btnMore" id="btnMore">
					<a href="javascript:more();" class="more" title="더보기">더보기</a>
				</div>
			</div>
		</div>
		<form id="searchForm" name="searchForm" method="get">
			<input type="hidden" name="seq" id="seq"> <input
				type="hidden" name="urlCode" id="urlCode"> <input
				type="hidden" name="linkurl" id="linkurl">
		</form>
	</div>
	<div class="aside">
		<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Wcdelivery</a>
	</div>
	<button type="button" class="btnTop">맨 위로 가기</button>
</div>
<!-- //container -->

<%@ include file="footer.jsp"%>