/*---회원가입----*/
$(function(){
	
	//아이디 패스워드 검증하기
    //var re_email = /^[a-zA-Z0-9]{4,16}$/;
    var re_pwd = /^[a-zA-Z0-9]{6,18}$/;
    
$("#m_email").blur(function(){
    var m_email = $("#m_email").val();
   // alert("1차 성공");
	   if (isEmailValid($("#m_email"))==false) {
	        $("#m_email").focus();
  	$("#emailchecktxt").html('<small><strong class="text-danger">잘못된 형식의 이메일 주소입니다.</strong></small>');
	        return false;
        }

        $.ajax({
            type    : "get",
            url     : "emailChk.do",
            data    : {"user_email" : m_email},
			success : function(data){
				
			console.log("중복확인 : " + data);
				
			if(data == 1){
                $("#emailchecktxt").html('<small><strong class="text-danger">사용할 수 없는 이메일 입니다.</strong></small>');
            }else{
                $("#emailchecktxt").html('<small><strong class="text-success">사용가능한 이메일 입니다.</strong></small>');
            }
			},
			error : function(){
				alert("실패");
			}
        })
    });
	

    //비밀번호 체크하는거 
    $("#m_password").keyup(function() {
        $chkLevel = admPwdStrengthChk($(this).val(), $("#m_email").val());
        $("#login_pwd_chk").val($chkLevel);

        $(".pwd_str_msg").hide();
        $(".pwd_str_msg[level='"+$chkLevel+"']").show();
    }); //$("#m_password").keyup
   
    $("#m_password2").focus(function() { $("#pwd_chk_msg2").hide(); });
    $("#m_password2").blur(function() {
        $chk_login_pwd  = $("#m_password").val();
        $chk_login_pwd2 = $(this).val();

        $msgTxt   = "";

        if ($chk_login_pwd  != $chk_login_pwd2 && $.trim($chk_login_pwd2) != "" ) {
            $msgTxt   = "<span class='id_str_msg_x text-danger'><small>[패스워드]와 [패스워드 확인]이 일치하지 않습니다.</small></span><br/>";
            $("#pwd_chk_msg2").html($msgTxt).show();
        }

    }); //$("#m_password2").blur
    
    $login_pwd_str_conf = 0;

//필수입력사항	
$("#join_ok").click(function() {
		 //이메일
        var m_email = ($("#m_email").val()).trim;
        if (m_email=="") {
            alert('이메일주소를 입력해주세요.');
            $('#m_email').focus();
            return false;
        }

        if (isEmailValid("#m_email")==false) {
            alert('잘못된 이메일주소입니다.');
            $("#m_email").focus();
            return false;
        }
       
        //name input
        var m_name = ($("#m_name").val()).trim;
        if (m_name=="") {
            alert('이름을 입력해주세요..');
            $("#m_name").focus();
            return false;
        }

        //password input
        var m_password = ($("#m_password").val()).trim;
        if (m_password=="") {
            alert('패스워드를 입력해주세요..');
            $("#m_password").focus();
            return false;
        }

        //password dual
        var m_password2 = ($("#m_password2").val()).trim;
        if (m_password2=="") {
            alert('패스워드 확인을 입력해주세요.');
            $("#m_password2").focus();
            return false;
        }
		
		//password confirm
		if(m_password != m_password2){
			alert('패스워드가 일치하지 않습니다. 다시 확인바랍니다.');
			$("#m_password2").focus();
            return false;
		}
		
        //m_zipcode, m_address
        var m_zipcode = ($("#m_zipcode").val()).trim;
        var m_address = ($("#m_address").val()).trim;

        if (m_zipcode=="") {
            alert('주소를 검색해주세요.');
            $("#zip_find").focus();
            return false;
        }

        if (m_address=="") {
            alert('주소를 검색해주세요.');
            $("#zip_find").focus();
            return false;
        }

        //휴대폰번호
        /*var m_mobile1 = $("#m_mobile1").val();
        if (m_mobile1=='') {
            alert('휴대폰번호 첫째자리를 입력해주세요.');
            $("#m_mobile1").focus();
            return false;
        }
        
        var m_mobile2 = $("#m_mobile2").val();
        if (m_mobile2=='') {
            alert('휴대폰번호 둘째자리를 입력해주세요.');
            $("#m_mobile2").focus();
            return false;
        }*/
        
        var m_mobile3 = ($("#m_mobile3").val()).trim;
        if (m_mobile3=="") {
            alert('휴대폰번호를 입력해주세요.');
            $("#m_mobile3").focus();
            return false;
        }

        //생년월일
        var m_birth = $("#m_birth").val();
        if (m_birth=="") {
            alert('생년월일을 입력해주세요.');
            $("#m_birth").focus();
            return false;
        }

        //성별
        var m_sex = $(":radio[name='user_gender']:checked").val();
        if (m_sex=="" || m_sex==undefined) {
            alert('성별을 선택해주세요.');
            $("#m_sex1").focus();
            return false;
        }

        $("#join_form").submit();

    });
})
/*----------------------------------------------------------------------------------*/
function admPwdStrengthChk(val, arr_pattern) {

    var chk_str = 0 ;

    if ( (val.length - (val.replace(/[A-Z]/g,"").length ))  > 0 ) {
        chk_str = chk_str + 1;   //대문자 체크
    }
    if ( (val.length - (val.replace(/[a-z]/g,"").length ))  > 0 ) {
        chk_str = chk_str + 1;   //소문자 체크
    }
    if ( (val.length - (val.replace(/[0-9]/g,"").length)) > 0 ) {
        chk_str = chk_str + 1;   //숫자 체크
    }
    if ( (val.length - (val.replace(/\W/g,"").length))  > 0 ) {
        chk_str = chk_str + 1;   //특수문자 체크
    }

    var levelPoint  = 0;

    switch (chk_str) {
        case 4 : levelPoint = 120; break;
        case 3 : levelPoint = 100;  break;
        case 2 : levelPoint = 70;  break;
        case 1 : levelPoint = 50;  break;
    }

    //글자수
    if (val.length < 6) {
        levelPoint = 0;
    } else if ( val.length < 9 ) {
        levelPoint = levelPoint - 20;
    } else if ( val.length < 11 ) {
        levelPoint = levelPoint + 10;
    } else {
        levelPoint = levelPoint + 30;
    }

    // 한 개의 문자,숫자 사용
    if ( isSingle(val) ) {
       levelPoint = levelPoint - 20;
    }

    // 3자리 이상 동일한 문자,숫자
    if (isSame(val, 3)) {
        levelPoint = 0;
    }

    // 3자리 이상 연속된 문자,숫자
    if (isKeyPattern(val)) {
        levelPoint = levelPoint - 20;
    }

    // 연속된 문자,숫자
    if (isContinued(val,2)) {
        levelPoint = levelPoint - 20;
    }

    //특정 문자 포함 여부(아이디,생년월일 등 / 구분자 ',' )
    if (arr_pattern.length > 0 ) {
        var chk_arr = arr_pattern.split("||");

        for ( i=0 ; i < chk_arr.length ; i ++) {
            if ( chk_arr[i].length > 0  && val.indexOf( chk_arr[i] ) >= 0 ) {
                levelPoint = levelPoint - 20;
            }
        }
    }

    var level = "";

    //레벨등급
    if ( levelPoint >= 90 ) {
        level = "3";
    } else if ( levelPoint >= 70 ) {
        level = "2";
    } else if ( levelPoint >= 40 ) {
        level = "1";
    } else {
        level = "0";
    }
    return level;
}

