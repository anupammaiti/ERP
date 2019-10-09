<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">

<fieldset><legend>Phone Bill Expenses</legend> 
<form:form action="sfn_daily_phone_expenses.res" method="post" commandName="phoneBillExpencesesBean">
<table align="center" width="800" border="1" >
 <tr>
  <td>
   <table width="800" align="center" >
   <tr>
   <td width="245" align="right">
   Date>
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
   <table width="511" height="90" border="1" align="center" cellpadding="0" cellspacing="0">
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
	  <form:input path="phoneno"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   Location
	  
	 </td>
	 <td>
	   <form:input path="location"/>
	 </td>
	 <td>
	  
	   Approved By
	  
	 </td>
	 <td>
	   <form:input path="approvedby"/>
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
	 <td>Ledger Name</td>
	 <td>
	 	<form:select path="ledgername" id="ledgerlist"></form:select>
	 </td>
	
	
	</tr>
	<tr>
		<td>Employee Id</td>
		<td><form:select path="userid" id="empid1"></form:select> </td>
	</tr>
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" cellpadding="0" cellspacing="0">
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
	   <form:input path="amountdue"/>
	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center">
	  <%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="department1" id="dept1"/>
	  <input type="image" src="images/submit_button.jpg" id="button1"></td>
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
response.sendRedirect("login.res");
}%>	
</body>
</html>
