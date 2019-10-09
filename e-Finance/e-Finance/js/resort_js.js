/**
 * resort_js.js
 * 
 */

//Alphabetic Validation.
/*Image Rotator Starts*/
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

$(document).ready(function(){
	$('#username1').attr('size','20');
	$('#password1').attr('size','10');
	return false;
});


//Login Page
$(document).ready(function(){
	$('#password1').blur(function(){
		var username=$('#username1').val();
		var password=$('#password1').val();
		//alert('Username'+username);
		//alert('Password'+password);
		if((username=="")||(password=="")){
			$('#username1').val('');
			$('#password1').val('');
			$('#validate').text('Invalid Login');
		}
	});
	return false;
});

//Today's Date.

$(document).ready(function(){
	
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!

	var yyyy = today.getFullYear();
	if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today =yyyy+'-'+mm+'-'+dd;
	$('#gendate1').val(today);	
	$('#gendate1').prop("readonly",true);
	$('#gendate2').val(today);
	$('#gendate2').prop("readonly",true);
	$('#gendate3').val(today);
	$('#gendate3').prop("readonly",true);
//	alert(today);
	return false;
});	
$(document).ready(function(){
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!

	var yyyy = today.getFullYear();
	if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today = mm+'/'+dd+'/'+yyyy;
	//alert(today);
	$('.todaydate').val(today);
	
});


//Today's Time and Date.
$(document).ready(function(){
	var currentTime = new Date();

	var month = currentTime.getMonth() + 1;
	var day = currentTime.getDate();
	var year = currentTime.getFullYear();

	var date1 =day+ "/" + month + "/" + year; // output
	var d=new Date();
	var t=d.toLocaleTimeString();
	var myVar=setInterval(function(){myTimer()},1000);	
	
	//alert(dateandtime);
	
	
	function myTimer()
	{
	var d=new Date();
	var t=d.toLocaleTimeString();
	var dateandtime=date1+"  "+t;
	$('#dateandtime').html(dateandtime).addClass('timeanddate');
	}	
});


/* All input text feilds  */

$(document).ready(function(){
	$('input[type=text]').addClass('inputtext');
});




$(document).ready(function() {		
	//Load the slideshow
	theRotator();
	$('div.rotator').fadeIn(1000);
    $('div.rotator ul li').fadeIn(1000); // tweek for IE
});

/*Image Rotator Ends*/




$(document).ready(function(){
	
	$('#password').blur(function(){
	var username=$('#username').val();
	var password=$('#password').val();
	if((username==null)||(password==null)){
		//alert(username);
		$('#username').val('');
		//$('#password').val('');
		$('#validate').text("Invalid Login").addClass('error');
		}
	return false;
	});
	
});

$(document).ready(function(){
	
	$.get('tele_caller.fin',function(data){
		//alert(data);
		$('#telecallerid').html(data);
	});
});

$(document).ready(function(){
	$.get('guestuser_id.fin',function(data){
		//alert(data);
		var guest="gu_"+data;
		$('#guest_id').val(guest);
	});
});

$(document).ready(function(){
	$.get('discription_list.fin',function(data){
		//alert('Hello'+data);
		//$('#designation1').html(data);
	});
});




$(document).ready(function(){
	$.get('villa_list.fin',function(data){
		//alert(data);
		$('#villa_type').html(data);
	});
});

$(document).ready(function(){
	var dept;
	$.get('departmentid.fin',function(data){
	//alert(data);
		dept="dept_"+data;
		//alert(dept);
		$('#deptid').val(dept);
	});
});

$(document).ready(function(){
	$.get('departmentId.fin',function(data){
		//alert('Hai');
		$('#departmentid').html(data);
		$('#departmentid1').html(data);
	});
});

$(document).ready(function(){
	
		$('#dept').blur(function(){
			//alert('Department');
			var departmentid=$('#dept').val();
			//alert("Department"+departmentid);
			$.get('departmentdesignation.fin',{'department':departmentid},function(data){
				
			//	alert(data);
				$('#designation1').html(data);
			});	
		});
		
		
			
		
	});
	








$(document).ready(function(){
	$('#designation1').blur(function(){
		//alert('reporting to');
		var designation1=$('#designation1').val();
		//alert("designation"+designation1);
		$.get('reportingto.fin',{'designation1':designation1},function(data){
			$('#reportingto').html(data);
		});	
	});
});
$(document).ready(function(){
	$('#reportingto').blur(function(){
		
		var username1=$('#reportingto').val();
		
		//alert(username1);
		$.get('tele_manager_name.fin',{'username':username1},function(data){
			//alert(data);
			$('#empname').html(data).show().delay(5000).fadeOut();
		});	
	});	
});


$(document).ready(function(){
	var id1;
	var designation_id;
	
	$('#reportingto').blur(function(){
		//alert('Hai');
		var designation=$('#designation1').val();
		//alert(designation);
		$.get('employee_id.fin',function(data){
			id1=parseInt(data);
			//alert("number"+id1);
		});
		//alert("data1"+id1);
		$.get('des_id_by_designaion.fin',{'designation':designation},function(data2){
			designation_id=data2;
			//alert("designation Id\t"+data2);
		});
		//alert("number"+data1);
		//alert("designation Id\t"+designation_id);
			//alert(designation_id);
			//alert(id1);
			//alert("Original Data:"+id1);
			var id2=designation_id+"_"+id1;
			
			//alert(id2);
			$('#user_id').val(id2);
		
	});
	
});

$(document).ready(function(){
	////alert('Hello');
	var designation=$('#desig').val();
	//alert(designation);
	$.get('get_reference1.fin',{'designation':designation},function(data){
		//alert(data);
		$('#refe1').html(data);
	});
});

/*$(document).ready(function(){
	////alert('Hello');
	var refer1=$('#refered1').val();
	//alert('Reporting To'+refer1);
	var department=$('#department').val();
	//alert('department'+department);
	$.get('get_reference2.fin',{'refer1':refer1,'department':department},function(data){
		//alert(data);
		$('#ref2').html(data);
	});
});*/

