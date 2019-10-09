<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//alert('Hello');
		var companyname=$('#companyid').val();
		$.get('fn_ledgerdetails.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('.ledgerlist').html(data);
		});
		
		$('#inst').blur(function(){
			var rate=$('#rate').val();
			var installments=$('#inst').val();
			var totalamount=rate/installments;
			$('.totalamount').val(totalamount.toFixed(2));
			
		});
		
	});
	
	
	
	
	function isEmpty(){
		if((document.interexp.apporvedby.value=="")||(document.iterexp.companyname.value=="")||(document.iterexp.package1.value=="")||(document.iterexp.rate.value=="")||(document.iterexp.installments.value=="")||(document.iterexp.amount.value=="")||(document.iterexp.paymentplan.value=="")||(document.iterexp.mobileno.value=="")||(document.iterexp.phoneno.value=="")||(document.iterexp.complientno.value=="")){
		alert('*All Fields Are Mandatory*');
		return false;
		}else{
			return true;
		}
		return true;
	}
	
	function alphabetic(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.interexp.apporvedby.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  
				  document.interexp.apporvedby.style.background="white";
				  return true;
				  
		      }
			else
				{		
				document.interexp.apporvedby.focus();
				document.interexp.apporvedby.style.background="pink";
				document.interexp.apporvedby.value="";
				
				return false;			
			  	}
			}
			return true;
		}
	function alphabetic1(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.interexp.companyname.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  return true;
				  
		      }
			else
				{		
				document.interexp.companyname.focus();
				document.interexp.companyname.style.background="pink";
				document.interexp.companyname.value="";
				
				return false;			
			  	}
			}
			return true;
		}	
			
	function alphabetic2(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.interexp.package1.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  return true;
				  
		      }
			else
				{		
				document.interexp.package1.focus();
				document.interexp.package1.style.background="pink";
				document.interexp.package1.value="";
				
				return false;			
			  	}
			}
			return true;
		}	
			
	function numeric1(){
		//alert("Number Validation");
			var numaric=document.interexp.srlno.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  return true;
				  }
			      
				else
					{	
					document.interexp.srlno.focus();
					document.interexp.srlno.style.background="pink";
					document.interexp.srlno.value="";
					return false;
					}
					
					}
						return true;
					}
	
	function numeric2(){
		//alert("Number Validation");
			var numaric=document.interexp.rate.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  return true;
				  }
			      
				else
					{	
					document.interexp.rate.focus();
					document.interexp.rate.style.background="pink";
					document.interexp.rate.value="";
					return false;
					}
					
					}
						return true;
					}
	
	function numeric3(){
		//alert("Number Validation");
			var numaric=document.interexp.installments.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  return true;
				  }
			      
				else
					{	
					document.interexp.installments.focus();
					document.interexp.installments.style.background="pink";
					document.interexp.installments.value="";
					return false;
					}
					
					}
						return true;
					}
	function numeric4(){
		//alert("Number Validation");
			var numaric=document.interexp.amount.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  return true;
				  }
			      
				else
					{	
					document.interexp.amount.focus();
					document.interexp.amount.style.background="pink";
					document.interexp.amount.value="";
					return false;
					}
					
					}
						return true;
					}
	
	function numeric5(){
		//alert("Number Validation");
			var numaric=document.interexp.amount.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  return true;
				  }
			      
				else
					{	
					document.interexp.amount.focus();
					document.interexp.amount.style.background="pink";
					document.interexp.amount.value="";
					return false;
					}
					
					}
						return true;
					}
	
	
	function alphanumeric1(){
		//alert('Hello');
	
		var alphanumeric=document.interexp.paymentplan.value;
		alert(alphanumeric);
		for(var j=0; j<alphanumeric.length; j++)
		{
		  var alphaa = alphanumeric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if(((hh > 47) && (hh < 58))||((hh > 64) && (hh < 91)) || ((hh > 96) && (hh < 123)))
		  {
			  
		  alert('Ok');
			return true;
	      }
		  else{
			  	
		  	alert("Not Ok");
			 	document.interexp.paymentplan.focus();
				document.interexp.paymentplan.style.background="pink";
				document.interexp.paymentplan.value="";
				return false;
			  }
		  }
		return true;
	}
	function numeric6(){
		//alert("Number Validation");
			var numaric=document.interexp.mobileno.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {document.interexp.mobileno.style.background="white";
					  return true;
				  }
			      
				else
					{	
					document.interexp.mobileno.focus();
					document.interexp.mobileno.style.background="pink";
					document.interexp.mobileno.value="";
					return false;
					}
					
					}
						return true;
					}
	
	function numeric6(){
		//alert("Number Validation");
			var numaric=document.interexp.phoneno.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {document.interexp.phoneno.style.background="white";
					  return true;
				  }
			      
				else
					{	
					document.interexp.phoneno.focus();
					document.interexp.phoneno.style.background="pink";
					document.interexp.phoneno.value="";
					return false;
					}
					
					}
						return true;
					}
	
	function numeric7(){
		//alert("Number Validation");
			var numaric=document.interexp.complientno.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {document.interexp.complientno.style.background="white";
					  return true;
				  }
			      
				else
					{	
					document.interexp.complientno.focus();
					document.interexp.complientno.style.background="pink";
					document.interexp.complientno.value="";
					return false;
					}
					
					}
						return true;
					}
	
	</script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");System.out.println("hi"+username);
 System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project"><%=comp%></div><div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">	
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content">

	<fieldset>
		<legend>Internet Expenses</legend>
		<form:form action="sfn_internet_exp.fin" method="post" commandName="internetExpBean" name="interexp" onsubmit="return isEmpty();">
		<table class="form_background" width="800" align="center">
		<tr>
			<td>
				LedgerName
			</td>
			<td>
				<form:select path="ledgername" class="ledgerdetailslist1"></form:select>
			</td>
		</tr>
		<tr>
				<td>
					Approved By
				</td>
				<td>
					<form:input path="apporvedby" onkeyup="return alphabetic();"/>
					<form:errors path="apporvedby" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Comapany Name
				</td>
				<td>
					<form:input path="companyname" onkeyup="return alphabetic1();"/>
					<form:errors path="companyname" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Package
				</td>
				<td>			
					<form:input path="package1" onkeyup="return alphabetic2();"/>	
					<form:errors path="package1" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Rate
				</td>
				<td>
					<form:input path="rate" onkeyup="return numeric2();" id="rate"/>
					<form:errors path="rate" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Installments
				</td>
				<td>
					<form:input path="installments" onkeyup="return numeric3();" id="inst"/>
					<form:errors path="installments" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Amount
				</td>
				<td>
					<form:input path="amount" onkeyup="return numeric4();" class="totalamount" readonly="true"/>
					<form:errors path="amount" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
				Payment Plan
				</td>
				<td>
					<form:input path="paymentplan" onkeyup="return alphanumeric1();"/>
					<form:errors path="paymentplan" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Mobile No
				</td>
				<td>
					<form:input path="mobileno" onkeyup="return numeric6();" maxlength="10"/>
					<form:errors path="mobileno" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Land Line
				</td> 
				<td>
					<form:input path="phoneno" onkeyup="return numeric6();"/>
					<form:errors path="phoneno" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Complient No
				</td>
				<td>
					<form:input path="complientno" onkeyup="return numeric7();" maxlength="12"/>
					<form:errors path="complientno" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					TotalAmount
				</td>
				<td>
					<form:input path="totalamount" class="totalamount" readonly="true"/>
				</td>
			</tr>
			
			<tr>
				<td>
					<input type="hidden" name="login_comp" value="<%=comp%>"/>
				</td>
				<td>
					<input type="image" src="images/submit_button.jpg" id="button1"/>
				</td>
			</tr>
		</table>
		</form:form>
	</fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
	</div>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	
<% }
else
{
response.sendRedirect("login.fin");
}%>
</body>

</html>