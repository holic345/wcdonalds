<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keywords" content="맥도날드">
<meta name="description" content="맥도날드">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<link rel="stylesheet" href="resources/css/faq/faqCommon.css">
<link rel="stylesheet" href="resources/css/faq/faq.css">
<script language="javascript" src="resources/js/faq/faqMain.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/faq/ajax.js"></script>
<script type="text/javascript" src="resources/js/faq/extendedComboBox.js"></script>
<script type="text/javascript" src="resources/js/faq/newUtil.js"></script>
<script type="text/javascript" src="resources/js/faq/customer_common.js"></script>
<!-- <script type="text/javascript" src="/common/js/customer_common.js"></script> -->

<!-- <script type="text/javascript" src="/common/js/ajax.js"></script> -->
<title>자주 찾는 질문과 답</title>
<script type="text/javascript" src="resources/js/faq/jquery-1.7.min.js"></script>
 <script style="text/javascript">
		var mobile_yn = "No";
		if("ontouchend" in document){
			mobile_yn = "Yes";
		}
		
		$( document ).ready(function() {
		    console.log( "ready!" );
		    init();		    
		    
		    $("#category").change( function() {
		    	//alert($("#category option:selected").val());	// 01, 02
		    	 //$("#SELECTED_DATA").val = $("#category option:selected").val();
		    	search($("#category option:selected").val(),'C');
		    	changeColor($("#category option:selected").val());
		    });
	    
		});

