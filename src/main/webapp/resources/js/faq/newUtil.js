/************************ ���ڿ� �Լ� ************************/

/**
 * �ش繮�ڿ��� �ش���̱�����ŭ�� �����´�.
 * @param {Number} len  �����ְ��� �ϴ� �ڸ�����
 * @return {String}  �ش���̸� �����Ѵ�.
 * 
 * ex)  alert("1234".cut(2) );        ��� 12
 */
String.prototype.cut = function(len) 
{
 var str = this;
 var l = 0;
 for (var i=0; i<str.length; i++) {
  l += (str.charCodeAt(i) > 128) ? 2 : 1;
  if (l > len) return str.substring(0,i);
 }
 return str;
}


/**
 * ���ڿ� �հ� ���� ������ �����. 
 * @return {String} ������ ������ ���ڿ� 
 * 
  * ex)  alert("����"+("  1234  ".trim()  + "����"  )  );      ��� ����1234����
 */
String.prototype.trim = function()
{
 return this.replace(/(^\s*)|(\s*$)/g, "");
}

/**
 * String �� ����Ʈ���� ���Ѵ�.
 * @return {Number} ����Ʈ�� (�ѱ� 2byte ���� 1byte)
 * 
 * ex) alert(  "������1234".getBytes()  );     ��� 10
 */
String.prototype.getBytes = function() 
{
    var str = this;
    var l = 0;
    for (var i=0; i<str.length; i++) l += (str.charCodeAt(i) > 127) ? 2 : 1;
    return l;
}
    
/**
 * ���ڿ��� Ư�����ڸ� ����� ���ǹ��ڷ� ġȯ�Ѵ�.
 * @param {String} str1  ���� ����
 * @param {String} str2  �ٲٷ��� ���� 
 * @classDescription String.trim()�� �������̴�.
 * 
 * ex) alert(  "foxfox".replaceAll("f","b")  );     ��� boxbox
 */
String.prototype.replaceAll = function(str1, str2)     
{
    var temp_str = "";
    if (this.trim() != "" && str1 != str2) {
        temp_str = this.trim();
        while (temp_str.indexOf(str1) > -1){
            temp_str = temp_str.replace(str1, str2);
        }
    }
    return temp_str;
}
    

/**
 * ���ڿ����� Ư�����ڸ� ������ ���ο� ���ڿ��� �����.
 * @param {String} str ���� ���ڿ�
 * @param {String} ch �����ؾ��� ����
 * @return {String}�������ڿ����� ���ŵ� ���ڿ�
 *  ex) alert(  delChar('12XX4','X')  );  ����� 124
 *  
 */
function delChar(str, ch)
{
	 var len = str.length;
	 var ret = "";
	 for (i=0; i<len; ++i)
	 {
	  if (str.substring(i,i+1) != ch)
	   ret = ret + str.substring(i,i+1);
	 }
 
 return ret;
}


/**
 * ���ڿ����� ������ ������ �����Ѵ�.
 * @param {String} str ������ �ִ� �������ڿ�
 * @return {String} ���ʰ����� ���ŵ� ���ڿ�
 *  ex) alert(  lTrim('    123')  );  ����� 123
 */
function lTrim(str)
{
  var i;
  i = 0;
  while (str.substring(i,i+1) == ' ' || str.substring(i,i+1) == '��')  i = i + 1;
  return str.substring(i);
}


/**
 *  ���ڿ����� �������� ������ �����Ѵ�.
 * @param {String} str ������ ������ �ִ� ���ڿ�
 * @return {String} ������ ������ ���ŵ� ���ڿ� 
 *  ex) alert(  rTrim('123   ')  );  ����� 123
 */
function rTrim(str)
{
  var i = str.length - 1;
  while (i >= 0 && (str.substring(i,i+1) == ' ' || str.substring(i,i+1) == '��')) i = i - 1;
  return str.substring(0,i+1);
}


/**
 * ���ڿ����� ������ ������ �����Ѵ�.
 * @param {String} str  ������ �ִ� ����
 * @return {String} ������ ���ŵ� ���ڿ�
 * @classDescription lTrim, rTrim �Լ��� �������̴�.
 *     ex) alert(  trim('    123     ')  );  ����� 123
 */
function trim(str){
    if( str == "" || str.length ==0 ) 
    {
      return str; 
    } 
    else
    {
      return(lTrim(rTrim(str)));
    }   
}


/**
 * ���ڿ��� ������ ���̸�ŭ ������ Ư�� ���ڷ� ä���.
 * @param {String} str
 * @param {String} ch
 * @param {Number} len
 * @return {String} trim �Լ��� �������̴�.
 * 
 *  ex)  alert(  lPad('123','$',4)  );  ����� $123
 */
function lPad(str, ch, len)
{
    alert("�������ڿ� : " +str + " , ��������"+ ch + " , �ѱ���: " + len + " ");
 var strlen = trim(str).length;
 var ret = "";
 var alen = len - strlen;
 var astr = ""; 
 
 //������ ���ڸ�ŭ  len ũ��� ch ���ڷ� ä���
 for (i=0; i<alen; ++i)
 {
  astr = astr + ch;
 }
 
 ret = astr + trim(str); //�տ��� ä���
 return ret;
}


/**
 * ���ڿ��� ������ ���̸�ŭ �������� Ư�� ���ڷ� ä���. 
 * @param {String} str �������ڿ�
 * @param {String} ch 
 * @param {Number} len  �ѱ���
 * @return {String} ä���� ���ڿ�
 * @classDescription trim �Լ��� �������̴�.
 * 
 * ex)  alert(  rPad('123','$',4)  );  ����� 123$
 */
function rPad(str, ch, len)
{
 var strlen = trim(str).length;
 var ret = "";
 var alen = len - strlen;
 var astr = ""; 
 
 //������ ���ڸ�ŭ  len ũ��� ch ���ڷ� ä���
 for (i=0; i<alen; ++i)
 {
  astr = astr + ch;
 }
 
 ret = trim(str) + astr; //�ڿ��� ä���
 return ret;
}


/**
 * ���ڸ� ���ڸ����� �ĸ��� ���� �������� �ٲپ� �ش�.
 * @param {String|Number}  �޸������� ����
 * @return {String}  �޸��� �ִ� ���ڿ�
 * @classDescription trim, isEmpty �Լ��� �������̴�.
 * 
 * ex)  alert(  addComma('1234567')  );  ����� 1,234,567
 */
    function addComma(cur)
    {
		if(cur == null || cur == "") return cur;

		var setMinus = "";
        if (cur.charAt(0) == "-") 
		{
            setMinus = "-";
        }

        cur=cur.replace(/[^.0-9]/g ,"");
        cur=cur.replace(/[.]+/g ,".");


    leftString = cur;
    rightString = ".";
    dotIndex = 0;
      
    for(i = 0; i < cur.length; i++){
    	// 1) '.'�� ó���� �Է� �Ǿ����� �տ� 0�� ���� "0."�� ����
		// 2) "0."�̿��� �Է� �� �� "0"�� ����
    	if(cur.charAt(i) == "." || (cur.length > 1 && cur.charAt(0) == "0" && cur.charAt(1) != "."))
		{
    		dotIndex = i;
    		if(dotIndex == 0)
			{
                if   (cur.charAt(0) == ".")   leftString="0.";
                else                          leftString="";
    			return leftString;
    		}
    		break;
    	}
    }
    
     if(dotIndex != 0)	//dot�� ���� ���..
    {
    	leftString = cur.substr(0, dotIndex);
    	rightString = cur.substr(dotIndex+1);
    	rightString = rightString.replace(/\./g,"");
    }
    else //������..
    {
    	leftString = cur;
    }

    len=leftString.length-3;
    while(len>0) 
    {
        leftString=leftString.substr(0,len)+","+leftString.substr(len);
        len-=3;
    }           
    
    if(rightString != ".")
        return setMinus + (leftString + "." + rightString); 
    else
        return setMinus + leftString;

   }
    
  
/**
 * �޸��� �ִ� ���ڿ�(����)�� �޸��� �����Ѵ�.
 * @param {String}  Cost �޸����ִ� ���ڿ�(����)
 * @return {String}  �޸��� ���� ���ڿ�
 * 
 * ex)  alert(  delComma('1,234,567')  );  ����� 1234567
 */   
   function delComma (Cost) 
  {
    var retValue = "";

 // Cost�������� �޸� ���ڰ� ������� �޸����ڸ� ������
    for (i = 0; i < Cost.length; i++) {

     if (Cost.charAt (Cost.length - i -1) != ",") {
      retValue = Cost.charAt (Cost.length - i -1) + retValue;
     }
    }

    return retValue;
 }    

/**
 * �Է°��� �տ� ������ �ڸ�����ŭ 0�� ä���.  
 * @param {String} �������ڿ�
 * @param {Number} 0�� �Ѱ���
 * @return {String} 0�̺ٿ��� ���ڿ�     
 * 
 *  ex) alert(  zeroFill("123",5)   )   ��� 00123
 */    
function zeroFill(sVal, iSize) 
{
    while(sVal.length < iSize)  
    {
		sVal = "0" + sVal;
    }
	return sVal;
}

