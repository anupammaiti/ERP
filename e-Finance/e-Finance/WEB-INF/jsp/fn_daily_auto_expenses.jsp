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
<link rel="stylesheet" href="css/finance_style.css"/>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//alert('Hello');
		var companyname=$('#companyid').val();
		//alert(companyname);
		$.get('fn_ledgerdetails.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('.ledgerlist').html(data);
		});
	});
	
	function numeric1(){
		//$('.number').change(function(){
			var numaric=document.autotraexp.zipno.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.autotraexp.zipno.focus();
							document.autotraexp.zipno.style.background="pink";
							document.autotraexp.zipno.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	function alphabetic1(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.completedby.value;
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
				document.autotraexp.completedby.focus();
				document.autotraexp.completedby.style.background="pink";
				document.autotraexp.completedby.value="";
				
				return false;			
			  	}
			}
		}
	
	function alphabetic2(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.location.value;
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
				document.autotraexp.location.focus();
				document.autotraexp.location.style.background="pink";
				document.autotraexp.location.value="";
				
				return false;			
			  	}
			}
		}
			
	function isAlphabetic(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.auditedby.value;
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
				document.autotraexp.auditedby.focus();
				document.autotraexp.auditedby.style.background="pink";
				document.autotraexp.auditedby.value="";
				
				return false;			
			  	}
			}
		}
	function isAlphabetic(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.auditedby.value;
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
				document.autotraexp.auditedby.focus();
				document.autotraexp.auditedby.style.background="pink";
				document.autotraexp.auditedby.value="";
				
				return false;			
			  	}
			}
		}
			
	function isAlphabetic1(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.purposeoftrip.value;
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
				document.autotraexp.purposeoftrip.focus();
				document.autotraexp.purposeoftrip.style.background="pink";
				document.autotraexp.purposeoftrip.value="";
				
				return false;			
			  	}
			}
		}
			
	function isAlphabetic2(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.city.value;
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
				document.autotraexp.city.focus();
				document.autotraexp.city.style.background="pink";
				document.autotraexp.city.value="";
				
				return false;			
			  	}
			}
		}
			
	function isAlphabetic3(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.approvedby.value;
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
				document.autotraexp.approvedby.focus();
				document.autotraexp.approvedby.style.background="pink";
				document.autotraexp.approvedby.value="";
				
				return false;			
			  	}
			}
		}		
	function isAlphabetic4(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.state.value;
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
				document.autotraexp.state.focus();
				document.autotraexp.state.style.background="pink";
				document.autotraexp.state.value="";
				
				return false;			
			  	}
			}
		}		
			
	function isAlphabetic5(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.autotraexp.state.value;
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
				document.autotraexp.state.focus();
				document.autotraexp.state.style.background="pink";
				document.autotraexp.state.value="";
				
				return false;			
			  	}
			}
		}				
			
			
		function numeric2(){
			//$('.number').change(function(){
				var numaric=document.autotraexp.phoneno.value;
				//alert(numaric);
				for(var j=0; j<numaric.length; j++)
					{
					  var alphaa = numaric.charAt(j);
					  var hh = alphaa.charCodeAt(0);
					  if((hh>47)&&(hh<58))
					  {
						  
				      }
					else
						{		document.autotraexp.phoneno.focus();
								document.autotraexp.phoneno.style.background="pink";
								document.autotraexp.phoneno.value="";
									return false;
						}
			 		}
				return true;
			}
			
		function isAlphabetic6(){
			//	alert('Character Validation');
				
				//alert('Nameis'+numaric);
				//$('#name').change(function(){
				
				var numaric = document.autotraexp.travelfrom.value;
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
					document.autotraexp.travelfrom.focus();
					document.autotraexp.travelfrom.style.background="pink";
					document.autotraexp.travelfrom.value="";
					
					return false;			
				  	}
				}
			}	
				
		function numeric3(){
			//$('.number').change(function(){
				var numaric=document.autotraexp.odometerstart.value;
				//alert(numaric);
				for(var j=0; j<numaric.length; j++)
					{
					  var alphaa = numaric.charAt(j);
					  var hh = alphaa.charCodeAt(0);
					  if((hh>47)&&(hh<58))
					  {
						  
				      }
					else
						{		document.autotraexp.odometerstart.focus();
								document.autotraexp.odometerstart.style.background="pink";
								document.autotraexp.odometerstart.value="";
									return false;
						}
			 		}
				return true;
			}
			
		function numeric4(){
			//$('.number').change(function(){
				var numaric=document.autotraexp.odometerend.value;
				//alert(numaric);
				for(var j=0; j<numaric.length; j++)
					{
					  var alphaa = numaric.charAt(j);
					  var hh = alphaa.charCodeAt(0);
					  if((hh>47)&&(hh<58))
					  {
						  
				      }
					else
						{		document.autotraexp.odometerend.focus();
								document.autotraexp.odometerend.style.background="pink";
								document.autotraexp.odometerend.value="";
									return false;
						}
			 		}
				return true;
			}
			
		function numeric5(){
			//$('.number').change(function(){
				var numaric=document.autotraexp.rate.value;
				//alert(numaric);
				for(var j=0; j<numaric.length; j++)
					{
					  var alphaa = numaric.charAt(j);
					  var hh = alphaa.charCodeAt(0);
					  if((hh>47)&&(hh<58))
					  {
						  
				      }
					else
						{		document.autotraexp.rate.focus();
								document.autotraexp.rate.style.background="pink";
								document.autotraexp.rate.value="";
									return false;
						}
			 		}
				return true;
			}
			
			function isEmpty(){
				if((document.autotraexp.completedby.value=="")||(document.autotraexp.location.value=="")||(document.autotraexp.auditedby.value=="")||(document.autotraexp.address.value=="")||(document.autotraexp.purposeoftrip.value=="")||(document.autotraexp.city.value=="")||(document.autotraexp.approvedby.value=="")||(document.autotraexp.state.value=="")||(document.autotraexp.zipno.value=="")||(document.autotraexp.phoneno.value=="")||(document.autotraexp.date2.value=="")||(document.autotraexp.travelfrom.value=="")||(document.autotraexp.odometerstart.value=="")||(document.autotraexp.odometerend.value=="")||(document.autotraexp.rate.value=="")){
					
					alert("*All Fields are Mandatory*");
					
					return false;
				}
				else{
					return true;
				}
				return true;
					
				
			}
			
			
			
	</script>
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
	<div class="content" align="center"><span id="successmsg">${successmsg}</span>
		<fieldset><legend>Auto Expencses Travel</legend>
