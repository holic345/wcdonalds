<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/member/header.jsp"%>

<script type="text/javascript" src="resources/js/popup.js"></script>
<script type="text/javascript" src="resources/js/libs.js"></script>
<script type="text/javascript" src="resources/js/KmcCert.js"></script>
</head>
<body>
	<div class="content">
		<div class="visualArea bgWhats01">
			<div class="inner">
				<h1 class="titDep1" data-title="윈딜리버리 프로모션" data-desc="윈딜리버리 프로모션">윈딜리버리 프로모션</h1>
				<ul class="navPath">
					<li><a href="/controller/main.do">Home</a></li>
					<li><a href="/controller/list.do">What's New</a></li>
					<li><a href="/controller/list.do">윈딜리버리 프로모션</a></li>
				</ul>
			</div>
		</div>
		<!-- //visualArea -->
		<div class="contArea bgG">
			<div class="inner">
				<ul class="tabType01">
					<li><a href="javascript:getList(1,'');" id="all" role="button">전체보기</a></li>
					<!-- 선택 된 태그에 aria-selected="true" 추가 -->
					<li><a href="javascript:getList(1,'I')" id="ing" role="button">진행중</a></li>
					<li><a href="javascript:getList(1,'E')" id="end" role="button">종료</a></li>
				</ul>
				<!-- 행사 있을 경우 종료된 행사일 경우 class값 end 추가-->
				<ul class="cardBanner" id="promotionList">

				</ul>
				<div class="btnMore" id="btnMore">
					<a href="javascript:more();" class="more">더보기</a>
				</div>
				<!-- //행사 있을 경우-->
				<!-- 행사 없을 경우 -->

				<!-- //행사 없을 경우 -->
			</div>
		</div>
		<!-- //contArea -->
	</div>
	<div class="aside">
		<a href="/controller/main.do" class="goDelivery"
			target="_blank" title="새창 열림">Mcdelivery</a>
	</div>
	<form id="searchForm" name="searchForm" method="post">
		<input type="hidden" name="page" id="page" value="1"> <input
			type="hidden" name="seq" id="seq"> <input type="hidden"
			name="searchStatus" id="searchStatus"> <input type="hidden"
			name="urlCode" id="urlCode">
	</form>

	<script type="text/javascript">
		var init_page =0;
		var totalPage =0;
		var page_status = "";
		
		var isCertificate = false;
		
		$(document).ready(function (){
			getList(1,'');
		});
		
		function getList(page_val,status){
			$.post("/kor/promotion/listContent.do",
					{	
						page:page_val,
						searchStatus: status
						
					},	function(data){
						if(data.is_ok=="ok"){
							if(page_status!=status){
							$("#promotionList").empty();
							}
							totalPage=data.totalPage;
							init_page=data.page;
							page_status = data.status;
							
							
							if(data != null && data != ''){
							for(var i=0;i<data.list.length;i++){
								
								if(data.list[i].status_text=="E"){
									data.list[i].end="end";
									data.list[i].end_text = "종료된 행사입니다.";
								}else{
									data.list[i].end="";
									data.list[i].end_text = "";
								}
								$("#promotionList").append(addList(data.list[i]));
							}
							}else{
								$("#promotionList").append(addList());
							}
							altEscapeTag();
							if(totalPage==page_val){
								$("#btnMore").hide();
							}else{
								$("#btnMore").show();
							}
							if(status==''){
								$('#all').attr('aria-selected','true');
								$('#end').attr('aria-selected','false');
								$('#ing').attr('aria-selected','false');
								
							}else if(status == 'I'){
								$('#all').attr('aria-selected','false');
								$('#end').attr('aria-selected','false');
								$('#ing').attr('aria-selected','true');
							}else if (status =='E'){
								$('#all').attr('aria-selected','false');
								$('#end').attr('aria-selected','true');
								$('#ing').attr('aria-selected','false');
							}else{
								alert("잘못된 접근입니다.");
							}
							if(page_val>1){
								$("[data-seq='"+data.list[0].seq+"']").focus();
							}
						}else{
							alert("목록가져오기에 실패하였습니다\관리자에게 문의하세요");
						}
					}
			);
		}
		function addList(data){
			/*if(data.status == "E"){
				
				document.getElementById("listPromotion").add("end")
				;
				
				document.getElementById("statusSpan").innerHTML = "종료된 행사입니다.";
				
			}*/
			return makeHtml("promotion",data);
		}
		function addList2(data){ 
			return makeHtml("promotionNull",data);
		}
		function more(){
			getList(init_page+1,page_status);
		}
		
		function goDetail(element){	
		    var data = $(element).attr("data").split(",");
		    var form_data = KmcCert.getUrlCode(data[0],"json");
		
		    $("#seq").val(data[0]);
		    $("#urlCode").val(form_data["urlCode"]);
		    $("#searchStatus").val(page_status);
		
		    var certification = data[2];
		    if(certification !== "N" && isCertificate ){
		        certification = "N";
		    }
		
			if(certification !== "N"){
			    var certPopup = window.open('about:blank','certviewer','width=846,height=700,scrollbars=no,resize=no');
				certPopup.resizeTo(846,700);
		        $("#searchForm").attr("action", "/cert/popup.do");
		        $("#searchForm").attr("target", "certviewer");
		    } else {
		    	$("#searchForm").attr("target", "");
		        $("#searchForm").attr("action","/kor/promotion/detail.do");
		    }
		    $("#searchForm").submit();	
		}
		
		function certificate(){
			isCertificate = true;
			$("#searchForm").attr("target", "");
		    $("#searchForm").attr("action","/kor/promotion/detail.do");
		    $("#searchForm").submit();	
		}
		
	
	</script>

	<script id="promotion" type="text/template">
