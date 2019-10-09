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
		<div class="content" align="center"><span id="successmsg">${successmsg}</span>
		<fieldset><legend>Auto Expencses Travel</legend>
<form:form action="fn_created_auto_expenses_form.res" method="post" commandName="autoExpencesesTravelBean">
<table align="center"  border="1">
 <tr>
  <td>
   <table width="800" align="center">
   <tr>
   <td width="245" align="right">
   Date
    </td>
	<td width="543">
	 <form:input path="date1" onfocus="showCalendarControl(this);" readonly="true"/>
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
   <table align="center" border="1">
    <tr>
	 <td>
	  Employee Id
	 </td>
	 <td>
	  <form:select path="empid" id="empid1">
	  <form:option value=""></form:option>
	  
	  </form:select>
	  
	 </td>
	 <td>
	  Completed By
	 </td>
	 <td>
	  <form:input path="completedby"/>
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
	  
	   Audited By
	  
	 </td>
	 <td>
	   <form:input path="auditedby"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   Address
	  
	 </td>
	 <td>
	   <form:input path="address"/>
	 </td>
	 
	 <td>
	  
	   Purpose of Trip
	  
	 </td>
	 <td>
	   <form:input path="purposeoftrip"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	   City
	  
	 </td>
	 <td>
	   <form:input path="city"/>
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
	  
	   State
	  
	 </td>
	 <td>
	   <form:input path="state"/>
	 </td>
	 
	 <td>
	  
	   Zip
	  
	 </td>
	 <td>
	   <form:input path="zipno"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  
	  Ledger Name
	  
	 </td>
	 <td>
	   <form:select path="ledgername" id="ledgerlist"></form:select>
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
    <table align="center" width="800" border="1">
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
	    Odometer End>
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
	    <form:input path="travelfrom" size="20"/>
	   </td>
	   <td>
	    <form:input path="odometerstart" size="10" id="startmilage"/>
	   </td>
	   <td>
	    <form:input path="odometerend" size="10" id="endmilage"/>
	   </td>
	   <td>
	    <form:input path="totalmileage" size="10" id="totalmilage"/>
	   </td>
	   <td>
	    <form:input path="rate" size="10" id="priceperlit"/>
	   </td>
	   <td>
	   <form:input path="amountdue" size="10" id="totalamount"/>
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
