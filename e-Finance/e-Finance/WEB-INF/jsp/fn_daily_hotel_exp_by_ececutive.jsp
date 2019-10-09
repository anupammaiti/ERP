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
		
		$('#amountperday').blur(function(){
			var noofdays=$('#noofdays').val();
			//alert(noofdays);
			var amountpermonth=$('#amountperday').val();
			//alert(amountpermonth);
			var totalamount;
			totalamount=noofdays*amountpermonth;
			//alert(totalamount);
			$('#totalamount').val(totalamount);
		});
		
		
			////alert('Hello');
			
	
		var companyname=$('#companyid').val();
		$.get('fn_ledgerdetails.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('.ledgerlist').html(data);
		});
	
			return false;
	});
	
	function isEmpty(){
		if((document.hotelexp.phoneno.value=="")||(document.hotelexp.location.value=="")||(document.hotelexp.approvedby.value=="")||(document.hotelexp.noofdays.value=="")||(document.hotelexp.hotelname.value=="")||(document.hotelexp.hotellocation.value=="")||(document.hotelexp.amountperday.value=="")){
			alert('*All Fields are Mandatory*');
			return false;
		}else{
			return true;
		}
		
		
	}
	
	function numeric1(){
		//$('.number').change(function(){
			var numaric=document.hotelexp.phoneno.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.hotelexp.phoneno.focus();
							document.hotelexp.phoneno.style.background="pink";
							document.hotelexp.phoneno.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	function alphabetic()
	{
		////alert('Hello');
		var numaric = document.hotelexp.location.value;
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
				 document.hotelexp.location.focus();
				 document.hotelexp.location.style.background="pink";
				 document.hotelexp.location.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	function alphabetic1()
	{
		////alert('Hello');
		var numaric = document.hotelexp.approvedby.value;
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
				 document.hotelexp.approvedby.focus();
				 document.hotelexp.approvedby.style.background="pink";
				 document.hotelexp.approvedby.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	function alphabetic2()
	{
		////alert('Hello');
		var numaric = document.hotelexp.approvedby.value;
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
				 document.hotelexp.approvedby.focus();
				 document.hotelexp.approvedby.style.background="pink";
				 document.hotelexp.approvedby.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	function alphabetic3()
	{
		////alert('Hello');
		var numaric = document.hotelexp.hotelname.value;
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
				 document.hotelexp.hotelname.focus();
				 document.hotelexp.hotelname.style.background="pink";
				 document.hotelexp.hotelname.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	function alphabetic4()
	{
		////alert('Hello');
		var numaric = document.hotelexp.hotellocation.value;
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
				 document.hotelexp.hotellocation.focus();
				 document.hotelexp.hotellocation.style.background="pink";
				 document.hotelexp.hotellocation.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	function numeric2(){
		//$('.number').change(function(){
			var numaric=document.hotelexp.amountperday.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.hotelexp.amountperday.focus();
							document.hotelexp.amountperday.style.background="pink";
							document.hotelexp.amountperday.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	function numeric3(){
		//$('.number').change(function(){
			var numaric=document.hotelexp.noofdays.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.hotelexp.noofdays.focus();
							document.hotelexp.noofdays.style.background="pink";
							document.hotelexp.noofdays.value="";
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

<fieldset><legend>Hotel Expenceses</legend>
<form:form action="sfn_hotel_exp.fin" method="post" commandName="hotelExpensesBean" name="hotelexp" onsubmit="return isEmpty();"> 
<table align="center" width="800" class="form_background">

 
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
	   <form:input path="phoneno" onkeyup="return numeric1();"/>
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
	  No.Of Days
	 </td>
	 <td>
	  	  Hotel name

	 </td>
	  
	 <td>
	  	  Hotel Location

	 </td>
	  
	   
	  
	   <td width="234">
	    Amount per Day
	   </td>
	   <td>
	   	Total Amount
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date1" size="20px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true" />
	   </td>
	    <td width="543">
	    <form:select path="day1">
	    	<form:option value="Sun"/>
	    	<form:options value="Mon"/>
	    	<form:option value="Tue"/>
	    	<form:option value="Wed"/>
	    	<form:option value="Thu"/>
	    	<form:option value="Fri"/>
	    	<form:option value="Sat"/>
	    </form:select>
	 
	</td>
	   <td>
	 <form:input path="noofdays" id="noofdays" onkeyup="return numeric3();"/>
	 <form:errors path="noofdays" cssClass="error"/>
	   </td>
	   <td>
	    <form:input path="hotelname" onkeyup="return alphabetic3();"/>
	    <form:errors path="hotelname" cssClass="error"></form:errors>
	   </td>
	   <td>
	    <form:input path="hotellocation" onkeyup="return alphabetic4();"/>
	    <form:errors path="hotellocation" cssClass="error"></form:errors>
	   </td>
	   
	  
	   <td>
	   <form:input path="amountperday" id="amountperday" onkeyup="return numeric2();"/>
	   <form:errors path="amountperday" cssClass="error"></form:errors>
	   </td>
	   <td>
	   	<form:input path="totalamount" id="totalamount" readonly="true"/>
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
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