/**
* ���ڸ� �����´�.
* @param {String} �������ڿ�
* @return {String} ���ڸ� ������ 
* 
* ex) alert(  getNumOnly("��12��")  );        ��� 12
*/
function getNumOnly(str)
{
    if(str==null || str=="") return str;
    str = str+"";
    var strCnt = str.length;
    var value="";
    for(var i=0; i< strCnt; i++)
    {
        var ch = str.charAt(i);
        if(ch>='0' && ch<='9')
        {
            value += ch;
        }
    }
    return value;
}
/**
* ���ڸ� �����´�. 
* getNumOnly�� ����, getNumOnly�� getOnlyNum�� �����ϴ� ���� ���� �����ϱ����� 
* ��� ����
* @param {String} �������ڿ�
* @return {String} ���ڸ� ������ 
* 
* ex) alert(  getOnlyNum("��12��")  );        ��� 12
*/
function getOnlyNum(str)
{
    return getNumOnly(str);
}

/**
* �ֹι�ȣ ���ڸ� �Ǵ� ���ڸ��� �����´�.
* @param {String} �ֹι�ȣ 13�ڸ�
* @param {Number} ���������� Ÿ�� 1 �ֹι�ȣ ���ڸ�, 2 ���ڸ�, 3 �ֹι�ȣ ���ڸ��� *�� ä��
* @return {String} Ÿ�Կ� �ش��ϴ� �ֹι�ȣ
* ex) alert(  getJuminNo("780102-1367832", 1)  );   �Ǵ� 7801021367832        ���  780102
* ex) alert(  getJuminNo("780102-1367832", 2)  );   �Ǵ� 7801021367832        ���  1367832
* ex) alert(  getJuminNo("780102-1367832", 3)  );   �Ǵ� 7801021367832        ���  780102 - ******* 
*/
function getJuminNo(juminNo, type)
{
    if(juminNo==null)return "";

    juminNo = juminNo.replace("-","");
	type = type + "";
    try
    {
        if(juminNo!="")
        {
			if(type == "1")
			{
				juminNo = juminNo.substring(0,6);
			}
			else if(type == "2")
			{
				if(juminNo.length < 13) return juminNo;
				juminNo =juminNo.substring(6,13);				
			}
			else if(type == "3")
			{
				juminNo = juminNo.substring(0,6) +" "+ "- ********";
			}
        }
    }
    catch (e)
    {
        juminNo = ""
    }
    return juminNo;
}


/**
* �ֹι�ȣ ���ڸ��� �����´�.
* @param {String} �ֹι�ȣ 13�ڸ�
* @return {String} �ֹι�ȣ �� 6�ڸ� 
* @deprecated
* ex) alert(  getJumin1("780102-1367832")  );    �Ǵ� 7801021367832    ���  780102
*/
function getJumin1(juminNo)
{
    if(juminNo==null)return "";
    juminNo = juminNo.replace("-","");
    var jumin1 = "";
    try
    {
        if(juminNo!="")
        {
            jumin1 = juminNo.substring(0,6);
        }
    }
    catch (e)
    {
        jumin1 = ""
    }
    return jumin1;
}

/**
* �ֹι�ȣ ���ڸ��� �����´�.
* @param {String} �ֹι�ȣ 13�ڸ�
* @return {String} �ֹι�ȣ �� 7�ڸ�
* @deprecated 
*  ex) alert(  getJumin2("780102-1367832")  );   �Ǵ� 7801021367832    ���  1367832
*/

function getJumin2(juminNo)
{
    if(juminNo==null)return "";
    else if(juminNo.length < 13) return "";
        
    juminNo = juminNo.replace("-","");    
    var jumin2 = "";
    try
    {
        if(juminNo!="")
        {
            jumin2 = juminNo.substring(6,13);
        }
    }
    catch (e)
    {
        jumin2 = ""
    }
    return jumin2;
}
    
/**
 * ���ڸ� �ִ� ��ȭ��ȣ�� -�� ä�� ��ȯ�ϴ� �Լ�
 * @param telno ��ȭ��ȣ
 * @return ������ �ִ� ��ȭ��ȣ
 * @classDescription getNumOnly()�Լ��� ���ϰ� ������..
 * 
 * ex) alert(  getTelnoHipen("0117832848")  );    ��� 011-783-2848
 */
	function getTelnoHipen(telno) 
    {
		var TelNo = "";
		var DDD = "";
		telno = getNumOnly(telno);
		var telLen = telno.length;
		
		// �����ȵ�
		if (telLen < 9 || telLen > 11) {
			return telno;
		}
		
		var headStr = telno.substring(0,3);
		var    headInt = 0;
		try {
			headInt = parseInt(headStr,10);
		} catch(e) 
		{
			return telno;
		}
		
		try
		{
           if (headStr == "070" || headStr == "080" ) 
           {
                if(telLen == 10){
                    DDD = telno.substring(0,3);
                    TelNo =  telno.substring(3,6) + "-" + telno.substring(6,10);
                }else{
                    DDD = telno.substring(0,3);
                    TelNo = telno.substring(3,7) + "-" + telno.substring(7,11);
                }
    			newTel = (DDD + "-" + TelNo);
                return newTel;
            }
            

			if( headInt >= 10 && headInt < 20 ){
			    //�ڵ���
			    if (headStr == "013" ) {
					if(telLen == 11){
					    DDD = telno.substring(0,4);
					    TelNo =  telno.substring(4,7) + "-" + telno.substring(7,11);
					} else {
					    DDD = telno.substring(0,4);
					    TelNo = telno.substring(4,8) + "-" + telno.substring(8,12);
					}
				}else{
					if(telLen == 10){
					    DDD = telno.substring(0,3);
					    TelNo =  telno.substring(3,6) + "-" + telno.substring(6,10);
					}else{
					    DDD = telno.substring(0,3);
					    TelNo = telno.substring(3,7) + "-" + telno.substring(7,11);
					}
			    }
			}else if(headInt >= 20 && headInt < 30 ){
			    //����
			    if(telLen == 9){
			    	DDD = telno.substring(0,2);
					TelNo = telno.substring(2,5) + "-" + telno.substring(5,9);
				}else{
					DDD = telno.substring(0,2);
					TelNo = telno.substring(2,6) + "-" + telno.substring(6,10);
			    }
			}else if(headInt == 30){
			    //����
			    if(telLen == 12){
					DDD = telno.substring(0,4);
					TelNo = telno.substring(4,8) + "-" + telno.substring(8,12);
				    }else {
					DDD = telno.substring(0,4);
					TelNo = telno.substring(4,7) + "-" + telno.substring(7,11);
			    }
			}else if(headInt > 30 && headInt < 50 ){
			    //����
			    if(telLen == 10){
					DDD = telno.substring(0,3);
					TelNo = telno.substring(3,6) + "-" + telno.substring(6,10);
			    }else{
			    	DDD = telno.substring(0,3);
			    	TelNo = telno.substring(3,7) + "-" + telno.substring(7,11);
			    }
			}else if(headInt == 50){
			    //����
			    if(telLen == 12){
					DDD = telno.substring(0,4);
					TelNo = telno.substring(4,8) + "-" + telno.substring(8,12);
			    }else {
					DDD = telno.substring(0,4);
					TelNo = telno.substring(4,7) + "-" + telno.substring(7,11);
			    }
			}else if(headInt > 50 && headInt < 70 ){
			    //����
			    if(telLen == 10){
					DDD = telno.substring(0,3);
					TelNo = telno.substring(3,6) + "-" + telno.substring(6,10);
			    }else{
					DDD = telno.substring(0,3);
					TelNo = telno.substring(3,7) + "-" + telno.substring(7,11);
			    }
			}else if(headInt == 70 ){
				// VOIP
				DDD = telno.substring(0,3);
				TelNo = telno.substring(3,7) + "-" + telno.substring(7,11);
			}else{
			    //�ܱ�
			    System.out.prvarln("�ܱ� " + telno);
			    TelNo = telno;
			}
		}catch(e)
		{
			DDD = "";
			TelNo = "";
		}
		
		var newTel = "";
		if(DDD =="" && TelNo == "")
		{
			newTel = telno;
		}
		else
		{
			newTel = (DDD + "-" + TelNo);
		}
		return  newTel;
	}


/**
 * �ڵ����� ��ȭ��ȣ�� �������� �־��ش�.
 * 
 * @param {Input Control} telObj   input��Ʈ���� ��ü  <input type="text .... >
 * @return  �ڵ����� ������ �����Ͽ� ��.
 * @classDescription  String.getBytes(), removeDash() �� �������̴�.
 *
 * ex)
 *  <input type="text" onkeyup="autoTelnoHipen(this)" maxlength="14"/>
 */
