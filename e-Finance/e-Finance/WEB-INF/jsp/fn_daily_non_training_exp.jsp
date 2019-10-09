<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#amount').blur(function(){
			var quant=$('#quantity').val();
			var amount=$('#amount').val();
			var total=quant*amount;
			$('#total').val(total);
			
			
		});
		
	});
	
	function isEmpty(){
		if((document.nontrading.phoneno.value=="")||(document.nontrading.location.value=="")||(document.nontrading.approvedby.value=="")||(document.nontrading.date1.value=="")||(document.nontrading.date1.value=="yyyy-mm-dd")||(document.nontrading.itemname.value=="")||(document.nontrading.quantity.value=="")||(document.nontrading.amount.value=="")){
			alert('*All Fields are Mandatory*');
			return false;
		}else{
		return true;	
		}
		return true;
	}
	
	function numeric(){
		//$('.number').change(function(){
			var numaric=document.nontrading.phoneno.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.nontrading.phoneno.focus();
							document.nontrading.phoneno.style.background="pink";
							document.nontrading.phoneno.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	function numeric1(){
		//$('.number').change(function(){
			var numaric=document.nontrading.quantity.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.nontrading.quantity.focus();
							document.nontrading.quantity.style.background="pink";
							document.nontrading.quantity.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	function numeric2(){
		//$('.number').change(function(){
			var numaric=document.nontrading.amount.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.nontrading.amount.focus();
							document.nontrading.amount.style.background="pink";
							document.nontrading.amount.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	
	function alphabetic1()
	{
		////alert('Hello');
		var numaric = document.nontrading.location.value;
		for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  
		      }
			else
				{		
				alphaa.value='';
				 //alert("It is not a character");
				 document.nontrading.location.focus();
				 document.nontrading.location.style.background="pink";
				 document.nontrading.location.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	function alphabetic2()
	{
		////alert('Hello');
		var numaric = document.nontrading.approvedby.value;
		for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  
		      }
			else
				{		
				alphaa.value='';
				 //alert("It is not a character");
				 document.nontrading.approvedby.focus();
				 document.nontrading.approvedby.style.background="pink";
				 document.nontrading.approvedby.value="";
				return false;			
			  	}
	 		}

	 return true;
	}

	function alphabetic3()
	{
		////alert('Hello');
		var numaric = document.nontrading.amount.value;
		for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  
		      }
			else
				{		
				alphaa.value='';
				 //alert("It is not a character");
				 document.nontrading.amount.focus();
				 document.nontrading.amount.style.background="pink";
				 document.nontrading.amount.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	
</script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
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
	<div class="content" align="center">
<fieldset><legend>Non Trading Expenceses</legend>
<form:form action="sfn_daily_non_training_exp.fin" method="post" commandName="nonTradingExpencesesBean" name="nontrading" onsubmit="return isEmpty();">
<table align="center" width="800" class="form_background" >
 <tr>
  <td>
   <table align="center">
    <tr>
	 <td>
	  Ledger Name
	 </td>
	 <td>
	  <form:select path="ledgername" class="ledgerdetailslist1"></form:select>
	  
	 </td>
	  <td>
	  
	   Phone
	  
	 </td>
	 <td>
	   <form:input path="phoneno" onkeyup="return numeric();"/>
	   <form:errors path="phoneno" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   Location
	  
	 </td>
	 <td>
	   <form:input path="location" onkeyup="return alphabetic1();"/>
	   
	   <form:errors path="location" cssClass="error"></form:errors>
	 </td>
	 <td>
	  
	   Approved By
	  
	 </td>
	 <td>
	 	<form:input path="approvedby" onkeyup="return alphabetic2();"/>
	   <form:errors path="approvedby" cssClass="error"/>
	 </td>
	 
	</tr>
	<tr>
	  <td>
	 
	   Dept
	 
	 </td>
	 <td>
	 	<form:select path="department">
	 		<form:option value="Sales"/>
	 		<form:option value="Finance"/>
	 		<form:option value="Accounts"/>
	 	</form:select>
	   
	 </td>
	 
	
	 
	 
	</tr>
	<tr>
	 
	 
	 
	 
	 
	</tr>
	<tr>
	 
	 
	 
	</tr>
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" width="800">
	 <tr>
	  <td width="258">
	  Date
	  </td>
	  <td width="258">
	   Day
	  </td>
	 
	 <td>
	  	  Item name

	 </td>
	  
	 <td>
	  	  Qty

	 </td>
	  
	   
	  
	   <td width="234">
	    Amount
	    </td>
	    <td>
	    	Total 
	    </td>
	 </tr>
	 <tr>
	  <td> 
	   <form:input path="date1" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	   </td>
	    <td width="543">
	    	    <form:select path="day1">
	    	<form:option value="Sun"/>
	    	<form:option value="Mon"/>
	    	<form:option value="Tue"/>
	    	<form:option value="Wed"/>
	    	<form:option value="Thu"/>
	    	<form:option value="Fri"/>
	    	<form:option value="Sat"/>
	    </form:select>
	</td>
	   
	   <td>
	    <form:input path="itemname" onkeyup="return alphabetic3();"/>
	    <form:errors path="itemname" cssClass="error"></form:errors>
	   </td>
	   <td>
	    <form:input path="quantity" id="quantity" onkeyup="return numeric1();"/>
	    <form:errors path="quantity" cssClass="error"></form:errors>
	   </td>
	   
	  
	   <td>
	   <form:input path="amount" id="amount" onkeyup="return numeric2();"/>
	  
	   <form:errors path="amount" cssClass="error"></form:errors>
	   </td>
	   <td>
	   	<form:input path="totalamount" id="total"/>
	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center"><input type="hidden" name="login_comp" value="<%=comp%>"/>	 
	     <input type="image" src="images/submit_button.jpg" id="button1"></td>
	  </tr>
	</table>
   </td>
  </tr>
</table>
</form:form>
</fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