function remainder(username){
	var reqforcall=todaysdate;
	var username=$('#usname').val();
	var status=$('#status').val();
	
	//alert('Hello'+status);
	$.get('remainder_alert.fin',{'requestforcall':reqforcall,'username':username,'status':status},function(data){
		
		alert("Todays Calls are  :  "+data);		
	});
}

$(document).ready(function(){
	$.get('tele_agent.fin',function(data){
		//alert(data);
		$('#ag_name').html(data);
	});
});

$(document).ready(function(){
	
	$.get('drivers.fin',function(data){
		$('#driver').html(data);
	});
});

$(document).ready(function(){
	var driver_id;
	$.get('drivers.fin',function(data){
		$('#driver_name').html(data);
		
		});
		$('#driver_name').blur(function(){
			driver_id=$('#driver_name').val();
			$.get('driver_name.fin',{'username':driver_id},function(data){
				//alert(data);
				$('#dname').html(data).show().delay(3000).fadeOut();;
				
			});
		});
});

$(document).ready(function(){
	$.get('vehicle.fin',function(data){
		$('#vehicle_no').html(data);
	});
});

$(document).ready(function(){
	$('#vehicle_no').blur(function(){
		
		var veh_no=$('#vehicle_no').val();
		//alert('vehicle no'+veh_no);
		$.get('veh_model.fin',{'veh_no':veh_no},function(data){
			//alert(data);
			$('#vh_model').val(data);
		});	
	});
	
});

//Getting the data drivername,vehicleno,status and insert them into table.
$(document).ready(function(){
	//alert('For Anxity');
	$('#status1').change(function(){
		//alert('Second');
	var driver_name=$('#driver_name').val();
	var vehicle_no=$('#vehicle_no').val();
	var status=$('#status1').val();
	//alert('Third'+status);
	if((driver_name=="")||(vehicle_no=="")||(status=="")){
		
	}
	else{
		$.post('save_vehicle_allotment.fin',{'driver_name':driver_name,'vehicle_no':vehicle_no,'status':status},function(){
			alert('Saved Successfully');
		});	
	}
	
  });
});

//Getting director username it displays managers list.

$(document).ready(function(){
	var username=$('#usrname').val();
	//alert('username'+username);
	$.get('mangers.fin',{'username':username},function(data){
		$('#manager1').html(data);
	});
});


//Getting vehicleno it will give you the companyname,modelno,vehicletype details and display them.
$(document).ready(function(){
		$('#vehicle_no').blur(function(){
			var veh_no=$('#vehicle_no').val();
			$.getJSON('veh_details.fin',{'vhno':veh_no},function(json){
				var compname=json.cname;
				var veh_model=json.veh_model;
				var vh_type=json.vh_type;
				$('#compname').val(compname);
				$('#modno').val(veh_model);
				$('#vehtype').val(vh_type);
				
			});
		});
	
});


//Display total in vehicle_maintanence form.
$(document).ready(function(){
	$('#samount').blur(function(){
		var amount=parseInt($('#amount').val());
		var samount=parseInt($('#samount').val());
		//alert(amount);
		//alert(samount);
		var total=amount+samount;
		//alert(total);
		$('#total').val(total);
	});
});
$(document).ready(function(){
	$.get('agent_name.fin',function(data){
		$('#agent_name').html(data);	
	});
	
});

$(document).ready(function(){
	$.get('villa_list.fin',function(data){
		$('#villa_type_list').html(data);
		
	});
});



//Generating the Customer Id.
$(document).ready(function(){
	
		var custid;
		var cust_id;
		$.get('customer_id.fin',function(data){
			if(data==null){
				custid="cus_"+1;
			}else{
				cust_id=parseInt(data);
				cust_id=cust_id+1;
				custid="cus_"+cust_id;	
			}
			
			
			$('#uname').val(custid).attr('readonly',true);
		});
	
});

//List the Departments.
$(document).ready(function(){
	
	$.get('departments.fin',function(data){
		//	alert(data);
		$('#dept').html(data);
	});
});


//Display the Success Message after Create,Update.
$(document).ready(function(){
	//alert("hai");
	$('#successmsg').show().delay(3000).fadeOut();
});

//Display Managers List on selecting the Department.
$(document).ready(function(){
	////alert('Hello');
	$('#departmentid').blur(function(){
		var department=$('#departmentid').val();
	//	alert(department);
		$.get('view_manager_by_department.fin',{'department':department},function(data){
			//alert(data);
			$('#designation1').html(data);
		});	
	});
	//Display the Name of the employee on selecting the desgination.
	$('#designation1').change(function(){
		//alert('Hai');
		var username=$('#designation1').val();
		//alert(username);
		$.get('tele_manager_name.fin',{'username':username},function(data){
			//alert(data);
			$('#empname').text(data).show().delay(3000).fadeOut();
		});
	});
	
});

//Display Manager Name on selecting the id.
$(document).ready(function(){
	//alert('Entered');
	$('#refe1').blur(function(){
		//alert('Hai');
		var username=$('#refe1').val();
		//alert(username);
		$.get('tele_manager_name.fin',{'username':username},function(data){
			//alert(data);
			$('#empname').text(data).show().delay(3000).fadeOut();
		});
	});
	
});
//Display Department By Employee Id
$(document).ready(function(){
	var username=$('#manager_id').val();
	//alert(username);
	$.get('viewdepartmentbyusername.fin',{'username':username},function(data){
		$('#department1').val(data);
	});
});
//List Of Executives in Sales Manager.
$(document).ready(function(){
	var username=$('#manager_id').val();
	//alert("Hello");
	$.get('viewexecutiveslist.fin',{'username':username},function(data){
		$('#executives').html(data);
	});
});

//Drawing Dialog box in Admin Pannel
$(document).ready(function(){
	//alert('LayOut Image');
	var i;
	$('#dialogs').hide();
	$('#layout_image').click(function(){
		//alert('You  Clicked on Image');
	$('#dialogs').addClass('box_content1');
	
	$('#dialogs').show();	
	});
	$('#close').click(function(){
		$('#dialogs').hide();
	});
});


