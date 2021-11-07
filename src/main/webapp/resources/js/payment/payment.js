/*
 *	 
 */
$(document).ready(function() {
	$('#cashbill').click(function() {
		if ($('input:checkbox[id="cashbill"]').is(":checked") == true) {
			$("#cashbillphone").removeAttr("disabled")
			$("#cashbillphone").css("background-color","white")
		} else {
			$("#cashbillphone").attr("disabled", "disabled")
			$("#cashbillphone").css("background-color","#e2e2e2")
		}
	})
	
	$('#cash').click(function() {
		if ($('input:radio[id="cash"]').is(":checked") == true) {
			/*$("#selectedCash").append(appendLabelChild+appendSelectChild)*/
			$("#selectedCash").css("display","inline")
		}
	})
})


