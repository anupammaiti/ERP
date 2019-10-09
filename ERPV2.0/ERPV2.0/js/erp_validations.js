/**
 * 
 */
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

$(function(){
	$('#leave-form').validate({
		rules:{
			company:"required",
			name:"required",
			employeecode:"required",
			designation:"required",
			purposeofleave:"required",
			addressonleave:"required",
			cl:"required",
			sl:"required",
			el:"required",
			lop:"required",
			
		},
		messages:{
			company:"Please enter company name",
			name:"Please enter Employee name",
			employeecode:"Please Enter Empno",
			designation:"Please Enter Designation",
			purposeofleave:"Please Enter Purpose of Leave",
			addressonleave:"Please Address on Leave",
			cl:"Please Enter CL",
			sl:"Please Enter SL",
			el:"Please Enter EL",
			lop:"Please Enter LOP",
		},
		submitHandler: function(form){
			form.submit();
		},
	});
	
});

	$(function(){
		$('#employeeform').validate({
			rules:{
				companyname:{
					required:true,
					accept:"[a-zA-Z]"
				},
				empno:{
					required:true,
					accept:"[a-zA-Z0-9]",
				},
				name:{
					required:true,
					accept:"[a-zA-Z]",
				},
				nameinhris:{
					required:true,
					accept:"[a-zA-Z]",
				},
				fathername:{
					required:true,
					accept:"[a-zA-Z]",
				},
				designation:{
					required:true,
					accept:"[a-zA-Z]",
				},
				department:{
					required:true,
					accept:"[a-zA-Z]"
				},
				reportingto:{
					required:true,
					accept:"[a-zA-Z]",
				},
				joblevel:{
					required:true,
					accept:"[a-zA-Z]",
				},
				location:{
					required:true,
					accept:"[a-zA-Z]",
				},
				nomination:{
					required:true,
					accept:"[a-zA-Z]",
				},
				birthplace:{
					required:true,
					accept:"[a-zA-Z]",
				},
				religion:{
					required:true,
					accept:"[a-zA-Z]",
				},
				pannumber:{
					required:true,
					accept:"[a-zA-Z0-9]",
				},
				passportnumber:{
					required:true,
					accept:"[a-zA-Z0-9]",
				},
				bankaccount:{
					required:true,
					accept:"[0-9]",
				},
				pfno:{
					required:true,
					accept:"[0-9]",
				},
				issueddateandplace:{
					required:true,
					date:true,
				},
				validity:"required",
				presentsalary:{
					required:true,
					accept:"[0-9]",
				},
				join_time_req:{
					required:true,
					accept:"[0-9a-z]",
				},
				username:{
					required:true,
					accept:"[a-zA-Z]",
				},
				password:"required",
				sex:{
					required:true,
				},
				dob:{
					required: true,
				      date: true
				},
				joiningdate:{
					required: true,
				      date: true
				},
				entrymanner:{
					required:true,
				},
				maritalstatus:{
					required:true,
				},
				qualification:{
					required:true,
				},
				
			},
			messages:{
			companyname:"Please enter CompanyName",
			empno:"Please enter employee no",
			name:"Please enter name",
			nameinhris:"Please enter Name in Hris",
			fathername:"Please enter Father name",
			dob:"Please enter Date Of Birth",
			jod:"Please enter Joining Date",
			designation:"Please enter Designation",
			department:"Please enter Department",
			reportingto:"Please enter Reporting to",
			joblevel:"Please enter JobLevel",
			location:"Please Enter Location",
			nomination:"Please Enter Nomination",
			birthplace:"Please Enter BirthPlace",
			religion:"Please Enter Religion",
			pannumber:"Please Enter Pannumber",
			passportnumber:"Please Enter Passportnumber",
			bankaccount:"Please Enter BankAccount",
			pfno:"Please Enter PFNo",
			issueddateandplace:"Please Enter IssuedDate",
			validity:"Please Enter Validity",
			presentsalary:"Please Enter Present Salary",
			join_time_req:"Please Enter Joining Time",
			username:"Please Enter Username",
			password:"Please Enter Password",
			sex:"Please Enter Gender",
			joiningdate:"Please Enter Joinig Date",
			dob:"Please Enter Date Of Birth",
			entrymanner:"Enter the Entry Manner",
			maritalstatus:"Enter the maritalstatus",
			},
			submitHandler: function(form){
				form.submit();
			},
		});
		
	});
	
