/* **************************************************************
 * Illegal use of this software will violate the Copy Right Law
 * **************************************************************
 * Program Name    			:  extendedComboBox.js
 * Function description 	:  Ȯ��� ���� �޺��ڽ� ����.
 * Programmer Name   	:  ���ּ�
 * Creation Date       			:  2009.7. 9
 * ************************************************************** 
 *                    P R O G R A M H I S T O R Y 
 * ************************************************************** 
 * DATE	:     PRGAMMER	: REASON 
 */

var tempCbDateSet = null;
/**
 * �޺��ڽ��� ��û�Ѵ�.  (PUBLIC)
* @param sqlId sqlId
* @param reqParam ��û�Ķ����
* @param spanName span�±� �̸�
* @param comboName �޺��ڽ��̸�
* @param onChange change�Լ�  
* @param width �޺��ڽ� ����
* @param className Ŭ������
* @param optionValue �ɼǱ⺻�� null �ϰ�� "" ����
* @param optionText �ɼǱ⺻�̸� null �ϰ�� ���� ����
*  
*  ���� : <script language="javascript" src="/js/extendedComboBox.js"></script>	
*  ȣ�� ��) reqCbAuto("M99S999E614", "20091208", "spComboName", "cbComboName","", "80", "''", "��ü");
*
 */
function reqCbAuto(sqlId, reqParam, spanName, comboName, onChange, width, optionValue, optionText, cbClassName, spClassName)
{
     tempCbDateSet = "";
     var params = "event_id=DefaultAction.getListAjax";
     params += "&sql_id="+sqlId  ;
     if(reqParam != "")params += "&"+reqParam ;
    new ajax.xhr.ExtRequest('/FrontServlet', params, resCbAuto, 'POST', null, false);
    setCbAuto(tempCbDateSet,spanName, comboName,onChange, width, cbClassName, optionValue, optionText);
    params=null;
    tempCbDateSet=null;
}

/**
 * �޺��ڽ��� �����.  (PUBLIC)
 * @param {Object} cbDateSet �������迭   ��, TEXT / ���ٸ� null
 * @param {Object} �׿� �Ķ���� reqCbAuto ����
 * 
   ȣ�� ��) makeCbAuto(null, "spComboName", "cbComboName","", "80", "''", "��ü");  
   �Ǵ� 
    var arr = new Array();
    arr[0] = new Array("1","������")
    arr[1] = new Array("2","������")
    makeCbAuto(arr, "spCb", "cbCb","changeList(this.value)", "50", "''", "����");       
 */
function makeCbAuto(cbDateSet, spanName, comboName, onChange, width, optionValue, optionText, cbClassName, spClassName)
{
    setCbAuto(cbDateSet,spanName, comboName,onChange, width, cbClassName, optionValue, optionText)         
}

/**
 * �޺��ڽ� ��� (�����ͼ��� �����´�. 
 */
/*private*/ function resCbAuto(jsonObj)
{
    var f = document.all;
    var twoArr = getJSONToTwoArr(jsonObj);
    
    if(twoArr != null && twoArr[0] != null)
    {
        tempCbDateSet = twoArr;
    }
}

/**
* �޺��ڽ��� �ش� span�� �����Ѵ�.  
* @param twoArr �����ͼ�
* @param comboName �޺��ڽ��̸�
* @param spanName span�±� �̸�
* @param onChange change�Լ�  
* @param width �޺��ڽ� ����
* @param className Ŭ������
* @optionValue �ɼǱ⺻�� null �ϰ�� "" ����
* @optionText �ɼǱ⺻�̸� null �ϰ�� ���� ����
*/
/*private*/  function setCbAuto(twoArr, spanName, comboName, onChange, width, className, optionValue, optionText)
{
    var combo = document.getElementById(comboName);
    var span = document.getElementById(spanName);
    var html = getComboHtml(twoArr,comboName,width, className, onChange, optionValue,optionText);
    //console.log("span.innerHTML");
    span.innerHTML = html;
    twoArr=null;
    combo=null;
    span=null;
    html=null;
    
}