//Events on Drawing Panel.
$(document).ready(function(){
$('.block').addClass('fieldcolor');
	var i;
for(i=0;i<=10;i++){
	$('#blk1').append('<tr>	<td width="20px" height="10px"></td><td width="20px" height="10px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
	$('#blk2').append('<tr>	<td width="20px" height="10px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
	$('#blk3').append('<tr>	<td width="20px" height="10px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
	$('#blk4').append('<tr>	<td width="20px" height="10px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
}

$(' table #blk1 tr:eq(0) td:eq(0)').css('background-color','blue');
	
});



//Display Sales Manager By Selecting Department.
$(document).ready(function(){
	$('#dept2').blur(function(){
		var dept1=$('#dept2').val();
		//alert(dept1);
		$.get('gettingmanagersbydept.fin',{'department':dept1},function(data){
			//alert(data);
			$('#slmlist').html(data);
		});
		
	});
	
	
		
	
	
		//alert('Entered');
		$('#slmlist').blur(function(){
			//alert('Hai');
			var username=$('#slmlist').val();
			//alert(username);
			$.get('tele_manager_name.fin',{'username':username},function(data){
				//alert(data);
				$('#empname').text(data).show().delay(3000).fadeOut();
			});
		});
});
	



//Sales Invoice form Total Amount.
$(document).ready(function(){
	var tax=null;
	var vat=null;
	////alert('Hello');
	var companyname=$('#companyname').val();
	$.getJSON('fn_invoice_tax_details.fin',{'companyname':companyname},function(json){
	tax=json.tax;
	vat=json.vat;
	eduservicetax=json.eduservicetax;
	$('#tax1').html(tax);
	$('#vat1').html(vat);
	//alert(tax);
	//alert(vat);
	//alert(eduservicetax);
	});
	$('#quantity').blur(function(){
		
		var unitprice=parseInt($('#price').val());
		var quan=parseInt($('#quantity').val());
		var total=parseInt(unitprice*quan);
		//alert(total);
		$('#totalamount').val(total);
		var servicetax=(total*tax)/100;
		//alert(servicetax);
		$('#servicetax').val(servicetax);
		var vat1=(total*vat)/100;
		//alert(vat1);
		$('#vat').val(vat1);
		var net=total+vat1+servicetax;
		//alert(net);
		$('#net').val(net);
	
	});
	
	
});

//Getting Slaes Manager by executive username.
$(document).ready(function(){
	////alert('Hello');
	var deltby=$('#sldeltby').val();
	$.get('view_manager_by_executive.fin',{'username':deltby},function(data){
	$('#slmanager').val(data);
	});
	$.getJSON('gettinginvoicenos.fin',function(json){
		var invoiceno=parseInt(json.invoiceno);
		var invoiceid=parseInt(json.invoiceid);
		var referenceno=parseInt(json.referenceno);
		invoiceno=invoiceno+1;
		invoiceid=invoiceid+1;
		referenceno=referenceno+1;
		$('#incid').val(invoiceid).attr('readonly',true);
		$('#incno').val(invoiceno).attr('readonly',true);
		$('#refno').val(referenceno).attr('readonly',true);
	});
});

//OrderNO
$(document).ready(function(){
	$.get('gettingorderno.fin',function(data){
		if(data==null){
			$('#orderno').val(1);
		}
		else{
			var orderno=parseInt(data);
			orderno=orderno+1;
			$('#orderno').val(orderno);
		}
	});
});


//View Villa Details.

function villaDetails(){
	//alert('Hai');
	$('#villa_details').addClass('villa_details');
	
	//	alert("Hai");
	/*alert('Before Json Class');
	$.getJSON('villadetails12.fin',function(json){
		alert('Json Class');
		//alert(json.villaname);
		//alert(json.json.villafacing);
		var villaname=json.villaname;
		var villafacing=json.villafacing;
		var totalvillas=json.totalvillas;
		var villaleft=json.villasleft;
		alert(villaname);
		alert(villafacing);
		alert(totalvillas);
		alert(villaleft);
		$('#details').html("<table><tr><td>Name</td><td>Face</td><td>Type</td><td>TotalVillas</td><td>Remaining</td></tr>" +
					"<tr><td>"+villaname+"</td><td>"+villafacing+"</td><td>"+villatype+"</td><td>"+totalvillas+"</td><td>"+villaleft+"</td></tr>"+"</table>");
	});
*/}







$(document).ready(function(){
var username=$('#user2').val();
//alert('Hai');
$.getJSON('gettingexecutivedata.fin',{'username':username},function(json){
	var department1=json.depart1;
	var manager=json.manager;
	$('#dept1').val(department1);
	$('#mgr1').val(manager);
	
	});
return false;
});

//Finance Customer Details.
$(document).ready(function(){
	$('#ampaid').blur(function(){
		////alert('Hello');
		var total=parseInt($('#totalam1').val());
		//alert(total);
	
		var amountpaid=parseInt($('#ampaid').val());
		//alert(amountpaid);
		var custid=$('#custid').val();
		//alert(custid);
		$.getJSON('gettingfiancedetial.fin',{'username':custid},function(json){
			//alert(data);
			amountpaid=amountpaid+parseInt(json.amount);
			var remainingamount=total-amountpaid;
			//alert(remainingamount);
			var payinginstallment=parseInt(json.installment);
			payinginstallment=payinginstallment+1;
			var totalinstallemts=$('#totalinst').val();
			//alert(payinginstallment);
			//alert(totalinstallemts);
			if(total<=remainingamount){
				$('#rmamount').val(0);
			}else{
				$('#rmamount').val(remainingamount);	
				$('#payinginstall').val(payinginstallment);
			}
				
			});
		
	});
	
});

//Paying Installment Number.




//Pagination Table.

	////alert('Hello');
	
$(document).ready(function(){
	$('#page_nation_table').mouseover(function(){
		
	});
});

//Finance Strart
//Daily Auto Expenses.
$(document).ready(function(){
	
});
	
//Drop Down for Under 
$(document).ready(function(){
	var compname=$('#companyid').val();
		$.get('fn_drop_down_for_under.fin',{'companyname':compname},function(data){
			//alert(data);
			$('#groupsdata').html(data);
	});
});
//Drop Down for Voucher Type.
$(document).ready(function(){
	//alert('hai');
	$.get('fn_drop_down_for_voucher_type.fin',function(data){
		//alert(data);
		$('#vochertypedata').html(data);
	});
});

//Mobile number

$(document).ready(function(){
	$('.mob').prop('maxlength',10);
});

//Alert Messages.
function meetingAlert(){
	//alert('Hai');
	var username=$('#username').val();
	$.get('hlp_remainder.fin',{'username':username},function(data){
		alert(data);
	});
	$.get('hlp_alert_before_week.fin',{'username':username},function(data1){
		alert(data1);
	});
}


//List the SalesManager in DailyTasks Page.

$(document).ready(function(){
	/*alert('Managers List');*/
	$.get('hlp_list_managers.fin',function(data){
		$('.slmanagerids').html(data);
	});
	return false;
});

//Access Controller on Managers.
$(document).ready(function(){
	$.get('hlp_manager_task.fin',function(data){
		$('.empid1').val(data);
	});
	return false;
});

//Access Permission.
$(document).ready(function(){
	$('#acess').addClass('access');
	$('#noaccess').addClass('notaccess');
	
	$("a").on('click',function(e){
		var elementid=$(this).attr('id');
		//alert(elementid);
		elementid.localeCompare("acess");
		var deltby=$('.empid2').val();
		var accessby=$('.slmanagerids').val();
		/*alert(deltby);
		alert(accessby);*/
		if(elementid==='acess')
		{
			/*alert("Access Field");
			alert('Employee Id'+deltby);
			alert('Access By'+accessby);*/
			$.post('grant_access_to_othermanager.fin',{'deltby':deltby,'accessby':accessby},function(data){
			alert('Access Granted');
			});
		}
	});
});


//Auto Travel Expenses Calculation.

$(document).ready(function(){
	//alert('Auto Travel Expenses');
	//Milage Calculation .
	$('#endmilage').blur(function(){
		var startmil=$('#startmilage').val();
		var endmil=$('#endmilage').val();
		var totalmil=endmil-startmil;
		//alert('Total Milage\t'+totalmil);
		$('#totalmilage').val(totalmil).attr('readonly','true');	
	});
});
$(document).ready(function(){
	//Amount Calculation For Milage.
	$('#priceperlit').blur(function(){
		var totalmil=$('#totalmilage').val();
		var dateofprice=$('#priceperlit').val();
		var totalamount=dateofprice*totalmil;
		//alert('Total Amount'+totalamount);
		$('#totalamount').val(totalamount).attr('readonly','true');
	});
});



//Profit And Loss Display Starts


function displayProfitAndLoss(){
	//Getting Indirect Expenses
//alert('Hai');
	
	var purchaseaccount;
	var carrageoutward;
	
	
	var companyname=$('#companyid').val();
	
	/*$.post('hlp_TotalAutoTravelExpenses.fin',function(data){
	//	alert('Auto Travel Expenses'+data);
		
	});*/
	//Carriage Out Ward.
	$.get('fn_PL_carrage_Out_ward.fin',{'companyname':companyname}, function(data){
		//alert('Carrage out ward');
		
		if(data!="0.0"){
	
			carrageoutward=data;
		}else{
			carrageoutward=0.0;
		}
		$('#carrage_out_ward').html(data);
	});
	//Carriage In Ward
	function viewCarrageInWard(){
		$.get('fn_PL_Carriage_In_Ward.fin',{'companyname':companyname},function(data){
			//	alert('Carrage IN ward'+data);
				$('#carrage_in_ward').html(data);
			});	
	}
	
	
	
	
	//OpenStock
	$.get('fn_PL_OpenStock.fin',{'companyname':companyname},function(data){
		//alert('Opening Stock'+data);
		$('#open_stock').html(data);
	});
	//Direct Expenses
	$.get('fn_PL_DirectExpenses.fin',{'companyname':companyname},function(data){
		$('#direct_expenses').html(data);
	});
	//Duties And Taxes
	$.get('fn_PL_DutiesAndTaxes.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#duties_taxes').html(data);
	});
	$.get('fn_PL_DirectIncome.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#direct_income').html(data);
	});
	$.get('fn_PL_ClosingStock.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#closing_stock').html(data);
	});
	$.get('fn_PL_IndirectIncome.fin',{'companyname':companyname},function(data){
	
		//alert(data);
		$('#indirect_income').html(data);
	});
	
	$.get('hlp_PurchaseAccountAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		
		if(data !="0.0"){
			
			purchaseaccount=data;
		}else{
			purchaseaccount=0.0;
		}
		$('#purchases_accounts').html(data);
	});
	$.get('hlp_SalesAccountAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#sales_account').html(data);
	});
	
	//alert('Company Name\t'+companyname);
	$.get('fn_indirect_exp_total_details.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#indirect_expenses').html(data);
	});
	
	//alert('DR Amount');
	$.get('totalDRAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#dr_total').html(data);
	});
	
	$.get('hlp_totalOutWard.fin',{'companyname':companyname},function(data){
		$('#totalwages').html(data);
	});
	
	$.get('hlp_totalCR.fin',{'companyname':companyname},function(data){
		$('#cr_total').html(data);
	});
	
	$.getJSON('hlp_profitorloss.fin',{'companyname':companyname},function(json){
		
		var profitorloss=json.profitorloss;
		var result=json.result;
		
		
		if(profitorloss=='Y'){
			//alert('Profit');
			$('#profit').html(result).css('color','Green');
			$('#loss').hide();
		}else if(profitorloss=='N')
		{
			//alert('Loss');
			$('#loss').html(result).css('color','Red');
			$('#profit').hide();
		}
	});
	
	/*$.post('hlp_groupAmount.fin',{'groupname':'IndirectExpenses'},function(data){
		//alert(data);
		total2=parseInt(data);

		total2=total1+total2;
		alert(total2);
		
	});*/
	
	//alert('Purchase Account'+carrageoutward);
	//alert('CarrageOutWard'+purchaseaccount);

	
}