function autoTelnoHipen(telObj)
{
 var oForm = telObj.form ;
 var sMsg = telObj.value ;
 var onlynum = "" ; var i = 0 ;
 if( isNumHipen(sMsg) == false) return telObj.value = telObj.value .substring(0,telObj.value.length-1) ;
 onlynum = removeHipen(sMsg);
 if(event.keyCode != 8 ) {
  if (onlynum.substring(0,2) == "02") 
  {
   if (onlynum.getBytes() <= 1) telObj.value = onlynum ;
   if (onlynum.getBytes() == 2) telObj.value = onlynum + "-" ;
   if (onlynum.getBytes() == 3)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,3);
   if (onlynum.getBytes() == 4)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,4);
   if (onlynum.getBytes() == 5)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,5) + "-" ;
   if (onlynum.getBytes() == 6)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,5) + "-" + onlynum.substring(5,6) ;
   if (onlynum.getBytes() == 7)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,5) + "-" + onlynum.substring(5,7) ;
   if (onlynum.getBytes() == 8)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,5) + "-" + onlynum.substring(5,8) ;
   if (onlynum.getBytes() == 9)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,5) + "-" + onlynum.substring(5,9) ;
   if (onlynum.getBytes() == 10)  telObj.value  = onlynum.substring(0,2) + "-" + onlynum.substring(2,6) + "-" + onlynum.substring(6,10) ;
  }
  else 
  {
   if (onlynum.getBytes() <= 2) telObj.value = onlynum ;
   if (onlynum.getBytes() == 3)  telObj.value  = onlynum + "-";
   if (onlynum.getBytes() == 4)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,4);
   if (onlynum.getBytes() == 5)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,5) ;
   if (onlynum.getBytes() == 6)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,6) + "-" ;
   if (onlynum.getBytes() == 7)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,6) + "-" + onlynum.substring(6,7) ;
   if (onlynum.getBytes() == 8)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,6) + "-" + onlynum.substring(6,8) ; 
   if (onlynum.getBytes() == 9)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,6) + "-" + onlynum.substring(6,9) ;
   if (onlynum.getBytes() == 10)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,6) + "-" + onlynum.substring(6,10) ;   if (onlynum.getBytes() == 11)  telObj.value  = onlynum.substring(0,3) + "-" + onlynum.substring(3,7) + "-" + onlynum.substring(7,11) ;
  }
 }
}

/**
 * �������� �����Ѵ�. 
 * @param {String} �������� ������ ����
 * @return  {String} �������� ���ŵ� ����.
 *
  * ex) alert(  removeHipen("011-783-2848")  );    ��� 0117832848
 */
function removeHipen(sNo) 
{
 var reNo = ""
 for(var i=0; i<sNo.length; i++) {
  if ( sNo.charAt(i) != "-" ) {
   reNo += sNo.charAt(i)
  }
 }
 return reNo
}

/**
 * �ڵ����� ���ڸ����� �޸��� �ִ´�.
 * @param {Input Control} obj   input��Ʈ���� ��ü  <input type="text .... >
 * @return  �ڵ����� ���ڸ����� , �����Ͽ� ��.
 * @classDescription  addComma(), getNumOnly() �� �������̴�.
 *
 * ex)
 *  <input type="text" onkeyup="autoComma(this)" />
 */
function autoComma(obj)
{
	obj.value = addComma(obj.value);
}

/**
 *  �ֹι�ȣ���� AUTO�� '-'�� �ٴ´�..
 * @param {Input Control} �ֹι�ȣ input��Ʈ���� ��ü  <input type="text .... >
 * @return  �ڵ����� �ֹι�ȣ 6�ڸ��Ŀ� -�� ������.
 * 
 *  ex)  <input type="text" onkeyup="autoJuminHipen(this)" /> ����� 111111-2222222
 */

function autoJuminHipen(juminObj)
{
 var oForm = juminObj.form;
 var sMsg = juminObj.value;
 var onlyNum = "";
 var i = 0;
 if( isNumHipen(sMsg) == false) return juminObj.value = juminObj.value .substring(0,juminObj.value.length-1) ;
 onlyNum = removeHipen(sMsg);
 
 if(onlyNum.length >13)
 {
  onlyNum = onlyNum.substring(0,13);
 }

 if(event.keyCode != 8) { 
  if(onlyNum.getBytes() >= 6) juminObj.value = onlyNum.substring(0,6) + "-" + onlyNum.substring(6, onlyNum.length);
  if(onlyNum.getBytes() == 13) juminObj.value = onlyNum.substring(0,6) + "-" +onlyNum.substring(6, 13);
 }
}



/**
 * ���¼� �� 10���� �۴ٸ� 0�� ������ ��������.     
 * @param {String} ������ �������ڿ�
 * 
 * ex) addZero('9')   ��� '09'
 */
function addZero(num)
{
    var str="";
	try
	{
		var num = parseInt(num,10);
		if(num<10)
		{
			str = "0"+num;
		}
		else
		{
			str = num+"";            
		}
	}catch(e){str=""}
    return str;
}
    

/************************ üũ �Լ� ************************/

/**
 *  ���ڿ��� ���ڿ� Ȥ�� ���鸸 �ִ� ���ڿ����� �˻��Ѵ�.
 * @param {String} str �������ڿ�
 * @return {boolean} '' �̶�� true , ���ڰ� ������ false 
 * @classDescription trim�Լ� ��������.
 * 
 * ex)  alert(  isEmpty("")  );    ��� true
 */

function isEmpty(str)
{
 if (trim(str) == '') return true;
 return false;
}

/**
 * �ʼ������� �ԷµǾ�� �ϴ� �Է¶��� ��������ų� ���� �ۿ� ���� ������ �˻��ϰ�, 
 * ������� ��� alertâ�� ����ش�.
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isEmpty(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isEmptyAlert('������',this);" >
 */
function isEmptyAlert(fieldCalledName, field, type)
{
    if(isEmpty(field.value))
    {
	 	var msg = type == null ? fieldCalledName+"��(��) �ʼ������� �ԷµǾ�� �ϴ� ���̹Ƿ� ����θ� �� �˴ϴ�" : fieldCalledName;
        showMsgAndFocus(msg, field);
         return true;
    }
    return false;
}

/**
 * ���ڸ� üũ�ϴ� �ϴ� �Լ�
 * @param {String} input �������ڿ�
 * @return boolean true �������� false ���ھ���
 * @classDescription containsCharsOnly() ��������
 * 
 * ex) alert( isName("23e") );   ��� false
 */
function isNum(input) 
{
    var chars = "0123456789";
    return containsCharsOnly(input,chars);
}

/**
 * ���ڸ� üũ�ϴ� �ϰ� �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isNum(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isNumAlert('������',this);" >
 */
