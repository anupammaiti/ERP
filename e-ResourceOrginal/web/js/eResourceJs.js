/**
 * 
 */
//Company List
$(document).ready(function(){
	//alert('Hello');
	$.get('CompanyList',function(data){
		//alert(data);
		var complist=data;
		$('#companylist').append(complist);
	});
	return false;
});

//Department List
$(document).ready(function(){
	//alert("Hello");
	$.get('DepartmentList',function(data){
		//alert(data);
		
		$('#department1').html(data);
	});
	return false;
});
//Designation List
$(document).ready(function(){
	//alert('Hello');
	$.get('DesignationList',function(data){
		//alert(data);
		$('#designation1').html(data);
	});
	return false;
});

//Mode Of Employee List
$(document).ready(function(){
	//alert('Hello');
	$.get('ModeOfEmployeeList',function(data){
		//alert(data);
		$('#modeofemployee').html(data);
	});
});



//PaySlip Calculations.
function paySlipCalculation(){
	//alert('Calculations started');
	var empid=$('#empid').val();
	//alert('Empid'+empid);
	$.get('PaidDaysList',{'empid':empid},function(data){
		//alert('Paid Days'+data);
		$('#paiddays').val(data).attr("readonly",true);
	});
	//alert('Hello');
	$.getJSON('PaySlipCalculations',{'empid':empid},function(json){
		//alert('hai');
		
		var basic=json.basic;
		var hra=json.hra;
		var sa=json.sa;
		var da=json.da;
		var pf=json.pf;
		var mctc=json.gs;
		var it=json.it;
		var totalded=json.ded;
		var netsalary=json.netsalary;
		var loan=json.loan;
		
		//alert("jsonlist"+basic,hra);
		$('#basic').val(basic);
		$('#hra').val(hra);
		$('#conv').val('0');
		$('#da').val(da);
		$('#sa').val(sa);
		$('#pf').val(pf);
		$('#loan').val(loan);
		$('#gs').val(mctc);
		$('#it').val(it);
		$('#totded').val(totalded);
		$('#net').val(netsalary);
		$('#fialsalary').val(netsalary);
		
	});

	
}

$(document).ready(function(){
	//alert('Hai');
	
	$('#noofmonths').blur(function(){
		//alert('Hello');
		
		var loanamount=$('#loan_amount').val();
		var noofmonths=$('#noofmonths').val();
		/*alert(loanamount);
		alert(noofmonths);*/
		
			var monthly_amount=loanamount/noofmonths;
			/*alert("Monthly Installment"+monthly_amount);*/
			$('#monthly_amount').val(monthly_amount).attr("readonly","true");
	});
	return false;
});