$(function(){
	
	$('#interviewevalutionform').validate({
		
		rules:{
			
			position:"required",
			candidatename:{
				required:true,
				accept:"[a-zA-Z]",
			},
			company:{
				required:true,
				accept:"[a-zA-Z]",
			},
			apperence:{
				required:true,
				
				},
				finalassesment:"required",
				othercomments:"required",
				interviewedby:{
					required:true,
					accept:"[a-zA-Z]",
				},
				presentsalary:{
					required:true,
					accept:"[0-9]",
				},
				expectedsalary:{
					required:true,
					accept:"[0-9]",
				},
				salaryoffered:{
					required:true,
					accept:"[0-9]",
				},
				joingtime:{
					required:true,
					date:true,
				},
				department:{
					required:true,
					accept:"[a-zA-Z]",
				},
		},
		messages:{
			
			position:"Please Enter the position",
			candidatename:"Please Enter the CandidateName",
			company:"Please Enter Company Name",
			apperence:"Please Choose one",
			finalassesment:"Please Enter FinalAssesment",
			othercomments:"Please Enter OtherComments",
			interviewedby:"Please Enter the Interviewed Person",
			presentsalary:"Please Enter PresentSalary",
			expectedsalary:"Please Enter Expected Salary",
			salaryoffered:"Please Enter Salary Offered",
			joingtime:"Please Enter Joing Time",
			department:"Please Enter Department",
		},
		
		submitHandler: function(form){
			form.submit();
		}
		
	});
	
	if(!$('[input type="radio"]:checked')){
		alert('Please Choose one');
	}
	
}).addClass('error');
	



$(function(){	
	$('#emprequisition').validate({
		rules:{
			
			position:"required",
			company:{
				required:true,
				accept:"[a-zA-Z]",
			},
			department:{
				required:true,
				accept:"[a-zA-Z]",
			},
			location:{
				required:true,
				accept:"[a-zA-Z]",
			},
		},
		messages:{
			position:"Please enter the position",
			company:"Please enter the CompanyName",
			department:"Please enter the Department",
			location:"Please enter the Location",
		},
		submitHandler: function(form){
			form.submit();
		}
	});
	
});

$(function(){
	$('#ledger-form').validate({
		rules:{
			ledgername:{
				required:true,
				accept:"[a-zA-Z]",
			},
			alias:{
				required:true,
				accept:"[a-zA-Z]",
			},
			name:{
				required:true,
				accept:"[a-zA-Z]",
			},
			address:{
				required:true,
				accept:"[a-zA-Z0-9]",
			},
			state:{
				required:true,
				accept:"[a-zA-Z]",
			},
			pincode:{
				required:true,
				accept:"[0-9]",
			},
			panno:{
				required:true,
				accept:"[A-Za-z0-9]"
			},
			salestax:{
				required:true,
				accept:"[a-zA-Z]",
			},
			openingbalance:{
				 required:true,
				 accept:"[0-9]",
			}
		},
		messages:{
			ledgername:"Please Enter the Ledger Name",
			alias:"Please Enter the Alias Name",
			name:"Please Enter the Company Name",
			address:"Please Enter the Address",
			state:"Please Enter the State Name",
			pincode:"Please Enter the Pin Number",
			panno:"Please Enter the Pan Number",
			salestax:"Please Enter the Sales Tax Number",
			openingbalance:"Please Enter the OpenBalance",
		},
		submitHandler: function(form){
			form.submit();
		}
	});

});
$(function(){
	$('#vocher-form').validate({
		rules:{
			name:{
				required:true,
				lettersonly:true,
			},
			abbr:{
				required:true,
				lettersonly:true,
			},
			advconfiguration:"required",
			useeffectivedates:"required",
			usecommonnarration:"required",
			narrationsforeachentry:"required",
			nameofclass:"required",
		},
		messages:{
			name:"Name must be letters",
			abbr:"Please Enter the Abbrivation",
		},
		submitHandler:function(form){
			form.submit();
		},
	});

});