//Carrage Out Ward
function viewCarrageOutWard(){
	var companyname=$('#companyid').val();
//	alert('hello');
	$.get('fn_PL_carrage_Out_ward_list.fin',{'companyname':companyname},function(data){
		
		$('#carrage_out_ward_list').html(data);
	});	
}


function viewVoucherPayment(){
	var companyname=$('#companyid').val();
	$.get('hlp_voucherPurchaseAccount.fin',{'companyname':companyname},function(data){
		$('#voucher_purchase_details').html(data);
	});
}


function displayIndirectExpenses(){
	//alert('Hello!');
	$.get('hlp_IndirectExpenses.fin',function(data){
		//alert(data);
		$('#indirectexp').html(data);
	});
	
}
function displayAmountOfIndirectExpenses(){
	var companyname=$('#companyid').val();
	
	$.get('hlp_IndirectExpensesAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#auto_travel_expenses').html(data);
	});
	$.get('hlp_IndirectPhoneBillExpensesAmount.fin',{'companyname':companyname},function(data){
	//	alert(data);
		$('#phonebillexp').html(data);
	});
	$.get('hlp_IndirectHotelExpensesAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#hotelexp').html(data);
	});
	$.get('hlp_IndirectFoodExpensesAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#foodexp').html(data);
	});
	$.get('hlp_IndirectEntertainmentExpensesAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#entertainmentexp').html(data);
	});
	$.get('hlp_IndirectMisExpensesAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#mis_exp').html(data);
	});
	$.get('hlp_displayInternetExp.fin',{'companyname':companyname},function(data){
		//alert('Internet Exp'+data);
		$('#inernet_exp').html(data);
	});
	$.get('hlp_displayAdvertisementExp.fin',{'companyname':companyname},function(data){
		//alert('Advertisement Exp'+data);
		$('#adv_exp').html(data);
	});
	$.get('hlp_displayOfficeExp.fin',{'companyname':companyname},function(data){
		//alert('Office Exp'+data);
		$('#off_exp').html(data);
	});
	$.get('hlp_displayRepairExp.fin',{'companyname':companyname},function(data){
		//alert('Repair Exp'+data);
		$('#rep_main_exp').html(data);
	});
	$.get('hlp_displayPostageExp.fin',{'companyname':companyname},function(data){
		//alert('Postage Exp'+data);
		$('#post_cou_exp').html(data);
	});
	$.get('hlp_displaySalaryExp.fin',{'companyname':companyname},function(data){
		//alert('Salary Exp'+data);
		$('#salary_exp').html(data);
	});
	$.get('hlp_displaySundryStaffExp.fin',{'companyname':companyname},function(data){
		//alert('Sundry Staff Welfare'+data);
		$('#sundry_staff_exp').html(data);
	});
	
	$.get('fn_indirect_exp_total_details.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#totalexp').html(data);
	});
	
	
	return false;
}
//Indirect Expenses List
//Travel Exp
function viewAutoTravelExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_auto_travel_exp.fin',{'companyname':companyname},function(data){
		$('#travelexp').html(data);
	});
}
//Phone Bill Exp
function viewPhoneBillExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_phone_bill_exp.fin',{'companyname':companyname},function(data){
		$('#phoneexp').html(data);
	});
}
function viewHotelExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_hotel_exp.fin',{'companyname':companyname},function(data){
		$('#hotelexp').html(data);
	});
}

function viewFoodExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_food_exp.fin',{'companyname':companyname},function(data){
		$('#foodexp').html(data);
	});
}
function viewEntertainmentExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_entertainment_exp.fin',{'companyname':companyname},function(data){
		$('#enterexp').html(data);
	});
}

//Mislleneous Exp
function viewMisleneousExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_misleneous_exp.fin',{'companyname':companyname},function(data){
		$('#misexp').html(data);
	});
}

//InternetExp
function viewInterNetExp(){
var companyname=$('#companyid').val();
$.get('fn_pl_internet_exp.fin',{'companyname':companyname},function(data){
$('#internetexp').html(data);	
});
}

function viewAdvertisementExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_advertisement_exp.fin',{'companyname':companyname},function(data){
	$('#advexp').html(data);	
	});
}
function viewOfficeExp(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_office_exp.fin',{'companyname':companyname},function(data){
	$('#officeofexp').html(data);	
	});
}
function viewRepairAndMaintenance(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_repair_exp.fin',{'companyname':companyname},function(data){
	$('#repairexp').html(data);	
	});
	
	
}
function viewDutiesAndTaxes(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_dutiesandtaxes.fin',{'companyname':companyname},function(data){
	$('#dutiesandtaxexp').html(data);	
	});
}
function viewDirectExpenses(){
	var companyname=$('#companyid').val();
	$.get('fn_pl_direct_exp_list.fin',{'companyname':companyname},function(data){
	$('#directexp').html(data);	
	});
	
	
}
function viewSalesAccount(){
	var companyname=$('#companyid').val();
	$.get('fn_PL_SalesAccount.fin',{'companyname':companyname},function(data){
	$('#salesaccount').html(data);	
	});
	
}
function viewDirectIncome(){
	var companyname=$('#companyid').val();
	$.get('fn_PL_SalesAccount.fin',{'companyname':companyname},function(data){
	$('#salesaccount').html(data);	
	});
}
function displayBalanceSheet(){
		////alert('Hello');
	var companyname=$('#companyid').val();
	//alert('Hai');
	$.get('hlp_TotalCapitalAccount.fin',{'companyname':companyname},function(data){
		//alert('TotalCapitalAccount'+data);
		$('#totalcapitalaccount').html(data);
	});
	//alert('Hai');
	$.get('hlp_total_ReverseSurplus.fin',{'companyname':companyname},function(data){
		$('#total_rev_amount').html(data);
	});
	//alert('Total Loan Liabilites');
	$.get('hlp_totalLoanLiabilites.fin',{'companyname':companyname},function(data){
		//alert('Loans and Liabilites Total'+data);
		$('#loansandliabilitestotal').html(data);
	});
	//TotalCurrnetLiabilities
	$.get('fn_TotalCurrentLiabilitesAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#total_current_liabilites').html(data);
	});
	$.get('fn_fixedAssetsAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#fixed_assets_value').html(data);
	});
	
	$.get('fn_investmentAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#investments').html(data);
	});
	//CurrentAssets
	
	$.get('hlp_current_assets_total.fin',{'companyname':companyname},function(data){
		//alert("Current Assets Amount"+data);
	$('#current_assets_total').html(data);	
	});
	
	//Loan Liabilites
	$.get('hlp_displayLoansandAdvances.fin',{'companyname':companyname},function(data){
		//alert('Loans (Liablities)'+data);
		$('#loansandadv').html(data);
	});
	$.get('hlp_OtherCurrentLiabilitesamount.fin',{'companyname':companyname},function(data){
		$('#oclamount').html(data);
	});
	$.get('hlp_SuspenseAccountAmount.fin',{'companyname':companyname},function(data){
		$('#suspenseaccount').html(data);
	});
	//alert("Inventory Amount");
	$.get('hlp_InventoryAmount.fin',{'companyname':companyname},function(data){
		//alert("Inventory Amount"+data);
		$('#inventoryamount').html(data);
	});
	//alert("Provision Amount");
	$.get('hlp_ProvisionAmount.fin',{'companyname':companyname},function(data){
		//alert('Provision Amount'+data);
		$('#provisionamount').html(data);
	});

