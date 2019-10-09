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
	if((document.mislexp.phoneno.value=="")||(document.mislexp.location.value=="")||(document.mislexp.approvedby.value=="")||(document.mislexp.purpose.value=="")||(document.mislexp.amount.value=="")||(document.mislexp.date1.value=="yyyy-mm-dd")||(document.mislexp.date1.value=="")){
		alert('*All Fields are Mandatory*');
		return false;
	}else{
		return true;
		
	}
	return true;
	
}
function numeric(){
	//$('.number').change(function(){
		var numaric=document.mislexp.phoneno.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.mislexp.phoneno.focus();
						document.mislexp.phoneno.style.background="pink";
						document.mislexp.phoneno.value="";
							return false;
				}
	 		}
		//});	
		return true;
}

function numeric1(){
	//$('.number').change(function(){
		var numaric=document.mislexp.amount.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.mislexp.amount.focus();
						document.mislexp.amount.style.background="pink";
						document.mislexp.amount.value="";
							return false;
				}
	 		}
		//});	
		return true;
}


function alphabetic()
{
	////alert('Hello');
	var numaric = document.mislexp.location.value;
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
			 document.mislexp.location.focus();
			 document.mislexp.location.style.background="pink";
			 document.mislexp.location.value="";
			return false;			
		  	}
 		}

 return true;
}

function alphabetic1()
{
	////alert('Hello');
	var numaric = document.mislexp.approvedby.value;
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
			 document.mislexp.approvedby.focus();
			 document.mislexp.approvedby.style.background="pink";
			 document.mislexp.approvedby.value="";
			return false;			
		  	}
 		}

 return true;
}
function alphabetic2()
{
	////alert('Hello');
	var numaric = document.mislexp.purpose.value;
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
			 document.mislexp.purpose.focus();
			 document.mislexp.purpose.style.background="pink";
			 document.mislexp.purpose.value="";
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
 String comp=(String)session.getAttribute("compname");
 //System.out.println("hi"+username);
// System.out.println("hi"+pwd);
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
		<fieldset>
	<legend>Misleneous Exp</legend>

<form:form action="sfn_misleneousexp.fin" method="post" commandName="misleniousExpencesesBean" name="mislexp" onsubmit="return isEmpty();">
<table align="center" width="800" class="form_background">
 <tr>
  <td>
   <table align="center">
    <tr>
	 <td>
	  Ledger Name
	   </td>
	 <td>
	 
	  <form:select path="ledgername" class="ledgerdetailslist1" ></form:select>
	  
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
	   <form:input path="location" onkeyup="return alphabetic();"/>
	   <form:errors path="location" cssClass="error"></form:errors>
	 </td>
	 
	<td>
	 
	  Approved By
	 </td>
	  <td>
	   <form:input path="approvedby" onkeyup="return alphabetic1();"/>
	   <form:errors path="approvedby" cssClass="error"></form:errors>
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
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" width="800">
	 <tr>
	  <td width="200">
	   Date</td>
		<td width="200">
	    Day</td>
	 <td width="200">
		Purpose</td>
	 
	  
	 
	  
	   
	  
	   <td width="200">
	     Amount</td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date1" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	   </td>
	    <td>
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
	 	<form:input path="purpose" onkeyup="return alphabetic2();"/>
	 	<form:errors path="purpose" cssClass="error"></form:errors>
	   
	   </td>
	   <td>
	   <form:input path="amount" onkeyup="return numeric1();"/>
	   <form:errors path="amount" cssClass="error"></form:errors>
	   </td>
	 </tr>
	 <tr>
	  <td colspan="5" align="center">
	  <input type="hidden" name="login_comp" value="<%=comp%>"/>
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
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