$(function(){
	$('#groups-form').validate({
		rules:{
			name:{
				required:true,
				accept:"[a-zA-Z]",
			},
			alias:{
				required:true,
				accept:"[a-zA-Z]",
			},
			natureofgroup:{
				required:true,
				accept:"[a-zA-Z]",
			},
		},
		messages:{
			name:"Please Enter the Name.",
			alias:"Please Enter the Alias",
			natureofgroup:"Please enter the Nature of group",
		},
		submitHandler:function(form){
			form.submit();
		},
	});
	
});

$(function(){
	$('#pr-form').validate({
		rules:{
			itemname:{
				required:true,
				accept:"[a-zA-Z]+",				
			},
			itemcode:{
			required:true,
			accept:"[a-zA-Z0-9]"
				
			},
			internalcode:"required",
			qntyrequired:
				{
				required:true,
				accept:"[0-9]",
				},
			remarks:"required",
		},
		messages:{
			itemname:"Please Enter ItemName",
			itemcode:"Please Enter ItemCode",
			internalcode:"Please Enter InternalCode",
			qntyrequired:"Please Enter Quantity Required",
			remarks:"Please Enter Remarks",
		},
		submitHandler:function(form){
			form.submit();
		},
	});
	
});

$(function(){
	$('#in-report').validate({
		rules:{
			itemname:{
				required:true,
				accept:"[a-zA-Z]",
			},
			deptlocation:{
				required:true,
				accept:"[a-zA-Z]",
			},
			datein:{
				required:true,
				date:true,
			},
			po:{
				required:true,
				accept:"[a-zA-Z]",
			},
			amount1:{
				required:true,
				accept:"[0-9]",
			},
			recivedby:{
				required:true,
				accept:"[a-zA-Z]",
			},
			dateout:{
				required:true,
				date:true,
			},
			invoice:{
				required:true,
				accept:"[a-zA-Z]",
			},
			Stockleft:"required",
			
		},
		messages:{
			itemname:"Please enter Item Name",
			deptlocation:"Please enter the DepartmentLocation",
			datein:"Please insert DateIn",
			po:"Please Insert PO",
			amount1:"Please Enter the amount",
			recivedby:"Please enter the recivedby Name",
			dateout:"Please enter Date Out",
			invoice:"Please enter Invoice",
			Stockleft:"Please enter StockLeft",
		},
		submitHandler:function(form){
			form.submit();
		},
	});
	
});


$(function(){
	$('#outstock').validate({
		rules:{
			orderno:{
				required:true,
				accept:"[a-zA-Z0-9]"
			},
			custname:{
				required:true,
				accept:"[a-zA-Z]",
			},
			phone:{
				required:true,
				accept:"[0-9]",
			},
			address:{
				required:true,
				accept:"[a-zA-Z]",
			},
			city:{
				required:true,
				accept:"[a-zA-Z]",
			},
			state:{
				required:true,
				accept:"[a-zA-Z]",
			},
			zip:{
				required:true,
				accept:"[0-9]",
			},
			qnty:{
				required:true,
				accept:"[a-zA-Z]",
			},
			item:{
				required:true,
				accept:"[a-zA-Z]",
			},
			esdate:{
				required:true,
				date:true,
			},
		},
		messages:{
			orderno:"Please enter the OrderNo",
			custname:"Please enter the customerName",
			phone:"Please enter the Phone Number",
			address:"Please enter Address",
			city:"Please enter City",
			state:"Please enter State",
			zip:"Please enter Zip",
			qnty:"Please enter Quantity",
			item:"Please enter ItemName",
			esdate:"Please enter Estimated Date",
		},
		submitHandler:function(form){
			form.keyup();
		}
		
	});
	
});

