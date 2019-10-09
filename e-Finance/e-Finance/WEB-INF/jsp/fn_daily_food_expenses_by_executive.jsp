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
	});</script>
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
<fieldset><legend>Food Expenses</legend><span id="sucessmsg">${sucessmsg}</span>
<form:form action="sfn_food_expenses.fin" method="post" commandName="foodExcepensesBean">
<table align="center" width="800" class="form_background" >

 <tr>
  <td>
   <table align="center"  >
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
	   <form:input path="phoneno"/>
	   <form:errors path="phoneno" cssClass="error"></form:errors>
	 </td>
	</tr>
	<tr>
	 <td>
	   
	   Location
	   </td>
	 <td>
	   <form:input path="location"/>
	   <form:errors path="location" cssClass="error"/>
	 </td>
	
	<td>
	  
	   Approved By
	  </td>
	  <td>
	   <form:input path="approvedby" />
	   <form:errors path="approvedby" cssClass="error"/>
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
	  <td width="258">
	  Date</td>
	 <td width="258">
	   Day</td>
	 
	  
	   
	  
	   <td>
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
	   <form:input path="amountdue"/>
	   <form:errors path="amountdue" cssClass="error"></form:errors>
	   </td>
	 </tr>
	 <tr>
	 	<td>
	 		<input type="hidden" name="login_comp" value="<%=comp%>"/>
	 	</td>
	  <td align="center">
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