<li>
	<a href="#" onclick="goDetail(this)" class="{end}" data="{seq},{rnum},{certification}">
		<div class="tmb"><img src="{pc_kor_image_url}" alt="{pc_kor_alt}"></div>
		<div class="con">
			<strong class="tit">{pc_kor_alt}</strong><span id="statusSpan">{end_text}</span>
		</div>
	</a>
</li>
</script>
	<script id="promotionNull" type="text/template">
<p class="noResult commingSoon">진행중인 이벤트가 없습니다.</p>
</script>
	<div class="aside">
		<a href="/controller/main.do" class="goDelivery"
			target="_blank" title="새창 열림">Mcdelivery</a>
	</div>
	<button type="button" class="btnTop">맨 위로 가기</button>
	<!-- //container -->
	<%@ include file="WEB-INF/member/footer.jsp" %>
	<div class="popLayer layerL layerType02" id="storeSearch">
		<div class="layCont">
			<div class="scroll storeSch">
				<div class="schTop">
					<h2 class="popTit">주방 공개의 날/쿠킹 클래스 운영매장</h2>
					<fieldset class="schArea">
						<legend>매장검색</legend>
						<div class="field01">
							<div class="formWrap">
								<label for="store01">시/도</label>
								<div class="selectWrap">
									<select title="시/도 선택" id="store01" style="width: 200px"
										onchange="getGugunJsonp()">
										<option value="">전체</option>
										<option value="서울">서울</option>
										<option value="경기도">경기도</option>
										<option value="강원도">강원도</option>
										<option value="광주">광주</option>
										<option value="경상남도">경상남도</option>
										<option value="경상북도">경상북도</option>
										<option value="대전">대전</option>
										<option value="대구">대구</option>
										<option value="부산">부산</option>
										<option value="인천">인천</option>
										<option value="울산">울산</option>
										<option value="제주">제주</option>
										<option value="전라남도">전라남도</option>
										<option value="전라북도">전라북도</option>
										<option value="충청남도">충청남도</option>
										<option value="충청북도">충청북도</option>
									</select>
								</div>
							</div>
							<div class="formWrap">
								<label for="store02">시/군/구</label>
								<div class="selectWrap">
									<select title="시/군/구 선택" id="store02" style="width: 200px">
										<option value="">전체</option>
									</select>
								</div>
							</div>
						</div>
						<div class="field02">
							<span class="formWrap"> <label for="store03">매장</label> <input
								type="text" id="store03" placeholder="ex)안양">
								<button type="button" class="btnMC btnM"
									onclick="getStoreList()">검색</button>
							</span>
						</div>
					</fieldset>
					<p class="notiTxt">검색이 되지 않는 매장은 다음 달에 행사 계획이 없는 매장입니다.</p>
				</div>
				<div class="schCon">
					<!-- 지도영역 -->
					<div id="storePopMap" class="map"></div>
					<!-- //지도영역 -->
					<!-- 검색결과 있음-->
					<div class="result" id="storeS">
						<ul id="storePopListUl">

						</ul>
					</div>
					<!-- //검색결과 있음-->
					<!-- 검색 결과 없음 -->
					<p class="noResult" id="storeN" style="display: none;">
						<b class="color01" id="searchWordShow"></b>에 대한 검색결과가 없습니다.
					</p>
					<!-- 검색 결과 없음 -->
				</div>
			</div>
		</div>
		<!-- //.layCont-->
		<div class="btnArea">
			<button type="button" class="btnMC btnM" onclick="selectStorePop()">선택완료</button>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
</body>
</html>