/**
*�޺��ڽ� HTML�� �����Ͽ� ��.
* @param dataSet  �����ͼ� 0�ڵ� 1������
* @param name �޺��ڽ���
* @param width �޺��ڽ� �ʺ�
* @param className CSSŬ������
* @param onChange onChage�Լ�
* @param optionValue ù��° �ɼǰ� (default �ϰ�� "" �������� ����
* @param optionValue ù��° �ɼ�Text
* 
*/
/*private*/ function getComboHtml(dataSet, name, width, className, onChange, optionValue, optionText)
{
    var firstItem ="";
    if(optionValue == "default")
    {
        optionValue = "";
        optionText = "����";
    }
    
   if (optionValue != null) 
   {
       firstItem = "<option value = '" + optionValue + "' title='" + optionText + "'>" + optionText + "</option>";
   }

    var fnChange = (onChange != null && onChange != "") ? "onChange="+onChange : "" ;

    var str = "<select name='"+name+"' id='"+name+"' style='width:"+width+"' "+fnChange+">";
    str += firstItem;
    
   var dataSetCnt = dataSet != null ? dataSet.length : 0 ;
   for(var i=0 ; i < dataSetCnt ; i++)
   {
     str += "<option value = '"+ dataSet[i][0]+"' title='"+dataSet[i][1]+"'>" + dataSet[i][1] +" </option>";
   }
    str += "</select>";
    //console.log("getComboHtml str : " + str)
    dataSet=null;
    return str;
}    

//session���� ���� ������ �׸���
function reqCbAuto2_session(jsonObj, spanName, comboName, onChange, width, optionValue, optionText, cbClassName, spClassName, selectData)
{
     tempCbDateSet = "";
     resCbAuto(jsonObj);    
    setCbAuto2(tempCbDateSet,spanName, comboName,onChange, width, cbClassName, optionValue, optionText, selectData);
    params=null;
    tempCbDateSet=null;
    sqlId=null;
    reqParam=null;
    spanName=null;
    comboName=null;
    onChange=null;
    width=null;
    optionValue=null;
    optionText=null;
    cbClassName=null;
    spClassName=null;
    selectData=null;
}

// �Ʒ� �κ��� ���� ������� selecbox�� ���� �ʱ����� ����Ѵ�.
function reqCbAuto2(sqlId, reqParam, spanName, comboName, onChange, width, optionValue, optionText, cbClassName, spClassName, selectData)
{
     tempCbDateSet = "";
     var params = "event_id=DefaultAction.getListAjax";
     params += "&sql_id="+sqlId  ;
     if(reqParam != "")params += "&"+reqParam ;
    new ajax.xhr.ExtRequest('/FrontServlet', params, resCbAuto, 'POST', null, false);
    setCbAuto2(tempCbDateSet,spanName, comboName,onChange, width, cbClassName, optionValue, optionText, selectData);
    params=null;
    tempCbDateSet=null;
    sqlId=null;
    reqParam=null;
    spanName=null;
    comboName=null;
    onChange=null;
    width=null;
    optionValue=null;
    optionText=null;
    cbClassName=null;
    spClassName=null;
    selectData=null;
}

function setCbAuto2(twoArr, spanName, comboName, onChange, width, className, optionValue, optionText, selectData)
{
    var combo = document.getElementById(comboName);
    var span = document.getElementById(spanName);
    var html = getComboHtmlNodataEmpty(twoArr,comboName,width, className, onChange, optionValue,optionText, selectData);
    span.innerHTML = html;
    twoArr=null;
    combo=null;
    span=null;
    html=null;
    spanName=null;
    comboName=null;
    onChange=null;
    width=null;
    className=null;
    optionValue=null;
    optionText=null;
    selectData=null;
    
}

function getComboHtmlNodataEmpty(dataSet, name, width, className, onChange, optionValue, optionText, selectData)
{
	

    var firstItem ="";
    if(optionValue == "default")
    {
        optionValue = "";
        optionText = "����";
    }
    
   if (optionValue != null) 
   {
       firstItem = "<option value = '" + optionValue + "' title='" + optionText + "'>" + optionText + "</option>";
   }

    var fnChange = (onChange != null && onChange != "") ? "onChange="+onChange : "" ;

    var str = "<select name='"+name+"' id='"+name+"' style='"+className+";width:"+width+"' "+fnChange+">";
    str += firstItem;
    
   var dataSetCnt = dataSet != null ? dataSet.length : 0 ;
   var selectFlag="";
   for(var i=0 ; i < dataSetCnt ; i++)
   {
	 if(selectData == dataSet[i][0]){
		 selectFlag="selected"; 
	 }else{
		 selectFlag="";
	 }
     str += "<option value = '"+ dataSet[i][0]+"' title='"+dataSet[i][1]+"' "+selectFlag+">" + dataSet[i][1] +" </option>";
   }
    str += "</select>";
    if(dataSet.length == 0){
    	str="";
    }
    dataSet=null;
    name=null;
    width=null;
    className=null;
    onChange=null;
    optionValue=null;
    optionText=null;
    selectData=null;
    return str;
}    