/*$(document).ready(function(){
	$('#message').show().delay(5000).fadeOut();
});

$(document).keyup(function(e){
	  if(e.keyCode == 44) return false;
	});
*/

	function displayCompanyPaySlip(){
		//alert('Hello');
		var companyname=$('#companyname').val();
		var empid=$('#empid').val();
		//alert(empid);
		$.getJSON('view_CompanyPaySlip',{'companyname':companyname,'empid':empid},function(json){
			var companyname=json.companyname;
			/*alert("companyname"+companyname);*/
			var basic=json.basic;
			/*alert("Basic"+basic);*/
			var hra=json.hra;
			var pf=json.pf;
			var gratuaty=json.gratuaty;
			var da=json.da;
			var conv=json.conv;
			var mis1=json.mis1;
			var mie1=json.mie1;
			var mip1=json.mip1;
			var mis2=json.mis2;
			var mie2=json.mie2;
			var mip2=json.mip2;
			var mis3=json.mis3;
			var mie3=json.mie3;
			var mip3=json.mip3;
			var mis4=json.mis4;
			var mie4=json.mie4;
			var mip4=json.mip4;
			var mie4=json.mie4;
			var mip4=json.mip4;
			
			var fis1=json.fis1;
			var fie1=json.fie1;
			var fip1=json.fip1;
			var fis2=json.fis2;
			var fie2=json.fie2;
			var fip2=json.fip2;
			var fis3=json.fis3;
			var fie3=json.fie3;
			var fip3=json.fip3;
			var fis4=json.fis4;
			var fie4=json.fie4;
			var fip4=json.fip4;
			var fie4=json.fie4;
			var fip4=json.fip4;
			var sno=json.sno;
			/*alert("DA"+da);*/
			//alert(mis1);
			//alert(conv);
			$('#compname').val(companyname);
			$('#basic').val(basic);
			$('#hra').val(hra);
			$('#pf').val(pf);
			$('#conv').val(gratuaty);
			$('#da').val(da);
			$('#mis1').val(mis1);
			$('#mie1').val(mie1);
			$('#mip1').val(mip1);
			$('#mis2').val(mis2);
			$('#mie2').val(mie2);
			$('#mip2').val(mip2);
			$('#mis3').val(mis3);
			$('#mie3').val(mie3);
			$('#mip3').val(mip3);
			$('#mis4').val(mis4);
			$('#mie4').val(mie4);
			$('#mip4').val(mip4);
			
			$('#fis1').val(fis1);
			$('#fie1').val(fie1);
			$('#fip1').val(fip1);
			$('#fis2').val(fis2);
			$('#fie2').val(fie2);
			$('#fip2').val(fip2);
			$('#fis3').val(fis3);
			$('#fie3').val(fie3);
			$('#fip3').val(fip3);
			$('#fis4').val(fis4);
			$('#fie4').val(fie4);
			$('#fip4').val(fip4);
			$('#sno').val(sno);
			$('#conv').val(conv);
//			alert('Company PaySlip');
		});
		return false;
	}
	
$(document).ready(function(){
	//alert('Hello');
	$('#allemployeepayslip').click(function(){
		noOfDayPerMonth();
		//alert('Employee PaySlip');
		$.post('GenerateFinalPaySlip',function(data){
			
			alert('PaySlip Generated'+data);
			
		});	
	});
	
});

function noOfDayPerMonth(){
	//alert('Hello');
	var time=new Date();
	var numberOfDays = 32 - new Date(time.getFullYear (), time.getMonth(), 32).getDate();
	//alert(numberOfDays);
}

//Comapny List
function viewCompanyList(){
	
	$.get('viewCompanyList',function(data){
		//alert(data);
		var companylist=data;
		$('#companylist1').appendTo(companylist);
	});
	return false;
}
//View Designation
function viewDesignationList(){
	//alert('Hello');
	$.get('viewDesignationList',function(data){
		//alert(data);
		$('#listdisignation').html(data);
	});
return false;	
}	
//Qualification

$(document).ready(function(){
	//alert('Hello');
	$.get('viewQualifationList',function(data){
		//alert(data);
		$('#qualification1').html(data);
	});
});

//ComapnyList
$(document).ready(function(){
	
	$.get('viewCompanyList',function(data){
		//alert(data);
		$('#cplist').html(data);
		
	});
	$.get('viewDesignationList',function(data){
		//alert(data);
		$('#deptlist').html(data);
	});
	
return false;	
});
//Employee Details for Appraisal Form.
$(document).ready(function(){
	//alert('Hai');
	var empno=$('#empno').val();
	
	$.getJSON('EmployeeList',{"empno":empno},function(json){
		//alert(json);
		var empno=json.empno;
		var empname=json.appresialname;
		var reportingto=json.reportingto;
		var empmanager=json.empmanager;
		$('#emname').val(empname);
		$('#reportingto').val(reportingto);
		$('#empmanager').val(empmanager);
	});
	return false;
});

$(document).ready(function(){
//	alert('Hai');
	$('#companylist').blur(function(){
		var cname=$('#companylist').val();
		$.get('Hlp_EmpidGeneration',{'cname':cname},function(data){
	//		alert('Employee '+data);
			$('#empno').val(data);
		});
	});
});

