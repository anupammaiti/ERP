/**
 * 
 * ERP JQuery 
 * 
 */



		var item1=new Array();
		var description=new Array();
		var apprisedvalue=new Array();

		//Image Rotator Code Starts
		function theRotator() {
			//Set the opacity of all images to 0
			$('div.rotator ul li').css({opacity: 0.0});
			
			//Get the first image and display it (gets set to full opacity)
			$('div.rotator ul li:first').css({opacity: 1.0});
				
			//Call the rotator function to run the slideshow, 6000 = change to next image after 6 seconds
			
			setInterval('rotate()',6000);
			
		}

		function rotate() {	
			//Get the first image
			var current = ($('div.rotator ul li.show')?  $('div.rotator ul li.show') : $('div.rotator ul li:first'));

		    if ( current.length == 0 ) current = $('div.rotator ul li:first');

			//Get next image, when it reaches the end, rotate it back to the first image
			var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div.rotator ul li:first') :current.next()) : $('div.rotator ul li:first'));
			
			//Un-comment the 3 lines below to get the images in random order
			
			//var sibs = current.siblings();
		    //var rndNum = Math.floor(Math.random() * sibs.length );
		    //var next = $( sibs[ rndNum ] );
					

			//Set the fade in effect for the next image, the show class has higher z-index
			next.css({opacity: 0.0})
			.addClass('show')
			.animate({opacity: 1.0}, 1000);

			//Hide the current image
			current.animate({opacity: 0.0}, 1000)
			.removeClass('show');
			
		};



		$(document).ready(function() {		
			//Load the slideshow
			theRotator();
			$('div.rotator').fadeIn(1000);
		    $('div.rotator ul li').fadeIn(1000); // tweek for IE
		});
		//End of Image Rotator

		
		
		
$(document).ready(function(){
	
	$('#cname').val('DeltaSoftSolutions').attr("readonly",true);
	
});	
		
/* Generate Today */
$(document).ready(function(){
	$('.data_form').click(function(data){
		$.get('outofstockreport.erp',function(data){
			alert('Out of Stock Report');
			
		});	
	});
});

$(document).ready(function(){
	
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!

		var yyyy = today.getFullYear();
		if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today = mm+'/'+dd+'/'+yyyy;
		
		$('#gendate1').val(today);	
		$('#gendate1').prop("readonly",true);
		$('#gendate2').val(today);
		$('#gendate2').prop("readonly",true);
		$('#gendate3').val(today);
		$('#gendate3').prop("readonly",true);
});

/* All input text feilds  */

$(document).ready(function(){
	$('input[type=text]').addClass('inputtext');
});

/* Validation for login */
$(document).ready(function(){
	
	$('#password').blur(function(){
			
			var username=$('#username').val();
			var password=$('#password').val();
			if((username=="")||(password=="")){
				$('.loginstatus').text('Invalid Login').addClass('alertmessage');
			}	
		});
	return false;
	});


/*
 * Getting data from Java Class
 * */
$(document).ready(function(){
	$('#getdata1').blur(function(){
		$.get('getdata.erp',function(data){
			$('#getdata1').val(data);	
	});
	return false;
	});
});

/*
 * Calculation Start
 */

$(document).ready(function(){
	$('#total').attr("readonly",true);
	
	var quantity=$('#quantity').val();
	var rate=$('#rate').val();
	var total;
	
	$('#rate').blur(function(){
	total=quantity*rate;
	
	$("#total").val(total);
	});
	return true;
});

/**
 * 
 */
$(document).ready(function(){
	$('#matirnity').change(function(){
		
		if($('#matirnity').val()=="No")
			{
			alert('Yes');
			$('#maternityresult').prop("readonly",true);
			}
		else
			{
	
			}
	});
});

/*
 * New Window with Form
 * */
$(document).ready(function(){
	$('#my_popup').click(function(){
		window.open("fn_create_ledger.erp",'_blank');	
	});
});


/**
 * Creating the Reciptno for vocherrecipt.
 */
$(document).ready(function(){
	var counter=0;
	$.get('vocherreciptno.erp',function(data){
		
		if((data==null) ||(data==0))
			{
			$('#vocherreciptno').val(1);
			}
		else{
			counter=parseInt(data)+1;
			
			$('#vocherreciptno').val(counter);	
		}
	});
	return true;
});

