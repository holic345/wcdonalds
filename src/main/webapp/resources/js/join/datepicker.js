jQuery(function($){
	$.datepicker.regional['ko'] = {
		closeText: '닫기'
		,prevText: '이전달'
		,nextText: '다음달'
		,currentText: '오늘'
		,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		,dayNames: ['일','월','화','수','목','금','토']
		,dayNamesShort: ['일','월','화','수','목','금','토']
		,dayNamesMin: ['일','월','화','수','목','금','토']
		,weekHeader: 'Wk'
		,dateFormat: 'yy-mm-dd'
		,firstDay: 0
		,isRTL: false
		,showMonthAfterYear: true
		,numberOfMonths: 2
		,showButtonPanel: true
        ,numberOfMonths: 1
        ,minDate: '-100y'
        ,yearRange: 'c-30:c+0'
        ,changeYear: true
		,yearSuffix: '년'
    };

	$.datepicker.setDefaults($.datepicker.regional['ko']);
});