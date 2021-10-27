<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="mypage.jsp"%>
<link rel="stylesheet" href="resources/css/address/addressupdate.css">
		<div class="col-md-3 sidebar">
		<div class="page-title">
			<h1>주소 추가하기</h1>
		</div>
		<div class="page-content">
			<div class="panel-group panel-lg panel panel-default">
				<div class="panel-heading">
					<h3>새로운 주소 추가</h3>
				</div>
				<div class="panel-body">
					<form method="post" role="form" class="form form_deliveryaddress" id="form_deliveryaddress" data-required-symbol="*" action="/kr/addAddress.html" novalidate="novalidate">
					
															
						<fieldset class="fieldset">

	

<div class="fieldset-heading">
		<h2 class="fieldset-title">배달 받을 주소를 한글로 입력해 주세요.</h2>
		<p class="instructions">* 필수 항목</p>
		
</div>
<div class="iframe">
<input type="hidden" name="addressType" id="addressType" value="2">
<input type="hidden" name="wosCity" id="wosCity" value="">
<input type="hidden" name="wosSuburb" id="wosSuburb" value="">
<input type="hidden" name="wosDistrict" id="wosDistrict" value="">
<input type="hidden" name="wosGarden" id="wosGarden" value="">
<input type="hidden" name="wosState" id="wosState" value="">
<input type="hidden" name="wosStreet" id="wosStreet" value="">
<input type="hidden" name="wosStreetType" id="wosStreetType" value="">
<input type="hidden" name="wosArea" id="wosArea" value="">
<input type="hidden" name="wosStreetLonNo" id="wosStreetLonNo" value="">
<input type="hidden" name="wosBldg" id="wosBldg" value="">
<input type="hidden" name="wosBlock" id="wosBlock" value="">
<input type="hidden" name="wosLevel" id="wosLevel" value="">
<input type="hidden" name="wosUnit" id="wosUnit" value="">
<input type="hidden" name="wosHouseNo" id="wosHouseNo" value="">
<input type="hidden" name="wosCompanyName" id="wosCompanyName" value="">
<input type="hidden" name="wosDepartment" id="wosDepartment" value="">
<input type="hidden" name="wosRemarks" id="wosRemarks" value="">
<input type="hidden" name="wosLatitude" id="wosLatitude" value="">
<input type="hidden" name="wosLongitude" id="wosLongitude" value="">
<input type="hidden" name="wosLandmark" id="wosLandmark" value="">
<input type="hidden" name="wosZipCode" id="wosZipCode" value="">
<input type="hidden" name="wosPhoneNo" id="wosPhoneNo" value="">
<input type="hidden" name="wosPhoneNoExtn" id="wosPhoneNoExtn" value="">
<input type="hidden" name="wosOneLineAddr" id="wosOneLineAddr" value="">
<input type="hidden" name="jsonEditAddressRequest" id="jsonEditAddressRequest" value="{&quot;RequestID&quot;:1,&quot;Language&quot;:&quot;ko-KR&quot;,&quot;Body&quot;:&quot;&quot;,&quot;ExternalMarketCode&quot;:&quot;KR&quot;,&quot;Application&quot;:&quot;WOI&quot;,&quot;MessageType&quot;:1}">


