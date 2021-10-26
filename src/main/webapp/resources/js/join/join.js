function join_chk(){
	var form = document.join_form;

	if (form.checkbox1.checked==false || form.checkbox2.checked==false)	{
		alert("사이트 이용약관과 개인정보 취급방침에 대한 안내를 모두 동의해 주세요.")
		if (form.checkbox1.checked==false){
			form.checkbox1.focus();
			return;
		}else if (form.checkbox2.checked==false){
			form.checkbox2.focus();
			return;
		}
	}else{
		form.submit()
	}
}

function input_chk(){
	var form = document.join_form;
	var introduction = form.introduction.value;
	var introduction = introduction.replace(/^\s*/,'').replace(/\s*$/, ''); 

	if (form.pass_chk_ok.value=="false"){
		alert("패스워드를 확인해주세요");
		form.m_password_chk.focus();
		return;
	}
	
	if (form.m_name.value==""){
		alert("성명을 입력해주세요");
		form.m_name.focus();
		return;
	}

	if (form.m_id.value==""){
		alert("아이디를 입력해주세요");
		form.m_id.focus();
		return;
	}
	
	if (form.m_id.value.length < 4 ){
		alert("4자이상 사용해주시기 바랍니다.");
		form.m_id.focus();
		return;
	}

	if (form.m_password.value==""){
		alert("패스워드를 입력해주세요");
		form.m_password.focus();
		return;
	}

	if (form.m_password_chk.value==""){
		alert("패스워드 확인을 입력해주세요");
		form.m_password_chk.focus();
		return;
	}

	if (form.m_password.value != form.m_password_chk.value){
		alert("입력하신 패스워드가 다릅니다");
		form.m_password_chk.focus();
		return;
	}

	if (form.m_zipcode1.value==""){
		alert("우편번호를 입력해주세요");
		form.m_zipcode1.focus();
		return;
	}

	if (form.m_zipcode2.value==""){
		alert("우편번호를 입력해주세요");
		form.m_zipcode2.focus();
		return;
	}

	if (form.m_address1.value==""){
		alert("주소를 입력해주세요");
		form.m_address1.focus();
		return;
	}	

	if (form.m_address2.value==""){
		alert("주소를 입력해주세요");
		form.m_address2.focus();
		return;
	}	

	if (form.m_email1.value==""){
		alert("이메일주소를 입력해주세요");
		form.m_email1.focus();
		return;
	}	

	if (form.m_email2.value==""){
		alert("이메일주소를 입력해주세요");
		form.m_email2.focus();
		return;
	}	

	if (form.m_email2.value=="E00"){
		if (form.m_email3.value=="")	{
			alert("이메일주소를 입력해주세요");
			form.m_email3.focus();
			return;
		}
	}	

	if (form.m_tel1.value==""){
		alert("집전화번호를 입력해주세요");
		form.m_tel1.focus();
		return;
	}	

	if (form.m_tel2.value==""){
		alert("집전화번호를 입력해주세요");
		form.m_tel2.focus();
		return;
	}	

	if (form.m_tel3.value==""){
		alert("집전화번호를 입력해주세요");
		form.m_tel3.focus();
		return;
	}	

	if (form.m_mobile1.value==""){
		alert("휴대폰번호를 입력해주세요");
		form.m_mobile1.focus();
		return;
	}	

	if (form.m_mobile2.value==""){
		alert("휴대폰번호를 입력해주세요");
		form.m_mobile2.focus();
		return;
	}	

	if (form.m_mobile3.value==""){
		alert("휴대폰번호를 입력해주세요");
		form.m_mobile3.focus();
		return;
	}	

	if (form.m_birth_yy.value==""){
		alert("생년월일을 입력해주세요");
		form.m_birth_yy.focus();
		return;
	}	

	if (form.m_birth_mm.value==""){
		alert("생년월일을 입력해주세요");
		form.m_birth_mm.focus();
		return;
	}	

	if (form.m_birth_dd.value==""){
		alert("생년월일을 입력해주세요");
		form.m_birth_dd.focus();
		return;
	}	

	var sex_chk_count = 0;
	for (k=0;k<form.m_sex.length;k++){
		if (form.m_sex[k].checked == true){
			sex_chk_count ++;
		}
	}
		
	if (sex_chk_count <= 0){
		alert("성별을 선택해주세요");
		return;
	}
	
	var route_chk_count = 0;
	for (k=0;k<form.m_route.length;k++){
		if (form.m_route[k].checked == true)
		{
			route_chk_count ++;
		}
	}
	if (route_chk_count <= 0){
		alert("가입경로를 선택해주세요");
		return;
	}

	if (form.introduction.value==""){
		alert("자기소개를 입력해주세요");
		form.introduction.focus();
		return;
	}

	if (introduction.length < 20 )
	{
		alert("자기소개를 20자 이상 작성하셔야 합니다.");
		form.introduction.focus();
		return;
	}

	form.submit();
}

function photo_up(){
	window.open("/join/photo_up.asp","photo","width=600,height=250");
}