//Liabilites Total
$.get('hlp_bl_totallibilites.fin',{'companyname':companyname},function(data){
	
	$('#liabilitestotal').html(data);
	
});
//Assets Total	
$.get('hlp_bl_totalassets.fin',{'companyname':companyname},function(data){
	$('#totalassets').html(data);
	
});


}
//Capital Account
function viewCapitalAccount(){
	var companyname=$('#companyid').val();
	$.get('hlp_TotalCapitalAccount.fin',{'companyname':companyname},function(data){
		var d1=data;
		//alert('Capital Account'+data);
		$('#total_amount').html(data);	
		//alert('Loan Liabilites');
	});
	

	//alert('Hai');
	$.get('hlp_PaidUpSharedAccount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#paidupsharedaccount').html(data);
	});
	$.get('hlp_CapitalAccount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#capitalaccount').html(data);
	});
}

function viewCapitalAccountList(){
	var companyname=$('#companyid').val();
	$.get('hlp_capital_account_list.fin',{'companyname':companyname},function(data){
		$('#capitalaccountlist').html(data);
	});
}
function viewPaidUpSharedCapital(){
	var companyname=$('#companyid').val();
	$.get('hlp_shared_capital_account_list.fin',{'companyname':companyname},function(data){
		$('#paidcapitalaccountlist').html(data);
	});
}

//2

//Reserver Surplus.
function viewReserveSurplus(){
	//alert('Hai');
	var companyname=$('#companyid').val();
$.get('hlp_displayReverseSurplus.fin',{'companyname':companyname},function(data){
	$('#reserve_surplus').html(data);
});
//alert('Hai');
$.get('hlp_displayRetainEarning.fin',{'companyname':companyname},function(data){
	//alert(data);
	$('#retearning').html(data);
});

$.get('hlp_total_ReverseSurplus.fin',{'companyname':companyname},function(data){
	$('#total_rev_amount').html(data);
});

}
function viewReverseSurplusList(){
	var companyname=$('#companyid').val();
	$.get('hlp_reserve_surplus_list.fin',{'companyname':companyname},function(data){
		$('#reverse_surplus_list1').html(data);
	});
}
function viewRetainEarning(){
	var companyname=$('#companyid').val();
	$.get('hlp_retain_earning_list.fin',{'companyname':companyname},function(data){
		$('#retain_earning').html(data);
	});
}
//3
//Loans Liabilites
function viewLoansLiabilites(){
	var companyname=$('#companyid').val();
	//alert("Loans Liabilites");
	$.get('hlp_LoanLiabilites.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#loanlibilites').html(data);
	});
	//alert('Secured Loans');
	$.get('hlp_SecuredLoans.fin',{'companyname':companyname},function(data){
		//alert('Secured Loan'+data);
		$('#secured_loan').html(data);
	});
	//alert('Unsecured Loan');
	$.get('hlp_UnSecuredLoans.fin',{'companyname':companyname},function(data){
		$('#unsecuredloan').html(data);
	});
	
	//alert('Total Loan Liabilites');
	$.get('hlp_LoanLiabilites.fin',{'companyname':companyname},function(data){
		//alert('Loans and Liabilites'+data);
		$('#loansandliabilitestotal').html(data);
	});
	
	
}
//Secured Loan List
function viewSecuredLoan(){
	var companyname=$('#companyid').val();
	$.get('hlp_un_secured_loan_list.fin',{'companyname':companyname},function(data){
		$('#secureloanlist').html(data);
	});
}
//Un Secured Loan List
function viewUnSecuredLoan(){
	var companyname=$('#companyid').val();
	$.get('hlp_un_secured_loan_list.fin',{'companyname':companyname},function(data){
		$('#unsecureloanlist').html(data);
	});
}

/*function viewLoansAndLiabilitesList(){
	var companyname=$('#companyid').val();
	$.get('',{'companyname':companyname},function(data){
		//alert(data);
		$('#loansandliabilitestotal').html(data);
	});
}*/


function viewSundryCreditors(){
//	alert('Sundry Creditors');
	var companyname=$('#companyid').val();
	$.get('hlp_SundryCreditorsdetails.fin',{'companyname':companyname},function(data){
		$('#sundry_creditors').html(data);	
	});
	
}
//Other Current Liabilites
function viewOtherCurrentLiabilites(){
	var companyname=$('#companyid').val();
	$.get('hlp_OtherCurrentLiabilitesdetails.fin',{'companyname':companyname},function(data){
		$('#othercurrentliabilites').html(data);	
	});
}
//Suspense Account
function viewSuspenseAccount(){
	var companyname=$('#companyid').val();
	$('hlp_SuspenseAccountDetails.fin',{'companyname':companyname},function(data){
		$('#suspenseaccount').html(data);
	});
}