<iframe style="width:100%;" frameborder="0" id="apaFrame" scrolling="no" src="https://www.mdsgisprod.co.kr/mdsgis/wWosOrderingZip.action"> Inside Iframe</iframe>
</div>
<script type="text/javascript">
/*<![CDATA[*/
jQuery(function($) {
var addressForm;
var apaFrame;
var wosFields;

$(document).ready(function() {
	addressForm = $("#form_deliveryaddress");
	apaFrame = $("#apaFrame");
	wosFields = addressForm.find("input [type=\"hidden\"][id*=\"wos\"]");
	
	// ??? Need to convince the below
	var jsonEditAddressRequest= $('#jsonEditAddressRequest');
	$(document).data("formUpdated", false);
	
	addressForm.delegate("#btnSave, #submit_button, #submit_button2","click", function(e) {
		console.log("Submit button clicked");
		if (apaFrame.length == 0) {
			return true;
		}
		e.preventDefault();
		// TODO: review the below postMessage
		apaFrame[0].contentWindow.postMessage("{ \"RequestID\":1, \"MessageType\":5, \"Body\":\"\", \"ExternalMarketCode\":\"${externalMarketCode}\", \"Application\":\"WOI\", \"Language\":\"${iETFLanguage}\" }","*"); 

		var formUpdateCheck = setInterval(function() {
			if ($(document).data("formUpdated") == true) {
				window.clearInterval(formUpdateCheck);
				$(e.target)[0].form.submit();
				//addressForm.submit();								
			}
		}, 50);
		return false;
	});
	
	$("#apaFrame").ready(function () {
		var intervalChk = setInterval(function() {
			if (document.readyState == "complete") {
				$("#apaFrame")[0].contentWindow.postMessage($('#jsonEditAddressRequest').val(),"*");
				window.clearInterval(intervalChk);
			}
		}, 50);
	});
		$(window).bind("message", function(e) {
			
				var data = JSON.parse(e.originalEvent.data.replace(/\n/g,"\\n"));
				console.log("APA DATA: "+data);
				if (data.ResultCode == 1 && data.MessageType == 3) { 
					clearWosFields();	
					
					var apaBody  = JSON.parse(data.Body.replace(/\n/g,"\\n"));
					var addressElements = apaBody.AddressElements; 
					for (n = 0; n < addressElements.length; n++) {
						var element = addressElements[n];

						var txtWosField = getWosAddressField(element.AddressElementTypeCode);
						var aliases = element.Value;

						for (i = 0; i < aliases.length; i++) { 
							var alias = aliases[i];

							if (alias.AliasTypeCode == 1) {
								$("#" + txtWosField).val(alias.Alias);	
								console.log(txtWosField+"="+alias.Alias);	
								break;
							} else {
								continue;
							}
						}			
					}
					$(document).data("formUpdated", true);
					//addressForm[0].submit();

					
				} else {
					console.log(e.originalEvent.data);
					console.log("return code failed");
				}		
			});
});
 	
 	var getWosAddressField = 
    	function (addressCode) {
    		switch (addressCode) {
    			case 1: return "wosArea";
    			case 2: return "wosBldg";
    			case 3: return "wosCity";
    			case 4: return "wosCompanyName";
    			case 5: return "wosDepartment";
    			case 6: return "wosDistrict";
    			case 7: return "wosGarden";
    			case 8: return "wosState";
    			case 9: return "wosStreet";
    			case 10: return "wosStreetType";
    			case 11: return "wosSuburb";
    			case 12: return "wosZipCode";
    			case 13: return "wosBlock";
    			case 14: return "wosLevel";
    			case 15: return "wosUnit";
    			case 16: return "wosHouseNo";
    			case 19: return "wosFormatPref";
    			case 20: return "wosStreetLonNo";
    			case 21: return "wosRemarks";
    			case 22: return "wosLatitude";
    			case 23: return "wosLongitude";
    			//case 24: return "wosIsRedZone";
    			//case 25: return "wosIsAmberZone";
    			case 26: return "wosLandmark";
    			case 27: return "wosPhoneNo";
    			case 28: return "wosPhoneNoExtn";
    			case 29: return "wosOneLineAddr";
    			default: console.log("addresCode "  + addressCode  + " not found"); return "";
    		}
    	};
    	
    	function clearWosFields() {
    		wosFields.each(function(){
    			$(this).val("");
    		});
    	}

});
/*]]>*/
</script>

</fieldset>
						<input type="hidden" name="addressKey" id="addressKey" value="">
						<div id="next_submit_button" style="display: none;">
							<fieldset class="fieldset form-actions">
										<div class="form-group">
												<button type="button" id="address_btnNext" class="btn btn-red btn-lg btn-submit">Next</button> 
										</div>
										<div class="form-group">
											<a class="h5 text-default text-ucase btn-back" href="/kr/addressBook.html"><i class="text-primary fa fa-caret-left"></i> <span>뒤로 가기</span></a>
											
										</div>
							</fieldset>
						</div>
						<div id="save_submit_button">
						<fieldset class="fieldset form-actions">
								<div class="form-group">
									<button type="submit" id="submit_button" name="submit_button" class="btn btn-red btn-lg btn-submit">주소록에 추가</button> 
								</div>
								<div class="form-group">
									<a class="h5 text-default text-ucase btn-back" href="/kr/addressBook.html"><i class="text-primary fa fa-caret-left"></i> <span>뒤로 가기</span></a>
									
								</div>
						</fieldset>
						</div>
					<input type="hidden" name="csrfValue" value="22bffbfe30c6ba48859d5026d6ad7c7f"></form>
				</div>
			</div>
			
		</div>
	</div>
					
				</div>
			</div>
<%@ include file="footer.jsp"%>