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
	function isEmpty(){
		
		if((document.phonebillexp.phoneno.value=="")||(document.phonebillexp.location.value=="")||(document.phonebillexp.approvedby.value=="")||(document.phonebillexp.amountdue.value=="")){
			alert('*All Fields are Mandatory*');
			return false;
		}else{
			return true;
		}
		return true;
	}	
	
	function numeric1(){
		//$('.number').change(function(){
			var numaric=document.phonebillexp.phoneno.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.phonebillexp.phoneno.focus();
							document.phonebillexp.phoneno.style.background="pink";
							document.phonebillexp.phoneno.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	
	function numeric2(){
		//$('.number').change(function(){
			var numaric=document.phonebillexp.amountdue.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.phonebillexp.amountdue.focus();
							document.phonebillexp.amountdue.style.background="pink";
							document.phonebillexp.amountdue.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	
	function alphabetic1()
	{
		////alert('Hello');
		var numaric = document.phonebillexp.location.value;
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
				 document.phonebillexp.location.focus();
				 document.phonebillexp.location.style.background="pink";
				 document.phonebillexp.location.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	function alphabetic2()
	{
		////alert('Hello');
		var numaric = document.phonebillexp.approvedby.value;
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
				 document.phonebillexp.approvedby.focus();
				 document.phonebillexp.approvedby.style.background="pink";
				 document.phonebillexp.approvedby.value="";
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

<fieldset><legend>Phone Bill Expenses</legend> 
<form:form action="sfn_daily_phone_expenses.fin" method="post" commandName="phoneBillExpencesesBean" name="phonebillexp" onsubmit="return isEmpty();">
<table align="center" width="800"  class="form_background">
 <tr>
  <td>
   <table width="800" align="center" >
   <tr>
   <td width="245" align="right">
   Date
    </td>
	<td width="543">
	 <form:input path="date1" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	</td>
	
	<td>
	 Day
	</td>
	<td width="543">
	<form:select path="day1">
		<form:option value="Sun">Sun</form:option>
		<form:option value="Mon">Mon</form:option>
		<form:option value="Tue">Tue</form:option>
		<form:option value="Wed">Wed</form:option>
		<form:option value="Thu">Thu</form:option>
		<form:option value="Fri">Fri</form:option>
		<form:option value="Sat">Sat</form:option>
	</form:select>	
	</td>

	</tr>
   </table>
  </td>
   </tr>
 <tr>
  <td>
   <table width="511" height="90"  align="center" cellpadding="0" cellspacing="0">
    <tr>
	 <td width="79">
	  Provider
	 </td>
	 <td width="147">
	 <form:select path="provider">
	 	<form:option value="BSNL">BSNL</form:option>
	 	<form:option value="Airtel">Airtel</form:option>
	 	<form:option value="Idea">Idea</form:option>
	 	<form:option value="Vodafone">Vodafone</form:option>
	 	<form:option value="Tata">Tata</form:option>
	 </form:select>
	 </td>
	 <td width="86">
	  phone
	 </td>
	 <td width="171">
	  <form:input path="phoneno" onkeyup="return numeric1();" maxlength="10"/>
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
	   <form:errors path="approvedby" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 
	<td>
	  
	   Dept
	  
	 </td>
	 <td>
	 <form:select path="department">
	 	<form:option value="Sales">Sales</form:option>
	 	<form:option value="Finance">Finance</form:option>
	 	<form:option value="Accounts">Accounts</form:option>
	 </form:select>
	   
	 </td>
	<td>
		LedgerName
	</td>
	<td>
		<form:select path="ledgername" class="ledgerdetailslist1"></form:select>
	</td> 
	
	
	</tr>

	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" cellpadding="0" cellspacing="0">
	 <tr>
	  <td width="260">
	  Bill Month
	  </td>
	  
	  
	   
	   
	   
	   <td width="237">
	    Amount</td>
	 </tr>
	 <tr>
	  <td>
	  	<form:select path="billmonth">	
	  		<form:option value="Jan">Jan</form:option>
	  		<form:option value="Feb">Feb</form:option>
	  		<form:option value="Mar">Mar</form:option>
	  		<form:option value="Apr">Apr</form:option>
	  		<form:option value="May">May</form:option>
	  		<form:option value="June">June</form:option>
	  		<form:option value="July">July</form:option>
	  		<form:option value="Aug">Aug</form:option>
	  		<form:option value="Sep">Sep</form:option>
	  		<form:option value="Oct">Oct</form:option>
	  		<form:option value="Nov">Nov</form:option>
	  		<form:option value="Dec">Dec</form:option>
	  	</form:select>
	    
	   </td>
	  
	  
	  
	  
	   
	   <td>
	   <form:input path="amountdue" onkeyup="return numeric2();"/>
	   <form:errors path="amountdue" cssClass="error"/>
	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center"><input type="hidden" id="companyid" value="<%=comp%>"/>	 
	     <input type="image" src="images/submit_button.jpg" id="button1"><input type="hidden" name="login_comp" value="<%=comp%>"/></td>
	  </tr>
	</table>
   </td>
   
  </tr>
</table>
</form:form>
</fieldset>
	
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