function zip_find(){
	window.open("zip_search.asp","zip_pop","width=600,height=200");
}

function zip_check(){
	document.zip_form.submit();
}


function zip_input(zip_form,i){
	var zipadd = document.zip_form.zipno[i].value
	opener.document.getElementById("m_zipcode1").value = zipadd.substring(0,3)
	opener.document.getElementById("m_zipcode2").value = zipadd.substring(4,7)
	opener.document.getElementById("m_address1").value = zipadd.substring(8,40)
	opener.document.getElementById("m_address2").focus()
	self.close()
}

function imagefile_onchange(){
	var form = document.getElementById("join_form");
	form.preview.src = form.file_name.value;
	form.preview.style.visibility = "visible";
}

function imagefile_onchange_input(){
	opener.document.join_form.m_photo.value = form.file_name.value;
	opener.document.join_form.preview.src = form.file.value;
	opener.document.join_form.preview.style.visibility = "visible";
}

function display_email(member_email2){ 
	for(var i=0; i<member_email2.length;i++){
		if (document.join_form.m_email2.options[i].selected){
			if (document.join_form.m_email2.value=="E00"){
				document.getElementById("toggleB1").style.display = 'inline'; 
				document.join_form.m_email3.focus();
			}else{
				document.getElementById("toggleB1").style.display = 'none'; 
				document.join_form.m_email3.value='';
				old_menu = ''; 
			}
		}
	}
}

function pass_chk(form){
	var pass =document.getElementById("m_password").value;
	var pass_ok = document.getElementById("m_password_chk").value;
	
	if(pass != pass_ok){
		document.getElementById("passchecktxt").innerHTML = "<span class='text-danger'>입력된 패스워드가 다릅니다.</span>";
		document.getElementById("pass_chk_ok").value == "false"
	}else if(pass == pass_ok){
		document.getElementById("passchecktxt").innerHTML = "<span class='text-success'>입력 확인 되었습니다.</span>";
		document.getElementById("pass_chk_ok").value == "true"
	}
}

function file_check(){
	var form = document.getElementById("photo_form");

	if (form.file_name.value.length == 0){
		alert("파일을 업로드해주세요");
		form.file_name.focus();
		return;
	}
	
	var pass_extension = 'gif||jpg||jpeg||bmp||png||GIF||JPG||JPEG||BMP||PNG';
	var file_name = form.file_name.value ;
	var file_arr = file_name.split('.');
	var file_extension = file_arr[file_arr.length-1];
	
	if (pass_extension.indexOf(file_extension) < 0){
		alert("업로드 불가능한 형식의 파일입니다. 확인후 다시 업로드해주세요.");
		form.file_name.select();
		document.selection.clear(); 
		return;
	}
	
	form.submit();
}

function checkOnlyAlphabetNumber(str){
	var checkRe = /^[a-z||A-Z||0-9||48]+$/;
    return checkRe.test(str);
}

function ResutCheckID(form){
	var id = document.getElementById("m_id").value;
	var form = document.getElementById("join_form")
	var result = checkOnlyAlphabetNumber(id);
	
	if (id != '')
	{
		if(result == false)	{
			alert("사용 ID는 영문 또는 숫자만 사용가능합니다");
			form.m_id.value = "";
			form.m_id.focus();
			return false;
		}
	}
	
	
	myAjax = createAjax();
	var toSend = id;
	var url  = "id_check.asp?m_id="+escape(toSend);
	
	myAjax.onreadystatechange = receiveResponse;
	myAjax.open("get",url,true);
	
	myAjax.send(null);
}

function createAjax(){
	if(typeof(ActiveXObject) == "function"){
		return new ActiveXObject("Microsoft.XMLHTTP");
	}else if(typeof(XMLHttpRequest) == "object" || typeof(XMLHttpRequest) == "function"){
		return new XMLHttpRequest();
	}else{
		alert("브라우저가 AJAX를 지원하지 않습니다.");
		return;
	}
}

function receiveResponse(){
	if(myAjax.readyState == 4){
		if(myAjax.status == 200){
			if(myAjax.responseText == "true"){
				//alert("사용가능한 ID입니다.");
				document.getElementById("idchecktxt").innerHTML = "<span class='text-success'>사용가능한 ID입니다.</span>";
			}else{
				//document.getElementById("m_id").value = "";
				document.getElementById("idchecktxt").innerHTML = "<span class='text-danger'>사용할 수 없는 ID입니다.</span>";
			}
		}else{
			//alert("서버에러200 status:"+myAjax.responseXML.status);
		}
	}
}


function member_del2(idx) {
	if (confirm("가입된 정보와 지원했던 내용이 전부 삭제 됩니다. \n탈퇴 하시겠습니까?") == true)
	{
		location.href="/m/appstrap/member_del.asp?idx="+idx+"";
		//document.getElementById("work_frame").src="/mypage/member_del.asp?m_id="+m_id+"&idx="+idx+"";
	}
}