$(document).ready(function(){
	var counter=0;
	$.get('contrareciptno.erp',function(data){
		
		if((data==null) ||(data==0))
			{
			$('#contrareciptno').val(1).attr("readonly",true);
			}
		else{
			counter=parseInt(data)+1;
			
			$('#contrareciptno').val(counter).attr("readonly",true);	
		}
	});
	return true;
});

$(document).ready(function(){
	var counter=0;
	$.get('paymentreciptno.erp',function(data){
		
		if((data==null) ||(data==0))
			{
			$('#paymentreciptno').val(1).attr("readonly",true);
			}
		else{
			counter=parseInt(data)+1;
			
			$('#paymentreciptno').val(counter).attr("readonly",true);	
		}
	});
	return true;
});



$(document).ready(function(){
	var counter=0;
	$.get('paymentreciptno.erp',function(data){
		
		if((data==null) ||(data==0))
			{
			$('#paymentreciptno').val(1).attr("readonly",true);
			}
		else{
			counter=parseInt(data)+1;
		
			$('#paymentreciptno').val(counter).attr("readonly",true);	
		}
	});
	return true;
});




/*Calculation on PaySlip*/

$(document).ready(function(){
	
	var basic=parseFloat($('#bas').val());
	var pf=parseFloat($('#pf').val());
	var hra=parseFloat($('#hra').val());
	var pt=parseFloat($('#pt').val());
	var conv=parseFloat($('#conv').val());
	var incometax=parseFloat($('#incometax').val());
	var otherded=parseFloat($('#othded').val());
	var sa=parseFloat($('#sa').val());
	var medical=parseFloat($('#medical').val());
	var ched=parseFloat($('#ched').val());
	var da=parseFloat($('#da').val());
    var grossin=basic+hra+conv+sa+ched+medical+da;
	var totalded=pf+pt+incometax+otherded;
	
    var net=grossin-totalded;
    
	$('#ched').blur(function(){
		$('#gross').val(grossin);
		alert(totalded);
		$('#totalded').val(totalded);
		$('#net').val(net);
		$('#finalpay').val(net);
	});
	return true;
});

$(document).ready(function(){
	$('#mon3').blur(function(){
		var it1=$('#mon1').val();
		var it2=$('#mon2').val();
		var it3=$('#mon3').val();
		
		total=it1*it2*it3;
		alert(total);
		$('#total').val(total).attr("readonly",true);	
	});
	return true;
});


$(document).ready(function(){
	
	$('#cb1').change(function(){
		alert('Hello');
	});
	return false;
});

$(document).ready(function(){
	$('#account').blur(function(){
		var account=$('#account').val();
		alert(account);
			$.get('currentbalace.erp',{account:account},function(data){
			$('#balance').val(data).prop("readonly",true);
		});
	});
	return true;
});

$(document).ready(function(){
	
	$('#account1').blur(function(){
		var account=$('#account1').val();
		
			$.get('currentbalace.erp',{account:account},function(data){
			$('#balance1').val(data).prop("readonly",true);
		});
	});
	return true;
});

$(document).ready(function(){
	var i=0;
	var f1=Array();
	var f2=Array();
	var f3=Array();
	
	$('#insert-field').click(function(){
		for(i=0;i<=0;i++){
		$('#fields').after("<tr><td><input type='text' name='item1' id='"+f1[i]+"'/></td><td><input type='text' name='description["+i+"]' /></td><td><input type='text' name='apprisedvalue["+i+"]'/></td></tr>");
		
		}
		
		});
	
	$('#apname').blur(function(){
		for(var j=0;j<i;j++){
			alert('Hello'+item1.indexOf(j));
			
			alert("array Size"+i);
			$('#text1').val(item1);	
		}
		
	});
	});


$(document).ready(function(){
	$('#erase-field').click(function(){
		$('#fields').next().remove();
	});
});

$(document).ready(function(){
	$('#todate').blur(function(){
		var start=parseInt($('#fromdate').val());
		var end=parseInt($('#todate').val());
		if((start!="")||(end!="")){
		var days=(end-start)/86400000;
		alert(days);	
		}
		else{
			$('#fromdate').val('');
			$('#todate').val('');
		}
	});
	
});