function viewCurrentLiabilites(){
	var companyname=$('#companyid').val();
	//alert('Current Liabilites');
	//SundryCreditors
	$.get('hlp_SundryCreditorsAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#sundary_creditors').html(data);
	});
	
	$.get('fn_currentLiabilitesAmount.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#current_liabilites').html(data);
	});
}
function viewCurrentLiabilitesList(){
	$.get('fn_currentLiabilitesLedgerList.fin',{'companyname':companyname},function(data){
		$('#currentliabiliteslist').html(data);
	});
}
function viewSuspenseAccount(){
	alert('Suspense Account');
}

function viewFixedAssets(){
	alert('Fixed Assets');
	var companyname=$('#companyid').val();
	$.get('fn_fixedAssetsList.fin',{'companyname':companyname},function(data){
		$('#fixedassetslist').html(data);
	});
}

function viewBankAndCash(){
	
}

function sundryCreditors(){
	$.get('hlp_SundryCreditorsdetails.fin',function(data){
		//alert(data);
		$('#sundry_creditors').html(data);
	});
}




//Current Assets
function currentAssets(){
	//alert('Hello!');
	var companyname=$('#companyid').val();
	$.get('hlp_CashinHand.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#cash_in_hand').html(data);
	});
	
$.get('hlp_displayLoansandAdvances.fin',{'companyname':companyname},function(data){
	//alert('Loans And Advances'+data);
		$('#loansandadv').html(data);
	});
$.get('hlp_bl_Bank&Cash.fin',{'companyname':companyname},function(data){
	//alert('Bank And Cash'+data);
	$('#bank_cash').html(data);
})	;
//alert('Current Assets');
$.get('hlp_current_assets.fin',{'companyname':companyname},function(data){
	//alert(data);
	$('#current_assets1').html(data);
});

}
function currentAssetsList(){
	var companyname=$('#companyid').val();
	$.get('hlp_current_assets_list.fin',{'companyname':companyname},function(data){
		$('#currentassetslist').html(data);
	});
}	
function cashInHandList(){
	var companyname=$('#companyid').val();
	$.get('hlp_cash_in_hand_list.fin',{'companyname':companyname},function(data){
		$('#cash_in_hand_list').html(data);
	});
}
function bankAndCash(){
	var companyname=$('#companyid').val();
	$.get('hlp_bank_and_cash_list.fin',{'companyname':companyname},function(data){
		$('#bank_and_cash_list').html(data);
	}); 
}
function viewLoansAndAdv(){
	var companyname=$('#companyid').val();
	$.get('hlp_loans_and_adv_list.fin',{'companyname':companyname},function(data){
		$('#loans_and_adv').html(data);
	});
	$.get('hlp_displayLoansandAdvances.fin',{'companyname':companyname},function(data){
		//alert('Loans And Advances'+data);
			$('#totaladv').html(data);
		});
}

//Investments
function viewInvestments(){
	var companyname=$('#companyid').val();
	$.get('hlp_investment_list.fin',{'companyname':companyname},function(data){
		$('#investment').html(data);
	});
}

function viewInventory(){
	var companyname=$('#companyid').val();
	$.get('hlp_InventoryDetails.fin',{'companyname':companyname},function(data){
		$('#inventorydetails').html(data);
	});
}

//Mislenious items sizes and maximum length.
$(document).ready(function(){
	
	$('#mobile').attr('maxlength','10');
	//$('.name').attr('size','30');
});


$(document).ready(function(){
	////alert('Hello');
	//Particulars in VoucherJournal.
	$.get('hlp_particulars1.fin',function(data){
		//alert(data);
		$('.particular1').html(data);
	});
	//Stock Items.
	/*$.get('',function(data){
		
	});*/
});

$(document).ready(function(){
	var sno;
	$.get('hlp_VoucherJournalSno.fin',function(data){
		//alert(data);
		if(data==null){
			sno=1;
			//alert("Data is Null");
		}else{
			sno=parseInt(data)+1;
			//alert(sno);	
			//alert("Data is Not Null");
			$('#journalreciptno').val(sno);
		}
		
	});
	return false;	
});

//Villa Detials on the Home page of every User.
function villaDetails(){
	//alert('Hai');
	$.get('hlp_displayVillaDetails.fin',function(data){
		//alert(data);
		$('#villa_total_details').html(data);
	});	
}

$(document).ready(function(){
	////alert('Hello');
	$.get('hlp_tel_agent.fin',function(data){
		//alert(data);
		$('#agentid').html(data);
	});
	$('#agentid').blur(function(){
		//alert('Hai');
		var agentid=$('#agentid').val();
		//alert(agentid);
		$.get('hlp_tel_agent_name.fin',{'agentid':agentid},function(data){
			//alert(data);
			$('#agentname').val(data);
		});
	});
});
//Indirect Expenses.
$(document).ready(function(){
	$.get('fn_ledgerdetails.fin',function(data){
		//alert(data);
		$('#ledgerdetailslist').html(data);
	});
});

//IndirectExpenses.
$(document).ready(function(){
	var companyname=$('#companyid').val();
	
	$.get('fn_ledgerdetails_for_indirect_exp.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('.ledgerdetailslist1').html(data);
	});
});

$(document).ready(function(){
	
	var compname=$('#companyid').val();
	//alert(compname);
	$.get('fn_logo_path.fin',{'companyname':compname},function(data){
		//alert(data);
		var imagedetails=$('.logo_image');
		$(imagedetails).prop('src',data);
		$(imagedetails).css('width','150px');
		$(imagedetails).css('height','80px');
		
	});
});

$(document).ready(function(){
	////alert('Hello');
	var companyname=$('#companyid').val();
	$.get('fn_ledgerdetails.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('.ledgerlist').html(data);
	});
});