</script>
</head>
<body>
	<div class="wrapper">
   		<header class="header">
	        <div class="headArea">
	          <strong class="hLogo">
	            <a href="main.jsp" target="_blank" class="logo" title="메인으로 이동">
	              <img src="resources/wcdonald.png" alt="맥도날드" />
	            </a>
	          </strong>
	          <nav class="hMenu">
	            <ul>
	              <li class="hMenu_li_select">
	                <a href="#" class="depth">FAQ</a>
	              </li>
	              <li>
	                <a href="qna.jsp" class="depth">1:1고객문의</a>
	              </li>
	            </ul>
	          </nav>
	          <!-- menu end -->
	        </div>
	     </header>
	      <!-- header end -->
		<div id="container">
			<div class="content">
				<div class="visualArea1 faqBg">
					<div class="inner">
						<h1 class="titDep1">FAQ</h1>
						<p class="subCopy">
							여러분들은 무엇이 궁금하세요? 질문에 앞서 읽어주세요.<br /> 많은 분들이 궁금해 하시는 내용을 모아놓았습니다.
							원하시는 내용이 없을 경우 1:1 고객문의를 통해 접수해주세요.
						</p>
					</div>
				</div>
				<!-- visualArea end -->
				<div class="contArea">
					<!--div class="inner"-->
					<div class="storeFind">
						<div class="srvcFilter">
							<div class="service">
								<span id="04" class="srvc" onclick="javascript:search('04','C');changeColor('04');teacherCheck();">
									<input type="checkbox" id="1" value="04" disabled /> 
									<label for="1"> 메뉴 
										<span class="icon">
											<img src="https://voc.mcd.co.kr/common/images/icon/ic_burger.png" alt="메뉴" />
										</span>
									</label>
								</span> 
								<span id="01" class="srvc"  onclick="javascript:search('01','C');changeColor('01');">
									<input type="checkbox" id="2" value="01" disabled />
									<label for="2"> 구매 <span class="icon"> 
										<img src="https://voc.mcd.co.kr/common/images/icon/ic_cart.png" alt="카트" />
									</span>
								</label>
								</span> <span id="02" class="srvc"
									onclick="javascript:search('02','C');changeColor('02');">
									<input type="checkbox" id="3" value="Y" disabled /> <label
									for="3"> 매장이용 <span class="icon"> <img
											src="https://voc.mcd.co.kr/common/images/icon/ic_home.png"
											alt="매장이용" />
									</span>
								</label>
								</span> <span id="03" class="srvc"
									onclick="javascript:search('03','C');changeColor('03');">
									<input type="checkbox" id="4" value="Y" disabled /> <label
									for="4"> 맥딜리버리 <span class="icon"> <img
											src="https://voc.mcd.co.kr/common/images/icon/ic_drive.png"
											alt="맥딜리버리" />
									</span>
								</label>
								</span> <span id="05" class="srvc"
									onclick="javascript:search('05','C');changeColor('05');">
									<input type="checkbox" id="5" value="Y" disabled /> <label
									for="5"> 채용 <span class="icon"> <img
											src="https://voc.mcd.co.kr/common/images/icon/ic_search.png"
											alt="채용" />
									</span>
								</label>
								</span> <span id="07" class="srvc"
									onclick="javascript:search('07','C');changeColor('07');">
									<input type="checkbox" id="6" value="Y" disabled /> <label
									or="6"> 프랜차이즈 <span class="icon"> <img
											src="https://voc.mcd.co.kr/common/images/icon/ic_handshake.png"
											alt="프랜차이즈" />
									</span>
								</label>
								</span> <span id="09" class="srvc"
									onclick="javascript:search('09','C');changeColor('09');">
									<input type="checkbox" id="7" value="Y" disabled /> <label
									for="7"> 맥도날드앱 <span class="icon"> <img
											src="https://voc.mcd.co.kr/common/images/icon/ic_mcd.png"
											alt="맥도날드앱" />
									</span>
								</label>
								</span> 
								<span id="08" class="srvc" onclick="javascript:search('08','C');changeColor('08');">
									<input type="checkbox" id="8" value="Y" disabled /> 
									<label	for="8"> 기타 <span class="icon"> 
									<img src="https://voc.mcd.co.kr/common/images/icon/ic_etc.png" alt="기타" />
								</span>
								</label>
								</span>
							</div>
						</div>
						<!-- 검색창 -->
						<div class="faqFind">
							<fieldset class="srchBox">
								<legend>질문 검색</legend>
								<div class="form">
									<div class="selectWrap" id="selectWrap"
										style="z-index: 100000; width: 150px">
										<select name="category" id="category" style="display: block; position: absolute; margin-left: -100000px;">
											<option value="" title="전체">전체</option>
											<option value="01" title="구매">구매</option>
											<option value="02" title="매장이용">매장이용</option>
											<option value="03" title="맥딜리버리">맥딜리버리</option>
											<option value="04" title="메뉴">메뉴</option>
											<option value="05" title="채용">채용</option>
											<option value="07" title="프랜차이즈">프랜차이즈</option>
											<option value="08" title="기타">기타</option>
											<option value="09" title="맥도날드앱">맥도날드앱</option>
										</select>
									</div>
									<form NAME="FNAME" class="realForm" method="post"
										onsubmit="return false;">
										<input type="hidden" name="RG_EMPL_ID" value=""> 
										<input type="hidden" name="FAQ_TYPE_CD" id="FAQ_TYPE_CD" value="">
										<input type="hidden" name="BBS_ID" id="BBS_ID" value="">
										<input type="hidden" name="FAQ_TYPE_CD2" id="FAQ_TYPE_CD2" value=""> 
										<input type="hidden" name="SELECTED_DATA" id="SELECTED_DATA" value=""> 
										<input type="text" placeholder="검색어를 입력해주세요." title="검색어 입력" style="width: 720px"
												name="srchKeyword" id="srchKeyword"	onkeydown="javascript:if (event.keyCode == 13) {search('','S');}"/>
									</form>
									<button type="button" class="btnMC btnM" onclick="search('','S');">검색하기</button>
								</div>
							</fieldset>
						</div>
					</div>
					<!-- //faqFind -->
					<div class="faqResult">
						<ul class="faqToggle" id="faqList">
						</ul>
						<table class="table_faq" style="text-align:center;">
							<tbody>
								<tr>
									<td width="650">
										<div id="LIST_DIV" class="table03">
											<table id="LIST_TB" width="100%" class="table01" cellspacing="1">
												<tbody>
													<tr>
														<th class="colresize" style="cursor: pointer;" width="7%">
															<span onclick="">NO</span>
														</th>
														<th class="colresize" style="cursor: pointer;" width="20%">
															<span
															onclick="javascript:SELECTED_SORT_IDX[2] = 1 ; reqAll(10, 1);">분류</span>
														</th>
														<th class="colresize" style="cursor: pointer;" width="80%">
															<span
															onclick="javascript:SELECTED_SORT_IDX[2] = 2 ; reqAll(10, 1);">제목</span>
														</th>
													</tr>
													<tr id="LIST_TR_ID1"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 0 ;rOver(this.id, 0, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',1);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',0);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">1</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">현금과 카드
															혼합 결제가 가능한가요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID1_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<img src="/common/images/customer/A.gif">
														</td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<font color="#920000">매장을 직접 방문하신 경우에는 구매금액에 대한 카드와
																현금의 혼합 결제가 가능하나, 맥딜리버리 서비스, SOK 이용시에는 불가능합니다.</font>
														</td>
													</tr>
													<tr id="LIST_TR_ID2"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 1 ;rOver(this.id, 1, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',2);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',1);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">2</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">단체 주문이
															가능하나요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID2_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><img
															src="/common/images/customer/A.gif"></td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px; padding-right: 10px;"><font
															color="#920000">단체 주문의 경우 여러 사정에 따라 가능 여부가 다를 수
																있습니다.<br>단체 배달 서비스를 원하실 경우 맥딜리버리 주문 콜센터 1600-5252를 통해
																확인이 가능하며, 가까운 매장에서 방문 구매를 원하실 경우 매장으로 최소 이틀 전 방문 또는 전화 문의
																주시면 확인이 가능 합니다. (홈페이지 &gt; 매장찾기에서 해당 매장 검색)
														</font></td>
													</tr>
													<tr id="LIST_TR_ID3"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 2 ;rOver(this.id, 2, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',3);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',2);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">3</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">현금
															영수증을 발급받지 못했습니다. 어떻게 해야 하나요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID3_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<img src="/common/images/customer/A.gif">
														</td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<font color="#920000"> 매장에서 제품 구매금액 결제 전 고객님이 따로
																요청하시지 않은 경우에는 자동으로 현금영수증 자진발급 처리가 되고 있는 점 고객님의 너그러운 양해
																부탁드립니다. <br>맥도날드에서는 국세청의 자진발급제도에 따라, 거래 당시 현금영수증을
																챙기시지 못한 고객분들도 국세청 홈페이지를 통해 소비자의 거래분으로 전환시키실 수 있기 때문에 고객
																불만을 해소하고 자 맥도날드에서도 현금영수증 자진발급을 시행하고 있습니다. 자진발급을 원하지 않으실 경우
																제품 가격을 결제 전 먼저 현금영수증 발급을 요청해주시면 바로 발급을 해드리고 있습니다.<br>자진발급이
																된 경우 계산 후 수령하신 영수증 내 현금영수증 자동발행 확인번호(010-000-1234)를 국세청
																홈페이지(http://www.taxsave.go.kr )로 접속, <br>자진발급분 사용자등록에
																이 번호를 넣으면 현금영수증 적립이 가능하며,<br>국세청 영수증 상담센터(1544-2020)의
																상담원을 통해서도 전환 요청이 가능하오니 이용에 참조 부탁 드립니다. <br>(현금 영수증 발급
																요청에 대해서는 각 매장 카운터에 위치한 '계산 전 현금영수증 요청'에 대한 안내문을 통해 안내드리고
																있습니다.)
														</font>
														</td>
													</tr>
													<tr id="LIST_TR_ID4"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 3 ;rOver(this.id, 3, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',4);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',3);"
														style="cursor: pointer" class="tractive">
														<td width="7%" align="center">4</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">티 머니,
															마이비 카드 결제가 가능한가요?</td>
													</tr>
													<tr style="display: none;" id="LIST_TR_ID4_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<img src="/common/images/customer/A.gif">
														</td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<font color="#920000">티머니 카드의 경우, 일부 매장을 제외하고 결제
																가능합니다.마이비 카드는 캐시비로 인수되어 신규 마이비 카드의 경우에는 사용이 불가하며 일부 기존 마이비
																카드(카드 앞면에 마이비 기재)만 사용이 가능합니다.기존 마이비 카드 역시 2018년 7월 21일
																이후에는 사용이 어려울 수 있는 점, 이용에 참고 부탁 드립니다. </font>
														</td>
													</tr>
													<tr id="LIST_TR_ID5"
														onmouseover="javascript:SELECTED_ROW_IDX[2] = 4 ;rOver(this.id, 4, LIST_DIV,2);"
														onmouseout="javascript:rOut(this.id,2);"
														onclick="javascript:changeClass(this.id, LIST_DIV,2);tableClickEvent('LIST_ON_CLICK',5);"
														ondblclick="tableClickEvent('LIST_ON_DBL_CLICK',4);"
														style="cursor: pointer" class="">
														<td width="7%" align="center">5</td>
														<td style="text-align: center; padding-left: 0px;">구매</td>
														<td style="text-align: left; padding-left: 5px;">맥모닝
															판매시간은 어떻게 되나요?</td>
													</tr>
													<tr style="display: none" id="LIST_TR_ID5_DT">
														<td
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<img src="/common/images/customer/A.gif">
														</td>
														<td colspan="3"
															style="text-align: left; padding-left: 10px; padding-right: 10px;">
															<font color="#920000">전국적으로 판매되고 있는 맥모닝 세트와 브렉퍼스트
																메뉴는 보다 맛있고 영양적으로도 우수한 다양한 메뉴를 선보이기 위해 저희 맥도날드가 준비한 아침 메뉴이며
																오전 4시부터 오전 10시30분까지는 언제나 맛보실 수 있습니다. (맥딜리버리 이용 시 오전3시50분
																~오전 10시20분) </font>
														</td>
													</tr>
												</tbody>
											</table>
										</div> <!--button type="button" class="btnMC btnM" onclick="morePage('','S');">
							             	 +
							            </button-->
										<div class="btnMore" id="btnMore" style="display: none;">
											<button type="button" class="more" onclick="morePage('','S');">더보기</button>
										</div>
										<div id="LIST_PAGE_DIV" style="dispaly: none"></div>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //faqResult -->
					</div>
				</div>
				<!--/div-->
			</div>
			<div class="side-box">
				<span>고객센터</span> <strong>080.208.1588</strong>
				<p>
					평일 09:00 ~ 18:00<br> (점심시간 12:00 ~ 13:00)
				</p>
			</div>
		</div>
	</div>
<script type="text/javascript">
function teacherCheck() {

	alert("교번을 입력하세요");

}
	
	$(document).ready(function(){ /*??*/
		selectMenu.init();
		doc.find('div.selectWrap').each(function()
		{
			// selectMenu.update( $(this) );
			selectMenu.update( $(this).find('select') );
			$(this).css('z-index',100000)
		});
		var selectMenu = {
				init : function( )
				{
				//console.log("selectMenu");
					$.widget( "custom.customSelect", $.ui.selectmenu, 
					{

						_renderItem: function( ul, item ) 
						{
							var li = $( "<li>" ),
							wrapper = $( "<a>", { text: item.label } );
					
							if ( item.disabled ) {
								li.addClass( "ui-state-disabled" );
							}
							// console.log('--render')
							return li.append( wrapper ).appendTo( ul );
							
						},

						_drawButton: function() 
						{
							var e, i = this, s = this._parseOption(this.element.find("option:selected"), this.element[0].selectedIndex);
							this.labels = this.element.labels().attr("for", this.ids.button),
							// console.log('xxx', '',this )

							this._on(this.labels, {
								click: function(t) {
									this.button.focus(),
									t.preventDefault()
								},
							}),
							this.element.hide(),
							this.button = t("<button>", {
								tabindex: this.options.disabled ? -1 : 0,
								id: this.ids.button,
								// role: "combobox",
								"aria-expanded": "false",
								"aria-autocomplete": "list",
								"aria-owns": this.ids.menu,
								"aria-haspopup": "true",
								title: this.element.attr("title")
							}).insertAfter(this.element),
							this._addClass(this.button, "ui-selectmenu-button ui-selectmenu-button-closed", "ui-button ui-widget"),
							
							// 변경
							// e = t("<label>").appendTo(this.button),
							// this._addClass(e, "ui-selectmenu-icon", "ui-icon " + this.options.icons.button),
							// 변경

							this.buttonItem = this._renderButtonItem(s).appendTo(this.button),
							this.options.width !== !1 && this._resizeButton(),
							this._on(this.button, this._buttonEvents),
							this.button.one("focusin", function() {
								i._rendered || i._refreshMenu()
							})
							
						},

						// _setAria: function(t) 
						// {
							// var e = this.menuItems.eq(t.index).attr("id");
							// this.button.attr({
								// "aria-labelledby": e,
								// "aria-activedescendant": e
							// })
							// this.menu.attr("aria-activedescendant", e)
						// },

						_renderButtonItem: function( item ) 
						{
							var buttonItem = $( "<span>", {
								"class": "ui-selectmenu-text"
							});
							this._setText( buttonItem, item.label );
							// console.log('--xxx')
							// console.log( this.element.parent() )
							this.element.parent().find('>button').attr('tabindex','-1');
							this.element.parent().find('.ui-selectmenu-menu').attr('tabindex','-1');
							return buttonItem;
						}
					});

				}
		},
		update:function( target )
		{
			// console.log('--00')
			var select = target;


			if( select.data('selectBox') ){
				select.customSelect( "refresh" );

				// console.log('updatelll')
			}else{
				var opt = {
					appendTo	:	select.parent(),
					select		:	function( event, ui ) {
						// console.log('===')
						select.trigger('select');
						var list = select.parent().find('.ui-menu-item');
						list.find('a').removeAttr('aria-selected');
						list.eq(ui.item.index).find('a').attr('aria-selected',true);
					},
					close : function(){
						select.trigger('close');
						$(this).closest('.selectWrap').attr('style','z-index:10 !important');
					},
					change		:	function( event, ui ) {
						select.trigger('change');
					},
					open : function(){
						select.trigger('open');
						$(this).closest('.selectWrap').attr('style','z-index:11 !important');
					}
				}
				if( select.attr('style') ){
					var w = parseInt(select.attr('style').replace('width:','250px'));
					opt.width = w;
				}

				select.customSelect( opt );
				select.data('selectBox',true);

				select.one('close',function()
				{
					select.parent().find('.ui-menu-item').eq(select[0].selectedIndex).find('a').attr('aria-selected',true);
				});
				// var m = select.customSelect('instance');
				select.one('open',function()
				{
					var a = select.parent().find('.ui-menu-item a');
					a.removeAttr('tabindex');
					a.on('click',function()
					{		
					}) 
				})
				// console.log('xx ',select.parent().find('>button').length)
				
				select.css({
					display:'block',
					position:'absolute',
					// top:'100px'
					'margin-left' : '-100000px'
				})
				
				var parent = select.parent();
				select.on('focus' , function()
				{
					parent.addClass('focusLine')
				})
				select.on('focusout' , function()
				{
					parent.removeClass('focusLine')
				})

				select.on('change',function(){
					// console.log('xxx')
					select.customSelect( "refresh" );
					
				})
			}
		},

	}

	});
	
</script>

<%@ include file="footer.jsp"%>