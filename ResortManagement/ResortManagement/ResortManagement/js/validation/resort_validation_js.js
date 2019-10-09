/**
 *resort_validation_js.js 
 *
 * Validations  
 */

$(function(){
	$('#designation3').validate({
		rules:{
			designation:"required"
		},
		messages:{
			designation:"Enter Designation"
		}
	});
});
