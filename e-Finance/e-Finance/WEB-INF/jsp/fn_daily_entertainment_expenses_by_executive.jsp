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
	});
function isEmpty(){
	if((document.enterexp.phoneno.value=="")||(document.enterexp.location.value=="")||(docuemnt.enterexp.approvedby.value=="")||(document.erterexp.amountdue.value=="")){
		alert('*All Fields are Mandatory*');
		return false;
		
	}else{
		return true;
	}
		
}

function alphabetic()
{
	////alert('Hello');
	var numaric = document.enterexp.location.value;
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
			 document.enterexp.location.focus();
			 document.enterexp.location.style.background="pink";
			 document.enterexp.location.value="";
			return false;			
		  	}
 		}

 return true;
}
function alphabetic1()
{
	////alert('Hello');
	var numaric = document.enterexp.approvedby.value;
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
			 document.enterexp.approvedby.focus();
			 document.enterexp.approvedby.style.background="pink";
			 document.enterexp.approvedby.value="";
			return false;			
		  	}
 		}

 return true;
}


function numeric(){
	//$('.number').change(function(){
		var numaric=document.enterexp.phoneno.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.enterexp.phoneno.focus();
						document.enterexp.phoneno.style.background="pink";
						document.enterexp.phoneno.value="";
							return false;
				}
	 		}
		//});	
		return true;
}
	
function numeric1(){
	//$('.number').change(function(){
		var numaric=document.enterexp.amountdue.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.enterexp.amountdue.focus();
						document.enterexp.amountdue.style.background="pink";
						document.enterexp.amountdue.value="";
							return false;
				}
	 		}
		//});	
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
 /* System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
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
			<fieldset><legend>Entertainment Expenceses</legend>
<form:form action="sfn_entertainment_exp.fin" method="post" commandName="entertainmentExpencesesBean" name="enterexp" onsubmit="return isEmpty();">
<table align="center" width="800" class="form_background">
 <tr>
  <td>
   <table align="center">
    <tr>
	 <td>
	  Employee Name
	 </td>
	 <td>
	  <form:select path="ledgername" class="ledgerdetailslist1"></form:select>
	  
	 </td>
	  <td>
	  
	   Phone
	  
	 </td>
	 <td>
	   <form:input path="phoneno" onkeyup="return numeric();" maxlength="10"/>
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
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center">
	 <tr>
	  <td width="200">
	  Date
	  </td>
	 
	 <td width="200">
	   Day
	  </td>
	  
	   
	  
	   <td width="200">
	    Amount
	   </td>
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
	   <form:input path="amountdue" onkeyup="return numeric1();"/>
	   
	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center">
	  	<input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
	     <input type="image" src="images/submit_button.jpg" id="button1"/>
	   </td>
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
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