$(document).ready(function(){
	
	$('#emailid').blur(function(){
		var emailid=$('#emailid').val();
		$('#userid').val(emailid);
	});
	
});

$(document).ready(function(){
	$('#reenterpassword').blur(function(){
		var password=$('#password').val();
		var repassword=$('#reenterpassword').val();	
		if(password==repassword){
			
		}
		else{
			$('#password').val('');
			$('#reenterpassword').val('');
		}
	});
	
	
});
$(document).ready(function(){
	$('.flip').hide();
	//$('#login_user').show();
	$('#login_user').click(function(){
		//$('#login_user').show("scale",500);
		$('.flip').slideToggle('slow').addClass('.flip');
		
	});
});

$(document).ready(function(){
	var companyname=$('#companyid').val();
	$.get('hlp_ListEmployee.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('#employeelist').html(data);
	});
	
	
});

//University List
function studentDetails(){
	var comp=$('#comp1').val();
	//alert(comp);
	$.get('hlp_UniversityList.fin',{'comp':comp},function(data){
		//alert(data);
		$('#univ').html(data);
	});
	$('#univ').blur(function(){
		
	
	var univ=$('#univ').val();
//	alert(univ);
	$.get('hlp_CourseListByUniversity.fin',{'comp':comp,'univ':univ},function(data){
	//	alert(data);
		$('#course').html(data);
	});});
}
$(document).ready(function(){
	$('#othfee').blur(function(){
		var cfee=parseInt($('#cfee').val());
		var efee=parseInt($('#efee').val());
		var cenfee=parseInt($('#cenfee').val());
		var apfee=parseInt($('#apfee').val());
		var othfee=parseInt($('#othfee').val());
		var totalfee=cfee+efee+cenfee+apfee+othfee;
		//alert('Total Fee\t'+totalfee);
	
		$('#totalfee').val(totalfee);
		
	});
	
	$('#paidfee').blur(function(){
		
		var totalfee=$('#totalfee').val();
		var paid=parseInt($('#paidfee').val());
		//alert('Paid Amount'+totalfee);
		//alert('Balance'+paid);
		
		
		if(totalfee>paid){
			balance=totalfee-paid;
		}else if(totalfee<paid){
			balance='';
		}else if(totalfee==paid){
			balance='';
		}
		//alert(balance);
		
		$('#balance').val(balance);
	});
	
	
});

function genPaySlip(){
	//alert('Json1');
	var sno=$('#sno').val();
	$.getJSON('fn_get_json_payroll.fin',{'id':sno},function(json1){
		
		//alert(json1.basic);
		
		
		$('#empname').val(json1.Name);
		$('#empid').val(json1.Empid);
		$('#bankac').val(json1.bankac);
		$('#pfno').val(json1.pfno);
		$('#dept').val(json1.dept);
		$('#pannumber').val(json1.panno);
		$('#desig').val(json1.desig);
		
		$('#basic').val(json1.basic).prop('readonly',true);
		$('#pf').val(json1.pf);
		$('#hra').val(json1.hra).prop('readonly',true);
		$('#conv').val(json1.conv).prop('readonly',true);
		$('#da').val(json1.da).prop('readonly',true);
		
		$('#grat').val(json1.grat);
		$('#sa').val(json1.sa).prop('readonly',true);
		$('#it').val(json1.it).prop('readonly',true);
		$('#ded').val(json1.ded);
		
		
		
	});
	
	$('#ched').blur(function(){
		alert('Changed From Child Education');
		var basic=parseInt($('#basic').val());
		var hra=parseInt($('#hra').val());
		var conv=parseInt($('#conv').val());
		var da=parseInt($('#da').val());
		var sa=parseInt($('#sa').val());
		var medical=parseInt($('#medical').val());
		var ched=parseInt($('#ched').val());
		
		alert(medical);
		alert(ched);
		if(medical=='' || medical==null){
			medical=0;
		}
		if(ched=='' || ched==null){
			ched=0;
		}
		alert(medical);
		alert(ched);
		var totalallowence=basic+hra+conv+da+sa+medical+ched;
		alert(totalallowence);
		$('#gs').val(totalallowence).prop('readonly',true);
	});
	
	$('#otherded').blur(function(){
		alert('Deductions ');
		var pf=parseInt($('#pf').val());
		var pt=parseInt($('#pt').val());
		var it=parseInt($('#it').val());
		var otherded=parseInt($('#otherded').val());
		
		var totalded=pf+pt+it+otherded;
		alert(totalded);
		$('#totded').val(totalded).prop('readonly',true);
		
		
	});
	
	$('#totded').blur(function(){
		alert('net Salary');
		var gs=parseInt($('#gs').val());
		var totded=parseInt($('#totded').val());
		var net;
		if(gs>totded){
			net=gs-totded;
			$('#net').val(net).prop('readonly',true);
			$('#fialsalary').val(net).prop('readonly',true);
		}else
			if(gs<totded)
		{
			net=totded-gs;
			$('#net').val(net).prop('readonly',true);
			$('#fialsalary').val(net).prop('readonly',true);
		}else{
			net=0;
			$('#net').val(net).prop('readonly',true);
			$('#fialsalary').val(net).prop('readonly',true);
		}
	});
	
}

$(document).ready(function(){
	//alert('Memo Images');
	var compname=$('#enrollno').val();
	//alert(compname);
	$.get('fn_memo_path.fin',{'companyname':compname},function(data){
	//	alert(data);
		var imagedetails=$('.viewMemoImages');
		$(imagedetails).prop('src',data);
		$(imagedetails).css('width','150px');
		$(imagedetails).css('height','80px');
		
	});
});

$(document).ready(function(){
	//alert('Student Images');
	var compname=$('#enrollno').val();
	//alert(compname);
	$.get('fn_student_path.fin',{'companyname':compname},function(data){
	//	alert(data);
		var imagedetails=$('.viewStudentImage');
		$(imagedetails).prop('src','/memoimg/studentimages/'+data);
		$(imagedetails).css('width','150px');
		$(imagedetails).css('height','80px');
		
	});
});