$(document).ready(function(){
	//alert('hello');
	$('#username').change(function(){
		var username=$('#username').val();
		$.get('UserNameChecking',{username:username},function(data){
			
			if(data!='OK'){
				$('#check_user').text(data);
				//aler('Wrong One');
				$('#username').val('');
			}else{
				$('#check_user').text(data);
				//alert('Hai');
			}
			
		});
		
	});
	
	
});

$(document).ready(function(){
//	alert('pass');
	$('#repass').blur(function(){
	 var password=$('#pass').val();
	 var repassword=$('#repass').val();
	 if(password==repassword){
		 //alert('Password Correct');
	 }else {
		// alert('password Wrong!');
		 $('#pass').val('');
		 $('#repass').val('');
	 }
	});
});
//Loding logo to the company.
$(document).ready(function(){
	//alert('Company Logo');
	var compname=$('#companyid').val();
	//alert(compname);
	$.get('FetchingLogo',{'companyname':compname},function(data){
		//alert(data);
		//$('.logo_image').attr('src',data);
		
		var imagedetails=$('.logo_image');
		$(imagedetails).attr('src',data);
		$(imagedetails).css('width','120px');
		$(imagedetails).css('height','80px');
		$(imagedetails).css('margin','10px');
		
	});
});

$(document).ready(function(){
	//alert('Hai');
	var empno=$('#empno').val();
	var empname=$('#empname').val();
	var fromdate=$('#fromdate').val();
	var todate=$('#todate').val();
	var time=$('#time').val();
//	alert('Empno\t'+empno+"\tEmpname"+empname+"From Date\t"+fromdate+"\ttodate"+todate);
	$.get('LateComingSearch',{'empno':empno,'empname':empname,'fromdate':fromdate,'todate':todate,'time':time},function(data){
	//alert('Heelo'+data);
		$('.leave_details').html(data);
	
	});
	
});

$(document).ready(function(){
	
	$.getJSON('DisplayInsertedEmpDetails',function(json){
		$('.empno').htmll(json.empno);
		$('.name').val(json.name);
		$('.jod').val(json.jod);
		$('.deignation').val(json.designation);
		$('.department').val(json.department);
		$('.reportingto').val(json.reportingto);
		$('.manager').val(json.manager);
		$('.empno').val(json.empno);
		$('.name').val(json.name);
		$('.jod').val(json.jod);
		$('.deignation').val(json.designation);
		$('.department').val(json.department);
		$('.reportingto').val(json.reportingto);
		$('.manager').val(json.manager);
		
	});
	
});

/*$(document).ready(function(){
	//alert('Hello');
	var empno=$('#empid').val();
	//alert(empno);
	$.getJSON('EmployeeInfomationByID',{'empno':empno},function(json){
		var name=json.ename+json.lname;
		//alert(name);
		$('#name').val(name);
		//alert(json.designationid);
		$('#designation').val(json.designationid);
		
	});
});*/

$(document).ready(function(){
	//alert('Employee List');
	var empid=$('#username').val();
	//alert('Employee id'+empid);
	$.get('ListOfAbsetDays',{'empid':empid},function(data){
		//alert(data);
		$('.result').html(data);
	});

});

$(document).ready(function(){
	//alert('Hai');
	var comp=$('#comp1').val();
	//alert(comp);
	$.get('ReportingList',{'comp':comp},function(data){
		//alert(data);
		$('.emplist').html(data);
	});
	
});
$(document).ready(function(){
	
	$('.emplist').blur(function(){
		var empid=$(this).val();
		$.get('NameOfEmployeeByEmpId',{'empid':empid},function(data){
			//alert(data);
			$('#nameofemployee').text(data).css('color','red').show().delay(5000).fadeOut();
		});
	});
	
});