function isNumAlert(fieldCalledName, field, type)
{
    if(isNum(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ���ڸ� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
}

function isNumAlert2(fieldCalledName, field, type)
{
    if(isNum(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ���ڸ� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus2(msg, field);
         return false;
    }
    return true;
}


/**
 * ���ڸ� üũ�ϴ� �Լ�. �ѱ۰� ���ĺ��� ����
 * @param {String} input �������ڿ�
 * @return boolean true Ư������ �� ���ھ��� false Ư�����ڹ� ���� ����
 * @classDescription containsChars() ��������
 * 
 *  ex) alert( isName("����?") );   ��� false     
 */
 function isName(input)
 {
      var chars = '0123456789~!#$%^&*()_-+=|{}[]<>,./?@';
      return containsChars(input,chars);
 }


/**
 * ���ڸ� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isName(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isNameAlert('�̸�',this);" >
 */
function isNameAlert(fieldCalledName, field, type)
{
    if(isName(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) Ư������ ���ڸ� ������ ���ڸ� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
}

/**
 * ��ȭ��ȣ���� üũ�� ��.
 * @param {String} input ��ȭ��ȣ
 * @return true ��ȭ��ȣ  false ��ȭ��ȣ�� �ƴ�
 * @classDescription containsCharsOnly() ������
 * 
 * ex) alert( isPhoneNum("����") );   ��� false     
 */
function isPhoneNum(input) 
{ 
    var chars = "0123456789( ).-,<>{}[]_~";
    return containsCharsOnly(input,chars);
}

/**
 * ��ȭ��ȣ�� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isPhoneNum(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isPhoneNumAlert('��ȭ��ȣ',this);" >
 */
function isPhoneNumAlert(fieldCalledName, field, type)
{
    if(isPhoneNum(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ���� ������(-)�� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
}

/**
 * ���ĺ����� üũ�� ��.
 * @param {String} input �������ڿ�
 * @return true ���ĺ�  false ���ĺ��� �ƴ�
 * @classDescription containsCharsOnly() ������
 * 
 * ex) alert( isAlphabet("����") );   ��� false     
 */
function isAlphabet(input) 
{ 
 var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return containsCharsOnly(input,chars);
}

/**
 * ���ĺ��� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isAlphabet(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isAlphabetAlert('�����̸�',this);" >
 */
function isAlphabetAlert(fieldCalledName, field, type)
{
    if(isAlphabet(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ������ �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
}

/**
 * ������������ üũ�� ��.
 * @param {String} input �������ڿ�
 * @return true ����,����  false �������� �ƴ�
 * @classDescription containsCharsOnly() ������
 * 
 * ex) alert( isAlphabetNum("����") );   ��� false     
 */
function isAlphabetNum(input) 
{ 
     var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    return containsCharsOnly(input,chars);
}
    
/**
 * ���ĺ�,���ڸ� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isAlphabetNum(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isAlphabetNumAlert('��������',this);" >
 */
function isAlphabetNumAlert(fieldCalledName, field, type)
{
    if(isAlphabetNum(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ����,���ڸ� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
}

/**
 * �Է°��� ����,������(-)�� �Ǿ��ִ��� üũ
 * @param {Object} input ���� ���ڿ�
 * @return true ����,��������  false ����,������ �ƴ�
 * @classDescription containsCharsOnly() ������
 * 
 * ex) alert( isNumHipen("����") );   ��� false     
 */
 function isNumHipen(input) {
     var chars = "-0123456789";
     return containsCharsOnly(input,chars);
 }
 
/**
 * �Է°��� ����,������(-)�� �Ǿ��ִ��� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isAlphabet(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isNumHipenAlert('����������',this);" >
 */
function isNumHipenAlert(fieldCalledName, field, type)
{
    if(isNumHipen(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ����,�����¸� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
} 
 
/**
 * �Է°��� ����,�޸�(,)�� �Ǿ��ִ��� üũ
 * @param {Object} input ���� ���ڿ�
 * @return true ����,�޸�  false ����,�޸� �ƴ�
 * @classDescription containsCharsOnly() ������
 * 
 * ex) alert( isNumComma("����") );   ��� false     
 */
 function isNumComma(input) 
 {
     var chars = ",0123456789";
     return containsCharsOnly(input,chars);;
 }
 
  /**
 * �Է°��� ����,�޸�(,)�� �Ǿ��ִ��� üũ �Ǿ��ִ��� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isNumCommaAlert(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isNumComma('�����޸�',this);" >
 */
function isNumCommaAlert(fieldCalledName, field, type)
{
    if(isNumComma(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ���� �޸��� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
} 
 
 /**
  * �Է°��� ����,�Ҽ���(.)�� �Ǿ��ִ��� üũ
 * @param {Object} input ���� ���ڿ�
 * @return true ����,������,�޸�  false ����,������,�޸� �ƴ�
 * @classDescription containsCharsOnly() ������
 * 
 * ex) alert( isNumPoint("����") );   ��� false     
 */
 function isNumPoint(input) 
 {
     var chars = "-.0123456789";
     return containsCharsOnly(input,chars);
 }
 
 /**
 * �Է°��� ����,��Ʈ(.),���̳ʽ��� �Ǿ��ִ��� üũ �Ǿ��ִ��� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isNumCommaAlert(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isNumPoint('�����޸�������',this);" >
 */
function isNumPointAlert(fieldCalledName, field, type)
{
    if(isNumPoint(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) ����, ��, ���̳ʽ��� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
} 
 
 /**
  * �ѱ����� üũ
  * @param {String} input 
  * @return boolean true �ѱ��� false �ѱ��� �ƴ�
  * 
  *  ex) alert( isHangul("11") );   ��� false     
  */
function isHangul(input)
{
  var sBit = '';

  for(i=0;i<input.length;i++)
  {
    sBit = input.charAt(i);
    if(escape( sBit ).length <= 4)
    {
      return false;
    }
  }
  return true;
}



 /**
 * �ѱ����� üũ �Ǿ��ִ��� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isHangul(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isHangulAlert('�ѱ�',this);" >
 */
function isHangulAlert(fieldCalledName, field, type)
{
    if(isHangul(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) �ѱ۸� �Է��� �����մϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
} 

/**
 * ������ �ֹι�ȣ���� üũ�Ѵ�.
 * @param {String} ssn  ������ �ֹι�ȣ
 * @return true �ùٸ� �ֹι�ȣ false �ùٸ� �ֹι�ȣ�� �ƴ�
 * 
 *  ex) alert( isJuminNo("8123412-134218") );   ��� false     
 */
function isJuminNo(ssn)
{
    ssn = getNumOnly(ssn);
	var digit=0
    for (var i=0 ; i<ssn.length ; i++){
        var str_dig=ssn.substring(i,i+1);
        if (str_dig<'0' || str_dig>'9'){ 
            digit=digit+1 
        }
    }
    if(digit>0)
    {
        return false;
    }
    var year   = parseInt(ssn.substring(0,2));
    var month  = parseInt(ssn.substring(3,4));
    var day    = parseInt(ssn.substring(5,6));
    var gender = parseInt(ssn.substring(7,7));
    var local  = parseInt(ssn.substring(8,11));
    var key    = parseInt(ssn.substring(12));
        
    if( (month<0) || (month>12) )
    {
        return false;
    }
        
    if( (month==1) || (month==3) || (month==5) || (month==7) || (month==8) || (month==10) || (month==12) )
    {
        if( (day<0) || (day>31) )
        {
            return false;
        }
    }

    if( (month==4) || (month==6) || (month==9) || (month==10) )
    {
        if( (day<0) || (day>30) )
        {
            return false;
        }
    }
        
    if(month==2)
    {
        if( (year==0) && ( (gender==1) || (gender==2) ) )
        {
            if( (day<0) || (day>28) )
            {
                return false;
            }
        }
        else if( (year==0) && ( (gender==3) || (gender==4) ) )
        {
            if( (day<0) || (day>29) )
            {
                return false;
            }
        }
        else if(year%4==0)
        {
            if( (day<0) || (day>29) )
            {
                return false;
            }               
        }
        else
        {
            if( (day<0) || (day>28) )
            {
                return false;
            }
        }
    }

    if( (gender<0) || (gender>4) )
    {
        return false;
    }

    cBit = 0;
    sCode="234567892345";

    for(i=0;i<12;i++)
    {
        cBit = cBit+parseInt(ssn.substring(i,i+1))*parseInt(sCode.substring(i,i+1));
    }

    cBit=11-(cBit%11);
    cBit=cBit%10;

    if(key!=cBit)
    {
		return false;
    }
    else
    {
        return true;
    }
} 

 /**
 * �ùٸ� �ֹι�ȣ���� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isJuminNo(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isJuminNoAlert('�ֹι�ȣ',this);" >
 */
function isJuminNoAlert(fieldCalledName, field, type)
{
    if(isJuminNo(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) �ùٸ� �ֹι�ȣ�� �ƴմϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
} 

/**
 * ������ �̸����ּ����� üũ�Ѵ�.
 * @param {String} strText  �̸����ּ�
 * @return true �ùٸ� �̸����ּ� false �ùٸ� �̸����ּҰ� �ƴ�
 * 
 * ex) alert( isEmail("8123412") );   ��� false    
 */
 function isEmail(strText)
{
    if(strText == "") return true;
    
    
     if (strText.match(/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+.[a-zA-Z.]+$/))
     {
      return true;
     }
     else
     {
      return false;
     }
}

 /**
 * �ùٸ� �̸��� �ּ����� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isJuminNo(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isEmail('�̸����ּ�',this);" >
 */
function isEmailAlert(fieldCalledName, field, type)
{
    if(isEmail(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"��(��) �ùٸ� �ּҰ� �ƴմϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
} 

/**
 * ��ȭ��ȣ ������ üũ�ϴ� �Լ�
 * @param {String} ��ȭ��ȣ ���ڿ�
 * @return boolean  true  ��ȭ��ȣ������ false ��ȭ��ȣ������ �ƴ�
 * @classDescription getNumOnly(), getTelnoHipen() ��������.
 * 
 *  ex) alert(isTelNo("032-12-38")        ��� false
 */
function isTelNo(objValue)
{  
    if(objValue == '') return true;
    
    objValue = getNumOnly(objValue);
    objValue = getTelnoHipen(objValue);
    var text = objValue.split('-');  
    var arrNo = new Array('02'    //���� 02
          ,'031'   //��� 031
          ,'032'   //��õ 032  
          ,'033'  //���� 033
          ,'041'   //�泲 041 
          ,'042'  //���� 042 
          ,'043'  //��� 043 
          ,'051'  //�λ� 051
          ,'052'  //��� 052 
          ,'053'  //�뱸 053 
          ,'054'  //��� 054 
          ,'055'   //�泲 055  
          ,'061'  //���� 061 
          ,'062'  //���� 062  
          ,'063'  //���� 063  
          ,'064'  //���� 064 
          ,'010'  //����
          ,'011'
          ,'016'
          ,'017'
          ,'018'
          ,'019'
          ,'1588'
          ,'070'
          );
          
    var newLen = objValue.length; 
    var flag = false;
     if(newLen  < 11 ||
       newLen  > 13 ||
       text.length != 3 || 
       text[1].length < 3 ||
       text[2].length != 4)   
     {
      //alert('��ȭ��ȣ�� ������ ���� �ʽ��ϴ�. �ٽ� �Է��ϼ���.');
      return false;
     }     
     for(var i=0; i<arrNo.length; i++ )  {
      if(text[0] == arrNo[i]) {
       flag = true;
       break;
      }
     }
     if(!flag){
      //alert('��ȭ��ȣ�� ������ ���� �ʽ��ϴ�. �ٽ� �Է��ϼ���.');
      return false;
     }
     return true;
}


 /**
 * �ùٸ� ��ȭ��ȣ���� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isTelNo(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isTelNoAlert('��ȭ��ȣ',this);" >
 */
function isTelNoAlert(fieldCalledName, field, type)
{
    if(isTelNo(field.value) == false)
    {
	 	var msg = type == null ? fieldCalledName+"�� �ùٸ� ������  �ƴմϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);
         return false;
    }
    return true;
} 

/**
 * ���� ���������� ������ �������� ���ڰ� ���Դ��� �˻��Ѵ�.
 * @param {String} value   ���ڿ���
 * @param {Number} min    �ּҹ���
 * @param {Number} max   �ִ����
 * @return boolean true �������� ���� false ������ ���
 * 
 * ex) alert(isTelNo("200",0,100)        ��� false
 */
function isRange(value, min, max)
{
	 if(isNum(value) == false) 
	 {
		 return false;
	 }
	 
	 var fieldNumber=parseInt(value, 10);
	 if ( !(fieldNumber>=min && fieldNumber<=max) )
	 {
		 return false;
	 }
		return true;
}

 /**
 * ���� ���������� ������ �������� ���ڰ� ���Դ��� üũ�ϰ�  �޼����� ����ϴ� �Լ�
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} min    �ּҹ���
 * @param {Number} max   �ִ����
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isTelNo(), showMsgAndFocus() ������
 * 
 * ex) <input type='text'  onBlur="javascript:isRangeAlert('����',this,0,100);" >
 */
function isRangeAlert(fieldCalledName,field,min,max,type)
{

	// 1. �������� üũ
	 if(isNumAlert(fieldCalledName,field) == false) 
	 {
		 return false;
	 }

	 //2. ���� üũ
    if(isRange(field.value) == false)
   {
	var msg = type == null ? fieldCalledName+"�� ����" + parseInt(field.value,10)+ "�� [" + min + " ~ " + max + "] ������ ������ ��� �ֽ��ϴ�." : fieldCalledName;
	showMsgAndFocus(msg, field);
	 return false;
	}
    return true;
}



/**
 * �޼����� �����ְ� ��Ŀ���� �ش�.
 * @private
 * @param {String} msg  �޼���
 * @param {Input Control} field  INPUT����  
 */
function showMsgAndFocus(msg, field)
{
	 alert(msg);
	 field.focus();
     field.select();    
}
function showMsgAndFocus2(msg, field)
{
	 alert(msg);
	 field.value="";
	 field.focus();
     field.select();    
}

/**
 * ���ڿ��� ���ڰ� �ִ��� üũ��.
 * @private
 * @param {Object} input
 * @param {Object} chars
 * @return true ���ڰ� ���� false ����.
 */
function containsCharsOnly(input,chars) 
{
    if (typeof(input) == "string") 
    {
        for (var inx = 0; inx < input.length; inx++) 
        {
            if (chars.indexOf(input.charAt(inx)) == -1) 
                return false;
        }            
    }
    else
    {
        for (var inx = 0; inx < input.value.length; inx++) 
        {
            if (chars.indexOf(input.value.charAt(inx)) == -1) 
                return false;
        }
    }
    return true;
}

/**
 *  ���ڿ��� ���ڰ� ������ üũ��.
 * @private 
 * @param {Object} input
 * @param {Object} chars
 * @return true �ش繮�� ���� false ����.
 */
 function containsChars(input,chars) 
 {
    if (typeof(input) == "string") 
    {
        for (var inx = 0; inx < input.length; inx++) 
        {
            if (chars.indexOf(input.charAt(inx)) != -1) 
                return false;
        }
    }
    else 
    {
        for (var inx = 0; inx < input.value.length; inx++) 
        {
            if (chars.indexOf(input.value.charAt(inx)) != -1) 
                return false;
        }
    }
     return true;
 }

/**
 * ���ڿ��� �ش翭�� �Ѿ����� üũ�Ѵ�.
 * @param {String} str   �������ڿ�
 * @param {Number} maxLength    �ִ����
 * @return true �ȳѾ���(����) false �Ѿ���
 * @classDescription String.getBytes() ������
 * 
 *  ex) isLength("�Ⱑ����", "4")      ���  false
 */
function isLength(str, maxLength)
{
	if ( str.getBytes() > maxLength)
	{
		return false;
	}
	return true;
}

/**
 * ���ڿ��� �ش翭�� �Ѿ����� üũ�ϰ� �޼����� ����ϴ� �Լ� �̴�.
 * @param {String} fieldCalledName �������� �Ǵ� ��Ʈ�Ѹ�
 * @param {Input Contol} field  input��Ʈ���� ��ü  <input type="text .... >      
 * @param {Number} maxLength �ִ���� 
 * @param {Number} type �����ϸ� ��Ʈ�Ѹ�+���������� ������, 1�� �Է��ϸ� ��Ʈ�Ѹ��� ��µ�
 * @return boolean true ���� false ����  ���н� ���������� ���
 * @classDescription isLength(), showMsgAndFocus() ������
 * 
 *  ex) <input type='text'  onBlur="javascript:isLengthAlert('����',this,30);" >
 */
function isLengthAlert(fieldCalledName, field, maxLength, type) 
{
	if ( isLength(field.value,maxLength) == false)
	{
		var msg = type == null ? "�Է°����� "+fieldCalledName+" �ִ���̴� ����/������ �� "+maxLength+"��, �ѱ��� �� "+Math.floor(maxLength/2)+"���Դϴ�." : fieldCalledName;
        showMsgAndFocus(msg, field);		
		return false;
	}
	return true;
}

/**
 * ���������� �Էµ� �����ϰ� ������ �γ�¥�� �������� �˻��Ѵ�.
 * @param {String} fromYmd ��������
 * @param {String} toYmd ��������
 * @return boolean true ������ ��¥�� false ������ ��¥ �ƴ�
 * 
 * ex) alert( isYmdFromTo('20091223', '20091222') )   ��� false
 */
function isYmdFromTo(fromYmd, toYmd)
{
	if(fromYmd > toYmd)
	 {
		 return false; 
	 }
	 return true;
}

/**
 * ���������� �Էµ� �����ϰ� ������ �γ�¥�� �������� �˻��ϰ� �޼���â�� ����Ѵ�.
 * @param {Input Control} fieldFromYmd �������� input field
 * @param {Input Contorl} fieldToYmd �������� input field
 * @return  boolean true ������ ��¥�� false ������ ��¥ �ƴ�
 * @classDescription isYmdFromTo(), showMsgAndFocus() ������
 * 
 * ex)  
   <input type='text'  name="startDate" > ~ <input type='text'  name="endDate" >
    <input type="button" value="��¥Ȯ��" onClick="isYmdFromToAlert(startDate, endDate)">
 */
function isYmdFromToAlert(fieldFromYmd, fieldToYmd) 
{
	if ( isYmdFromTo(fieldFromYmd.value, fieldToYmd.value) == false)
	{
		var msg = "�������ڰ� �������ں��� Ů�ϴ�" ;
		showMsgAndFocus(msg, fieldFromYmd);
		return false;
	}
	return true;
}


/************************ ��¥ �Լ� ************************/


/**
* ��¥ �����Ϳ� �����ڸ� �־� ������.
* 
* @param date {String}     ��¥ YYYYMMDD (MMDD�� ���� ��� '�Է³�0101' DD�� ���� ��쿡�� '�Է³��01" �� ä����)
* @param type {Number}   ���Ϲް��� �ϴ� ���� �Ʒ�����  
* @param delimeter ������  String��
* @return String     �������ִ� ��¥
  @classDescription getDateText() �Լ� ��������
   
* TYPE 1 : YYYY.MM.DD
* TYPE 2 : YY.MM.DD
* TYPE 3 : MM.DD
* TYPE 4 : YYYY.MM
* TYPE 5 : YYYY
*
*  ex)     getDateType("20081223");                  ��� 2008.12.23
*            getDateType("20081223",1,"-")            ��� 2008-12-23
*            getDateType("20081223",4,"")             ��� 200812 
*/
function getDateType(date, type, delimeter)
{
    if(date == null) return "";
    if(arguments.length==1)
    {
        type = 1;
        delimeter = ".";
    }
    else if(arguments.length==2)
    {
        delimeter = ".";
    }
    
    if(date.length == 12) date += "01";
    else if(date.length == 10) date += "0101";
    else if(date.length == 8) date += "010101";
    else if(date.length == 6) date += "01010101";
    else if(date.length == 4) date += "0101010101";

  switch(type) 
  {
    case 1:
        return getDateText(1,date.substring(0, 8), delimeter);
    case 2:
        return getDateText(2,date.substring( 0, 8), delimeter);
    case 3:
        return getDateText(3,date.substring( 0, 8), delimeter);
    case 4:
        return getDateText(4,date.substring( 0, 8), delimeter);
    case 5:
        return getDateText(5,date.substring( 0, 8), delimeter);    
  }
}

/**
 * Ư�������� ���� Ÿ��(����������)���� �����ش�.
 * @private
 * @param type                Ÿ��       
 * @param szdate             ��¥
 * @param delimeter          ������
 * @return type �´� �������� ������
 */
function getDateText(type, szdate,delimeter)
{
    var reDate = "";
    
    if(szdate != null && szdate.length != 8) return ""; 
    if(szdate != null && szdate.length == 8)
    {         
        var year = szdate.substring(0, 4);
        var month = szdate.substring(4, 6);
        var day = szdate.substring(6, 8);
    
        switch(type) 
        {
            case 1:
                return  year + delimeter + month + delimeter + day;
            case 2:
                return  year.substring(2, 4) + delimeter + month + delimeter + day;
            case 3:    
                return month + delimeter + day;
            case 4:
                return  year + delimeter + month;
            case 5:
                return year;
       }
    }   
    return "";
}

/**
 * �ð��� �����ڸ� �־� ��ȯ�Ѵ�.
 * Ȥ�� �ð� �� �ʸ� �����Ѵ�.
 * @param time �ð�
 * @param {Number}  type 0 : 2�ڸ�(HH)  , 1 : 4�ڸ����� ��ȯ HHmm,  2  : 6�ڸ����� ��ȯ   HHmmss
 *              {String}   type  "HH" �ð��� ����,  "mm" �и�����, "ss" �ʸ� ����
 * @param delimeter  ���� ������ ������ : �� ����
 * @return ������ �ִ� �ð�
 * 
 * ex)   getTimeType('122330',1);             ��� 12:30
 *        getTimeType('122330', 2);            ��� 12:30:23
 *        getTimeType ('122330',1,'');         ��� 1230
 *        getTimeType('122330','mm');        ��� 23
 */
function getTimeType(time, type, delimeter)
{
    if(time==null || time=="") return time;
    
    if(arguments.length==1)
    {
        type = 1;
        delimeter = ":";
    }
    else if(arguments.length==2)
    {
        delimeter = ":";
    }
    
    if(time.length == 4) time += "00";
    else if(time.length == 2) time += "0000";

    var hour = time.substring(0, 2);
    var minute = time.substring(2, 4);
    var second = time.substring(4, 6);
    
    var value =  "";
    
    if(type == 'HH' || type == 'hh')
    {
        value = hour;        
    }
    else if(type == 'mm' || type == 'MM')
    {
        value = minute;      
    }
    else if(type == 'ss' || type == 'SS')
    {
         value = second;             
    }
    else if(type == 0)
    {
        value = hour;
    }
    else if(type == 1)
    {
        value = hour + delimeter + minute;
    }
    else
    {
        value = hour + delimeter + minute + delimeter + second;
    }
     return  value;
}


/**
 * ����� ������ ��¥�� �����´�.
 * @param {String} inputYmd 8�ڸ� ����� �Ǵ� 6�ڸ� ��� 
 * @param {Number} �����ϸ� 8�ڸ� ������ ���� , type 1 : ���������ڸ� ����
 * @return {String} �Է³��+������ ���� Ȥ�� ����������
 * 
 * ex)  alert( getLastDay('200802') )        ��� 20080229
 */
function getLastDay(inputYmd, type)
{
   if(inputYmd ==null || inputYmd == "") return inputYmd;
  
  inputYm = inputYmd.substring(0,6);  

   var daysArray = new Array(12);    // �迭�� �����Ѵ�.

  for (i=1; i<8; i++)
  {
    daysArray[i] = 30 + (i%2);
  }
  for (i=8; i<13; i++)
  {
    daysArray[i] = 31 - (i%2);
  }		
  var sYear = inputYm.substring(0, 4) * 1;
  var sMonth	= inputYm.substring(4, 6) * 1;
	
  if (((sYear % 4 == 0) && (sYear % 100 != 0)) || (sYear % 400 == 0))
  {
		daysArray[2] = 29;
  }
  else
  {
		daysArray[2] = 28;
  }
  if (type == 1) 
  {
      return daysArray[sMonth].toString();
  }
  else 
  {
      return inputYm + daysArray[sMonth].toString();
  }
}


/**
 * ����� ���� ��¥�� �����´�.
 * @param {String} inputYmd 8�ڸ� ����� �Ǵ� 6�ڸ� ��� 
 * @return {String} �Է³��+���� ����
 * 
 * ex)  alert( getFirstDay('200802') )        ��� 20080201
 */
function getFirstDay(inputYmd)
{
   if(inputYmd ==null || inputYmd == "") return inputYmd;
  
	var  inputYm = inputYmd.substring(0,6);  
	var value = inputYm+"01";
	return value;
}


/**
 * �Է¹��� ��¥�κ��� ���� ���� ��¥�� ��ȯ�Ѵ�.
 * @param {String} inputYmd ���������
 * @param {Number} iDay  ���� �ϼ� 
 * @return {String} �Է¹��� ��¥�κ��� ������ ��¥  yyyyMMdd 
 * 
 * ex)  alert( calcDate('20080201','50') )      ��� 20080322
 */
function calcDate(inputYmd,iDay)
{
  var daysArray = new Array(); //���� ������ ����
	
  for(i=1; i<13; i++)	
  {
    daysArray[i] = 30 + (i%2);
  }
		
  var sYear  	= inputYmd.substring(0, 4) * 1;
  var sMonth 	= inputYmd.substring(4, 6) * 1;
  var sDay   	= inputYmd.substring(6, 8) * 1;
	
  daysArray[2] = getLastDay(sYear + "02",1);
	
  var iMoveRemain = iDay * 1 + sDay;
  var iCurMonth   = sMonth;
  var iCurYear    = sYear;
	
  while (iMoveRemain > daysArray[iCurMonth])
  {
    iMoveRemain = iMoveRemain - daysArray[iCurMonth];

    iCurMonth = iCurMonth + 1;
    if (iCurMonth > 12)
    {
      iCurMonth = 1;
      iCurYear = iCurYear + 1;			
      daysArray[2] = getLastDay(iCurYear + "02",1);
    }
  } //end of while
	
  iCurMonth = addZero(iCurMonth.toString());
  iMoveRemain = addZero(iMoveRemain.toString());
	
  return iCurYear + iCurMonth + iMoveRemain;
}

/************************ ���������� �Լ� ************************/

/**
 * ����������ũ�⿡ ���� ���� ���̸� ���� �ش�. 
 * @param {Iframe Object} ifrm ���������� ��ü
 * @param {String} parentIdStr ������������ ���ΰ� �ִ� ���� ������ 
 * @return void
 * 
* ��뿹.
*<table border="0" cellpadding="0" cellspacing="0"> 
*<tr> 
*<td id="container"><iframe src="���������.html" name="myframe" width="100%" height="100%" marginwidth="0" marginheight="0" frameborder="no" onload="ifmResize(myframe,'container')"></iframe></td> 
*</tr> 
*</table> 
 */
function ifmResize(ifrm, parentIdStr) 
{ 
	var parentId = document.getElementById(parentIdStr);
   parentId.height = ifrm.document.body.scrollHeight; 
   parentId.width = ifrm.document.body.scrollWidth; 
}  


/************************ ��Ű���� �Լ� ************************
* Ŭ���̾�Ʈ���̵��� Ư�������� �����ϰ� ���� üũ �ϴµ� ���
*  
* ����� :  �Ϸ絿�� â���� �ʱ� 
*  STEP 1.  ������ �ε� �� ��Ű�� �ִ� �� �˻���, ������ â�� ���
       a.html 
       <script language="javascript"> 
         if ( getCookie( "notice" ) != "done" )
        {
        noticeWindow  =  window.open('abc.html','Notice1','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=363,height=733,left=30,top=120');
        noticeWindow.opener = self;
        }
      < /script >
    STEP 2. ����ڰ� �Ϸ絿�� â���� �ʱ� üũ�ڽ� ������ �ݱ� ��ư �� ������ ��      
                ��Ű�� ���� üũ
        b.html
       <input type="checkbox" name="cbNotice" ><a href= "javascript:history.onclick=closeCookieWin('cbNotice','notice','done',1)">�Ϸ絿�� â����� �ʱ�</a> 
    STEP 3.  �ٽ� �������� �ε��ؼ� �˾� �������� �������� Ȯ��.        
***************************************************************/

/**
 * ��Ű�����ÿ� ���ȴ�.
 * @param {String} name      �����ϰ��� �ϴ� �̸�
 * @param {String} value      �����ϰ��� �ϴ� ��
 * @param {Number} expiredays   ����Ⱓ
 * @return void
 */
function setCookie( name, value, expiredays )
{
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

/**
 * �����Ⱓ���� â �����ʱ⿡�� ���
 * ���� �Ϸ絿�� �˾� â ����� �ʱ⿡ ���
 * @param {Checkbox Control} cbName   üũ�ڽ�
 * @param {String} name      �����ϰ��� �ϴ� �̸�
 * @param {String} value      �����ϰ��� �ϴ� ��
 * @param {Number} expiredays   ����Ⱓ
 * @return void
 * 
 * ex)
   �˾�â 
   <input type="checkbox" name="cbNotice" ><a href= "javascript:history.onclick=closeCookieWin('cbNotice','notice','done',1)">�Ϸ絿�� â����� �ʱ�</a>
 */
function closeCookieWin(cbName, name, value, expiredays)
{
	if ( document.all[cbName].checked )
			setCookie( name, value , expiredays);
		self.close();
}

/**
 * �ش���Ű ���� �����´�. 
 * @param {String} name ������ ��Ű�̸�
 * @return String ��Ű��
 */
function getCookie( name )
{
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length )
	{
	var y = (x+nameOfCookie.length);
	if ( document.cookie.substring( x, y ) == nameOfCookie ) {
	if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
	endOfCookie = document.cookie.length;
	return unescape( document.cookie.substring( y, endOfCookie ) );
	}
	x = document.cookie.indexOf( " ", x ) + 1;
	if ( x == 0 )
	break;
	}
	return "";
}

/************************ ��Ʈ�� �Լ� ************************/

/**
 * üũ�ڽ��� ��μ��� �Ǵ� ��� �Ѵ�.
 * @param {Checkbox Control} cbAllChk  ������ üũ�ڽ�
 * @param {Checkbox Control} cbChk     üũ�ؾ� �� üũ�ڽ�
 * @return void
 * 
 * ex)  
  <input type="checkbox" name= "cbAll" onClick="cbAllChk(cbAll, cbMat)"> ��μ���<br>
  <input type="checkbox" name="cbMat">
  <input type="checkbox" name="cbMat"> 
  
  Ȱ��) js function
        function userDefine()
        {
            var cbMat = document.getElementsByName('cbMat');
            var cbMatCnt =  cbMat != null ? cbMat.length : 0 ; 
            for(var i=0; i< cbMatCnt; i++)
            {
                if(cbMat[i].checked == true)
                {
                    ���� �����;� �� ����
                }
            }
        }
 */
function cbAllChk(cbAllChk, cbChk)
{
  var chkCnt = cbChk !=null? cbChk.length : 0;
  if(chkCnt == undefined) chkCnt = 1;
  var bAllChk = cbAllChk.checked;

  for(var i=0;i<chkCnt;i++)
  {
     var chkboxObj = chkCnt==1?  cbChk : cbChk[i];
     chkboxObj.checked = bAllChk==true? true : false;
  }
}


/**
 * ������ư�׷��� ���õ� ���� �����´�
 * @param {String} rbName ���̿���ư��
 * @return void
 * 
ex)
 <input type="radio" name="rbMat" value="1">
<input type="radio" name="rbMat" value="2">
<input type="button" value="�����Ѱ�" onClick="alert( getSelectedRbValue('rbMat') )" >
 */
function getSelectedRbValue(rbName)
{
	var rbMat = document.getElementsByName(rbName);
	var rbMatCnt =  rbMat != null ? rbMat.length : 0 ; 
	for(var i=0; i< rbMatCnt; i++)
	{
		if(rbMat[i].checked == true)
		{
			return rbMat[i].value;
		}
	}	
	return "";
}

/**
 * �޺��ڽ��� ���õ� �ؽ�Ʈ�� �����´�.
 * @param {String} cbName �޺��ڽ���
 * @return {String} ���õ� �ؽ�Ʈ
 * 
 ex)
 <select name="cb">
	<option value="1">�ȳ�</option>
	<option value="'2">��</option>
	<option value="3">�̴϶����~</option>
</select>
<input type="button" value="�������ؽ�Ʈ" onClick="alert( getSelectedCbText('cb') )" > 
 */
function getSelectedCbText(cbName)
 {
	var cbObj = document.all[cbName];
	var index = cbObj.selectedIndex;
	var value = "";
	if(index > -1)
	{
		value = cbObj.options[index].text;
	}
	return value;
 }

/**
 * textarea �� ����Ʈ �� üũ ��. input field  0 /  �ִ�  byte ǥ����.
 * @param {Textarea control} ta   �Է��� TEXTAREA ��ü 
 * @param {TextFiled control} tagetField  0 / �ִ� ����Ʈ���� üũ�� TEXTFIELD ��ü
 * @param {Number} maxByte
 * @return void
 * 
 * ex) 
<textarea name="message" id="message" onkeydown="autoByteChk(this,tfText,80)" onchange="autoByteChk(this,tfText,80)" onkeyup="autoByteChk(this,tfText,80)"  ></textarea>
<input type="text" name="tfText" readonly value="0/80 Byte" style="background-color:transparent;border-top: 0px ;border-right: 0px;border-bottom: 0px;   border-left: 0px ;" >
 */
function autoByteChk(ta, tagetField, maxByte)
{ 
    var curText; 
    var strLen; 
    var byteIs; 
    var lastByte; 
    var thisChar; 
    var escChar; 
    var curTotalMsg; 
    var okMsg; 

    curText = new String(ta.value); 
    strLen = curText.length; 
    byteIs = 0; 

    for(i=0; i<strLen; i++) { 
        thisChar = curText.charAt(i); 
        escChar = escape(thisChar); 

                // ��,��, �� : 2byte �ӿ��� ���������� 1byte�� ��� 
                if (thisChar == "��" || thisChar == "��" || thisChar == "��" || thisChar == "��" ){ 
                        byteIs++; 
                } 

        if (escChar.length > 4) { 
            byteIs += 2;  //Ư������ �ѱ��� ���. 
        }else if(thisChar != '\r') {  //������ ������ �̿��� ��� 
            byteIs += 1; 
        } 
         
                if(byteIs > maxByte)
				{ 
                          alert( maxByte + 'Byte�� �ʰ��Ͻ� �� �����ϴ�.'); 
                          thisText = curText.substring(0, i); 
                          ta.value = thisText; 
                          byteIs = lastByte; 
                          break; 
                } 

                lastByte = byteIs; 
    } 

    curTotalMsg = Math.ceil(maxByte / 80); 
    curEndByte = curTotalMsg * 80; 

    tagetField.value = byteIs + "/"+maxByte+" Byte"; 
}

/**
 * textarea�� ���̸� ����� �Է¿� ���� ���̰� �ڵ����� ����, �����Ѵ�.
 * @param {Textarea Control} ta ����ڰ� �Է��� textarea
 * @param {Number} height  textarea ����  (textarea ���̿� �Ȱ��� �����. )
 ex)
 <textarea name="ta" style="width:99%;height:150;overflow-y:hidden" maxlength="2000" onKeyup="autoTaHeight(this,150)"></textarea>
 */
function autoTaHeight(ta, height)
{
	var scrollHeight=ta.scrollHeight; 
	if(scrollHeight >= height)ta.style.pixelHeight=scrollHeight+4
}

/**
 * INPUT HIDDEN �� �±� ���� or �� ����.
 * @param p_objForm
 * @param p_strId
 * @param p_strValue
 */
function AddHiddenElement(p_objForm, p_strId, p_strValue)
{	
	if(document.getElementById(p_strId) != null){
		document.getElementById(p_strId).value = p_strValue;
	}else
	{
		var inpHidden = "";
		try{
	    	inpHidden = document.createElement('<input type="hidden" id="'+p_strId+'" name="'+p_strId+'">');
		}catch(e){
			inpHidden = document.createElement("input");
			inpHidden.type = "hidden";
			inpHidden.name = p_strId;
			inpHidden.id = p_strId;
		}
	    inpHidden.value = p_strValue;
	    eval("document." + p_objForm).appendChild(inpHidden);
	}
}

/**
 * INPUT HIDDEN �� �±� ���� or �� ����. : name���� ������ ����=>üũ�ڽ� ��ġ �뵵.
 * @param p_objForm
 * @param p_strId
 * @param p_strValue
 */
function AddCheckedHiddenElement(p_objForm, p_strId, p_strValue)
{	
	var inpHidden = "";
	try{
		inpHidden = document.createElement('<input type="hidden" name="'+p_strId+'">');
	}catch(e){
		inpHidden = document.createElement("input");
		inpHidden.type = "hidden";
		inpHidden.name = p_strId;
	}
	inpHidden.value = p_strValue;
	eval("document." + p_objForm).appendChild(inpHidden);
}

/**
 * ���̺� �÷� ����/���߱�.
 */
function hideColumn(tableNm, nColIndex, bNoData) {
  // ���ͳ� �ͽ��÷η� 4�� document.all.myTable��,
  // ���ͳ� �ͽ��÷η� 5 �̻� �Ǵ� �ݽ������� 6 �̻󿡼���
  // document.getElementById('myTable')�� ���̺� ��ü�� ��� ��
  var objTable = document.all ? eval("document.all."+tableNm) :
              document.getElementById(tableNm);
  if(bNoData){
	  $(objTable.rows[0].cells[nColIndex]).hide();
  }else{
	  //for(var r = 0; r < objTable.rows.length; r++)
		  //objTable.rows[r].cells[nColIndex].style.display = 'none';
		  //$(objTable.rows[r].cells[nColIndex]).fadeOut("fast");
		  //$(objTable.rows[r].cells[nColIndex]).hide();
	  $('#'+tableNm+' th:nth-child('+(nColIndex+1)+')').hide();
	  $('#'+tableNm+' td:nth-child('+(nColIndex+1)+')').hide();
  }
}

// Null �� �ƴѰ�� true
function isNotNull(str)
{
	 if(str != null && str != '' && str != 'undefined')
		 return true ;
	 
	 return false ;
}

// Null �̸� true
function isNull(str)
{
	 if(str == null || str == '' || str == 'undefined')
		 return true ;
	 
	 return false ;
}

// Null �̸� str2�� ��ü.
function getNotNull(str, str2)
{
	 var rtnStr = '' ;
	 
	 if(isNull(str))
	 {
		 if(isNotNull(str2))
		 {
			 rtnStr = str2 ;	 
		 }
	 }else{
		 rtnStr = str ;
	 }
	 
	 return rtnStr ;
}

// ����� ���ڿ��� ����� ���� cutStr("���̰� �� ������ ���ڿ�",5) �� 
// ���� ���ֽø� ����Ʈ ������ �ڸ��� �ѱ۰� ���� 2byte�� �Ǵ� ���ڴ� 1byte�ٿ��� ����մϴ�. 
function cutStr(str,limit){
	 var tmpStr = str;
	 var byte_count = 0;
	 var len = str.length;
	 var dot = "";
	 
	 for(i=0; i<len; i++){
		 byte_count += chr_byte(str.charAt(i));
		 if(byte_count == limit-1){
			 if(chr_byte(str.charAt(i+1)) == 2){
				 tmpStr = str.substring(0,i+1);
				 dot = "..";
			 }else {
		 		if(i+2 != len) dot = "..";
		 		tmpStr = str.substring(0,i+2);
		 	 }
		 	 break;
		 }else if(byte_count == limit){
			 if(i+1 != len) dot = "..";
			 tmpStr = str.substring(0,i+1);
			 break;
	 	 }
	 }
//	 document.writeln(tmpStr+dot);
	 return tmpStr+dot;
}

function chr_byte(chr){
	 if(escape(chr).length > 4)
	 	return 2;
	 else
	 	return 1;
}		 

function getTimeStamp() {
	  var d = new Date();

	  var s =
	    leadingZeros(d.getFullYear(), 4) + '-' +
	    leadingZeros(d.getMonth() + 1, 2) + '-' +
	    leadingZeros(d.getDate(), 2) + ' ' +

	    leadingZeros(d.getHours(), 2) + ':' +
	    leadingZeros(d.getMinutes(), 2) + ':' +
	    leadingZeros(d.getSeconds(), 2);

	  d = null ;
	  
	  return s;
}

function getToday(delimeter) {
	var d = new Date();
	
	var s =
		leadingZeros(d.getFullYear(), 4) + getNotNull(delimeter) +
		leadingZeros(d.getMonth() + 1, 2) + getNotNull(delimeter) +
		leadingZeros(d.getDate(), 2) ;
	
	d = null ;
	
	return s;
}

// ����/���� ��¥�� �Žñ��ϰ� �ҷ���. 
// ��������(YYYYMMDD), ���ϱ⻩���ϼ�, ������
// ex) getDateBeforeAfter(getToday(), -7, "-") ;
function getDateBeforeAfter(fromDate, gap, delimeter) {
	
	var today = "" ;
	if(isNull(fromDate)) today = new Date(); 
	else today = new Date(fromDate.substr(0,4),(fromDate.substr(4,2)-1),fromDate.substr(6,2)); 
	
	var daysago = gap*-1; 
	var d = new Date(today-(3600000*24*daysago)); 

	var s =
		leadingZeros(d.getFullYear(), 4) + getNotNull(delimeter) +
		leadingZeros(d.getMonth() + 1, 2) + getNotNull(delimeter) +
		leadingZeros(d.getDate(), 2) ;
	
	d = null ;
	
	return s;
}


//����/���� ��¥�� �Žñ��ϰ� �ҷ���. 
//��������(YYYYMMDD), ���ϱ⻩�� ���� ��, ������
//ex) getDateBeforeAfter(getToday(), -7, "-") ;
function getMonthBeforeAfter(fromDate, gap, delimeter) {
	
	var today = "" ;
	if(isNull(fromDate)) today = new Date(); 
	else today = new Date(fromDate.substr(0,4),(fromDate.substr(4,2)-1),fromDate.substr(6,2)); 
	
	var s =
		leadingZeros(today.getFullYear(), 4) + getNotNull(delimeter) +
		leadingZeros(today.getMonth() + 1 + gap, 2) + getNotNull(delimeter) +
		leadingZeros(today.getDate(), 2) ;
	
	d = null ;
	
	return s;
}



function leadingZeros(n, digits) {
   var zero = '';
   n = n.toString();

   if (n.length < digits) {
     for (i = 0; i < digits - n.length; i++)
       zero += '0';
   }
   return zero + n;
}	 

// üũ�ڽ� ���� �� ��ȯ.(SQL IN Condition)
function getChkBoxSql(checkBoxClassName, quotation)
{
	var rtnStr = "" ;
	$("."+checkBoxClassName+":checked").each(function() {
		var val = getNotNull(quotation) 
		        + $(this).val() 
		        + getNotNull(quotation) ;
		if(rtnStr == "") rtnStr = val ;
		else rtnStr += "," + val;
		val = null ;
	}) ;
	return getNotNull(rtnStr,"''") ;
}

// jQueryUI �޷��� �����Ѵ�.
// �޷� �ؽ�Ʈ�ʵ�� ��ư���̵� ���� �� ����ϼ���.
function createDatePicker(pDateFieldId, pDateButtonId, pDefDate)
{
	$("#"+pDateFieldId).datepicker({
		changeYear: true ,
		monthNames: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
		monthNamesShot: ['1','2','3','4','5','6','7','8','9','10','11','12'],
		dayNamesMin: ['��', '��', 'ȭ', '��', '��', '��', '��'],
		altField: '#'+pDateFieldId , 
		altFormat: 'yy-mm-dd'
	});		
	$("#"+pDateFieldId).addClass("datepicker");  
	$("#"+pDateFieldId).attr("readonly","readonly") ;
	$("#"+pDateButtonId).click(function(){
		$("#"+pDateFieldId).datepicker("show");
	}) ;
	
	if(isNull($("#"+pDateFieldId).val())){
		if(isNull(pDefDate))
			$("#"+pDateFieldId).val(getToday("-")) ;
		else
			$("#"+pDateFieldId).val(pDefDate) ;
	}
			
}



/**
 * ������ �˾� - POST.
 * @param p_strPageUrl
 * @param p_strPopupKey 
 * @param p_nWidth
 * @param p_nHeight
 * @param p_strScroll "yes", "no"
 * @param p_strFormName
 * @return
 */
var gArrWindowPost = [] ;
function openWindowPost(p_strPageUrl, p_strPopupKey, p_nWidth, p_nHeight, p_strScroll, p_strFormName)
{
    var scW=screen.width ;
    var scH=screen.height ;
    var t = parseInt((scH-p_nHeight)/2) ;
    var l = parseInt((scW-p_nWidth)/2) ;
 
    try {
    	if(isNull(gArrWindowPost[p_strPopupKey]) || gArrWindowPost[p_strPopupKey].closed)
    	{
    		gArrWindowPost[p_strPopupKey] = window.open('', p_strPopupKey, 				
    				"toolbar=no,location=no,status=no,menubar=no,scrollbars="+p_strScroll
    				+",resizable=yes,width="+p_nWidth+"px,height="+p_nHeight+"px,top="+t+"px,left="+l+"px");
    	}
    	else
    	{
    		gArrWindowPost[p_strPopupKey].focus() ;
    	}
	} catch (e) {
		//alert(e.description) ;
	}
		   
	var frm = document[p_strFormName];
    frm.target = p_strPopupKey;
    frm.method = "post";
    frm.action = p_strPageUrl;
    frm.submit();
}
/*
// openWindowPost : ����.
function openXXX(rowIndex)
{	
	AddHiddenElement('mainForm','M_USER_ID', dataSet1.USER_ID[rowIndex] );
	AddHiddenElement('mainForm','M_USER_NM', dataSet1.USER_NM[rowIndex] );
	
	openWindowPost('/VOC/��¼��....', 'popXXX', 800, 600, 'auto', 'mainForm') ;
}
*/

/**
 * ������ �˾�.
 * @param p_strPageUrl
 * @param p_strPopupKey 
 * @param p_nWidth
 * @param p_nHeight
 * @param p_strScroll "yes", "no"
 * @return
 */
var gArrWindow = [] ;
function openWindow(p_strPageUrl, p_strPopupKey, p_nWidth, p_nHeight, p_strScroll)
{
	var popupTempleteUrl = "/common/popupTemplete.jsp?inc="+encodeURIComponent(p_strPageUrl);
	
    var scW=screen.width ;
    var scH=screen.height ;
    var t = parseInt((scH-p_nHeight)/2) ;
    var l = parseInt((scW-p_nWidth)/2) ;
 
    try {
    	if(isNull(gArrWindow[p_strPopupKey]) || gArrWindow[p_strPopupKey].closed)
    	{
			gArrWindow[p_strPopupKey] = window.open(popupTempleteUrl, p_strPopupKey, 				
    				"toolbar=no,location=no,status=no,menubar=no,scrollbars="+p_strScroll
    				+",resizable=yes,width="+p_nWidth+"px,height="+p_nHeight+"px,top="+t+"px,left="+l+"px");
    	}
    	else
    	{
    		gArrWindow[p_strPopupKey].focus() ;
    	}
	} catch (e) {
		//alert(e.description) ;
	}
}

/**
 * ��� ������ �˾�.
 * @param p_strPageUrl
 * @param p_jsonArgs 
 * @param p_nWidth
 * @param p_nHeight
 * @param p_strScroll "yes", "no"
 * @return
 */
function openModalWindow(p_strPageUrl, p_jsonArgs, p_nWidth, p_nHeight, p_strScroll) 
{
  var scW=screen.width;
  var scH=screen.height;
  var w = p_nWidth;
  var h = p_nHeight;
  
  //IE6 �˾�â ũ�� ���� (â ũ��� IE7�� �⺻���� ��)
  var navName = navigator.appName; 
  if (navName == "Microsoft Internet Explorer") {
    var brVer = navigator.userAgent;
    var brVerId = brVer.indexOf('MSIE');
    brNum = brVer.substr(brVerId,8);
    brNum2 = brNum.substr(5,3);

    //IE7���� �̸��� �� ���̸� ����
    if(brNum2 < 7.0) 
    {
      w += 6;
      h += 32;
    }
  }
  
  var pos = "dialogWidth:"+w+"px;";
  pos += "dialogHeight:"+h+"px;";
  pos += "dialogTop:" + parseInt((scH-h)/2) + "px;";
  pos += "dialogLeft:" + parseInt((scW-w)/2) + "px;";
  pos += "center:yes;";
  pos += "help:no;";
  pos += "status:no;";
  pos += "scroll:"+p_strScroll;
  var retValue = window.showModalDialog(p_strPageUrl, p_jsonArgs, pos);
  
  return retValue;
}



/**
 *  �����ð� ���ؿ���
 */
function srvTime(){
	/* ActiveXObject ��ũ��Ʈ ������ ���� ũ�ҹ��� ȣȯ ������ �ش�κ� �ּ� ó�� (2021.08.22)*/
	/*
	var xmlHttp;
	xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
	xmlHttp.open('HEAD',window.location.href.toString(),false);
	xmlHttp.setRequestHeader("Content-Type", "text/html");
	xmlHttp.send('');
	return xmlHttp.getResponseHeader("Date");
	*/
	return null;
}


function getDateStamp(d) {
	  
	  var s =

	    leadingZeros(d.getFullYear(), 4) + '-' +

	    leadingZeros(d.getMonth()+1, 2) + '-' +

	    leadingZeros(d.getDate(), 2);

	  return s;

}