<form:form action="fn_created_auto_expenses_form.fin" method="post" commandName="autoExpencesesTravelBean" name="autotraexp" onsubmit="return isEmpty();">
<table align="center"  border="0" class="form_background">
 <tr>
  <td>
   <table width="800" align="center">
   <tr>
   <td width="245" align="right">
   Date
    </td>
	<td width="543">
	 <form:input path="date1" onfocus="showCalendarControl(this);" readonly="true" id="gendate1"/>
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
   <table align="center">
    <tr>
	 <td>
	  Ledger Name
	 </td>
	 <td>
	  <form:select path="ledgername" class="ledgerdetailslist1"></form:select>
	  
	 </td>
	 <td>
	  Completed By
	 </td>
	 <td>
	  <form:input path="completedby" onkeyup="return alphabetic1();"/>
	  <form:errors path="completedby" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   Location
	  
	 </td>
	 <td>
	   <form:input path="location" onkeyup="return alphabetic2();"/>
	   <form:errors path="location" cssClass="error"></form:errors>
	 </td>
	 
	 <td>
	  
	   Audited By
	  
	 </td>
	 <td>
	   <form:input path="auditedby" onkeyup="return isAlphabetic();"/>
	   <form:errors path="auditedby" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   Address
	  
	 </td>
	 <td>
	   <form:input path="address"/>
	   <form:errors path="address" cssClass="error"></form:errors>
	 </td>
	 
	 <td>
	  
	   Purpose of Trip
	  
	 </td>
	 <td>
	   <form:input path="purposeoftrip" onkeyup="return isAlphabetic1();"/>
	   <form:errors path="purposeoftrip" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   City
	  
	 </td>
	 <td>
	   <form:input path="city" onkeyup="return isAlphabetic2();"/>
	   <form:errors path="city" cssClass="error"></form:errors>
	 </td>
	 
	 <td>
	  
	   Approved By
	  
	 </td>
	 <td>
	   <form:input path="approvedby" onkeyup="return isAlphabetic3();"/>
	   <form:errors path="approvedby" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   State
	  
	 </td>
	 <td>
	   <form:input path="state" onkeyup="return isAlphabetic4();"/>
	   <form:errors path="state" cssClass="error"></form:errors>
	 </td>
	 
	 <td>
	  
	   Zip
	  
	 </td>
	 <td>
	   <form:input path="zipno" onkeyup="return numeric1();"/>
	   <form:errors path="zipno" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   Phone
	  
	 </td>
	 <td>
	   <form:input path="phoneno" onkeyup="return numeric2();" maxlength="10"/>
	   <form:errors path="phoneno" cssClass="error"></form:errors>
	 </td>
	 <td>
	  
	   Dept
	  
	 </td>
	 <td>
	 
	 	<form:select path="department">
	 	<form:option value="Sales">Sales</form:option>
	 	<form:option value="Finance">Finance</form:option>
	 	<form:option value="Accounts">Accounts</form:option>
	 	<form:option value="Maintenance">Maintenance</form:option>
	 	<form:option value="HumanResource">HumanResource</form:option>
	 	</form:select>
	  
	 </td>
	 
	 
	</tr>
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" width="800" border="0">
	 <tr>
	  <td width="78">
	  Date
	  </td>
	  <td width="107">
	   Travel From
	  </td>
	  <td width="132">
	   Odometer Start
       </td>
	   <td width="120">
	    Odometer End
	   </td>
	   <td width="120">
	    Total Mileage
	   </td>
	   <td width="82">
	    Rate/Mile
	   </td>
	   <td width="115">
	    Amount Due
	   </td>
	 </tr>
	 <tr>
	  <td>
	  <form:input path="date2" size="10" onfocus="showCalendarControl(this);" readonly="true"/>
	   </td>
	   <td>
	    <form:input path="travelfrom" size="20" onkeyup="return isAlphabetic6();"/>
	    <form:errors path="travelfrom" cssClass="error"></form:errors>
	   </td>
	   <td>
	    <form:input path="odometerstart" size="10" id="startmilage" onkeyup="return numeric3();"/>
	    <form:errors path="odometerstart" cssClass="error"></form:errors>
	   </td>
	   <td>
	    <form:input path="odometerend" size="10" id="endmilage" onkeyup="return numeric4();"/>
	    <form:errors path="odometerend" cssClass="error"></form:errors>
	   </td>
	   <td>
	    <form:input path="totalmileage" size="10" id="totalmilage"/>
	   </td>
	   <td>
	    <form:input path="rate" size="10" id="priceperlit" onkeyup="return numeric5();"/>
	    <form:errors path="rate" cssClass="error"></form:errors>
	   </td>
	   <td>
	   <form:input path="amountdue" size="10" id="totalamount"/>
	   </td>
	 </tr>
	 <tr>
	 	<td>
		<input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
		<input type="hidden" name="deltby" value="<%=username%>"/>
	 	</td>
	  <td colspan="7" align="center">
	    <input type="image" src="images/submit_button.jpg" id="button1"></td>
	  </tr>
	</table>
   </td>
  </tr>
  
</table>
</form:form>
<h3>*All Fields are Mandatory*</h3>
</fieldset>
	
	</div>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
	<jsp:include page="footer.jsp" flush="false"/>
	</div>
		
	<%session.removeAttribute("successmsg"); %>
	</div>

<% }
else
{
response.sendRedirect("login.fin");
}%>
</body>

</html>