$(function(){
	$('#physicalinventorycountsheet').validate({
		rules:{
			sheet:"required",
			location:"required",
			itemnumber:"required",
			description:"required",
			quantity:"required",
			location1:"required",
		},
		messages:{
			sheet:"Please enter SheetNo",
			location:"Please Enter LocationName",
			itemnumber:"Please enter Itemnumber",
			description:"Please enter Description",
			quantity:"Please enter Quantity",
			location1:"Please enter Location",
		},
		submitHandler:function(form){
			form.keyup();
		},
	});
	
});
$(function(){
	$('#pettycashjournal').validate({
		rules:{
			department:{
				required:true,
				accept:"[a-zA-Z]",
			},
			vocher:{
				required:true,
				accept:"[0-9]",
			},
			payee:{
				required:true,
				accept:"[0-9]",
			},
			approvedby:{
				required:true,
				accept:"[a-zA-Z]",
			},
			total:{
				required:true,
				accept:"[0-9]",
			},
			balance:{
				required:true,
				accept:"[0-9]",
			},
			auditedby:{
				required:true,
				accept:"[a-zA-Z]",
			},
			approvedby1:{
				required:true,
				accept:"[a-zA-Z]",
			},
		},
		messages:{
			department:"Please enter DepartmentName",
			vocher:"Please enter vocherName",
			payee:"Please enter payee",
			approvedby:"Please Enter ApprovedByName",
			total:"Please Enter Total",
			balance:"Please Enter Balance",
			auditedby:"Please Enter Audited By",
			approvedby1:"Please Enter Approved By",
		},
		submitHandler:function(form){
			form.keyup();
		},
	});
	
});
$(function(){
	$('#purchaseentry').validate({
		rules:{
				partname:"required",
				qutationno:"required",
				itemcode:"required",
				nameofitem:"required",
				qnty:"required",
				units:"required",
				rate:"required",
				amount:"required",
				narration:"required",
			  },
	messages:{
		partname:"Please enter PartName",
		qutationno:"Please enter QuatationNO",
		itemcode:"Please enter itemcode",
		nameofitem:"Please enter name of item",
		qnty:"Please enter Quantity",
		units:"Please enter units",
		rate:"Please enter rate",
		amount:"Please enter Amount",
		narration:"Please enter narration",
	},
	submitHandler:function(form){
		form.keyup();
	},	
});
});

$(function(){
		$('#purchasereturn').validate({
			rules:{
				partyname:{
					required:true,
					accept:"[a-zA-Z]",
				},
				quantityrequired:{
					required:true,
					accept:"[a-zA-Z0-9]",
				},
				itemcode:{
					required:true,
					accept:"[a-zA-Z0-9]",
				},
				nameofitem:{
					required:true,
					accept:"[a-zA-Z]",
				},
				qty:{
					required:true,
					accept:"[0-9]",
				},
				units:{
					required:true,
					accept:"[0-9a-z]",
				},
				rate:{
					required:true,
					accept:"[0-9]",
				},
				amount:{
					required:true,
					accept:"[0-9]",
				},
				narration:{
					required:true,
					accept:"[a-zA-Z]",
				}
			},
			messages:{
				partyname:"Please enter PartyName",
				quantityrequired:"Please enter QuatationNo",
				itemcode:"Please enter ItemCode",
				nameofitem:"Please enter name of Item",
				qty:"Please enter Quantity",
				units:"Please enter Units",
				rate:"Please enter Rate",
				amount:"Please enter Amount",
				narration:"Please enter Narration",
			},
			submitHandler:function(form){
				form.keyup();
			},
	});
});


$(function(){
	$('#invoice-form').validate({
		
		rules:{
			custname:"required",
			invoiceid:{
				required:true,
				accept:"[0-9]",
			},
			invoiceno:{
				required:true,
				accept:"[0-9]",
			},
			referenceno:{
				required:true,
				accept:"[0-9]",
			},
			department:"required",
			srlno:{
				required:true,
				accept:"[0-9]",
			},
			name:{
				required:true,
				accept:"[a-zA-Z]",
			},
			unitprice:{
				required:true,
				accept:"[0-9]",
			},
			price:{
				required:true,
				accept:"[0-9]",
			},
		},
		messages:{
			custname:"Please enter CustomerName",
			invoiceid:"Please enter InvoiceId",
			invoiceno:"Please insert InvoiceNO",
			referenceno:"Please enter ReferenceNo",
			department:"Please Enter Department",
			srlno:"Please enter SerialNo",
			name:"Please enter Name",
			unitprice:"Please enter UnitPrize",
			price:"Please enter Prize",
		},
		submitHandler:function(form){
			form.keyup();
		},
	});
	
});

$(function(){
	$('#app-form').validate({
		rules:{
			name:{
				required:true,
				accept:"[a-zA-Z]",
			},
			address:{
				required:true,
				accept:"[a-zA-Z0-9]",
			},
			appraisalname:{
				required:true,
				accept:"[a-zA-Z]",
			},
		},
		messages:{
			name:"Please enter the Name",
			address:"Please entet the address",
			appraisalname:"Please enter the ApprisialName",
		},
		submitHandler:function(form){
			form.keyup();
		},
	});
	
});