function isSingle(val) {
    var cnt = 1;
    for (var i=0; i<=val.length; i++) {
        if (val.charAt(0)==val.charAt(i+1)) {
            cnt++;
        }
    }

    if (val.length == cnt) {
        return true;
    } else {
        return false;
    }
}

function isSame(val, cnt) {
    var ret  = false;
    var checkStr = ""; // 같은 반복문자 체크(예: aaaa)

    for(var z=1; z<cnt; z++){
        checkStr  += "val.charAt(i) == val.charAt(i + " + z + ")";
        if(z < cnt - 1){
            checkStr  += " && ";
        }
    }

    for(var i=0; i<val.length; i++){
        if(eval(checkStr)){
            ret = true;
            break;
        }
    }

    return ret;
}

function isContinued(val, cnt){
    var ret  = false;
    var checkAsc = "";  // 연속된 오름차순 숫자 혹은 문자(예: abcde)
    var checkDesc = ""; // 연속된 내림차순 숫자 혹은 문자(예: edcba)

    for(var z=1; z<cnt; z++){
        checkAsc  += "(val.charCodeAt(i) + " + z + ") == val.charCodeAt(i + " + z + ")";
        checkDesc += "(val.charCodeAt(i) - " + z + ") == val.charCodeAt(i + " + z + ")";
        if(z < cnt - 1){
            checkAsc  += " && ";
            checkDesc += " && ";
        }
    }

    for(var i=0; i<val.length; i++){
        if(eval(checkAsc) || eval(checkDesc)){
            ret = true;
            break;
        }
    }

    return ret;
}

function isKeyPattern(val) {
    var pt1 = "asdfghjkl";
    var pt2 = "lkjhgfdsa";
    var pt3 = "qwertyuiop";
    var pt4 = "poiuytrewq";
    var pt5 = "zxcvbnm";
    var pt6 = "mnbvcxz";
    var pt7 = "123456789";
    var pt8 = "1234";

    if (pt1.indexOf(val)>=0 || pt2.indexOf(val)>=0 || pt3.indexOf(val)>=0 || pt4.indexOf(val)>=0 || pt5.indexOf(val)>=0 || pt6.indexOf(val)>=0 || pt7.indexOf(val)>=0 || pt8.indexOf(val)>=0) {
        return true;
    } else {
        return false;
    }
}

function isEmailValid(obj){
    var email = $(obj).val();
    var emailFormat = /^([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

    if(email.search(emailFormat) == -1)
        return false;
    return true;
}