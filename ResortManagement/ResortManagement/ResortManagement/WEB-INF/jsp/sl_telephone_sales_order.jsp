<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/adding_rows.js"></script>
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
			<jsp:include page="sl_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>Telephone Sales Order</legend>
		
		<form:form action="save_sl_telephone_sales_order.res" method="post" commandName="telephoneSalesOderBean">
<table align="center" width="800"  border="1">

 <tr>
  <td>
   <table align="center" border="0" width="800"	>
    <tr>
	 <td width="363" rowspan="3">
	  To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<form:textarea path="toaddress"/>
	   
	 </td>
	 <td width="421">
	  Customer#&nbsp;&nbsp;
	  <form:input path="customer"/>
	  
	 </td>
	 
	 </tr>
     <tr>
	 <td>
	   Terms&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <form:input path="terms"/>
	   
	   </td>
	 </tr>
	 <tr>
	  <td>
	   SalesPerson
	   <form:input path="salesperson"/>
	   
	  </td>
	
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="0">
    <tr>
	 <td width="367">
	  Ship to
	  <form:textarea path="shipto"/>
	  
	 </td>
	 <td width="417">
	  Ship WeekOf
	  <form:input path="shipweek"/>
	  
	  </td>
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="0">
    <tr>
	 <td>
	  
	   Item
	  
	 </td>
	 <td>
	  Quantity Ordered
	 </td>
	 <td>
	  Description
	 </td>
	 <td>
	  Unit Count
	 </td>
	 <td>
	  Unit Price
	</td>
	
	</tr>
	<tr>
	 <td>
	  <form:input path="item"/>
	  
	  </td>
	  <td>
	  <form:input path="quantityordered"/>
	   
	  </td>
	  <td>
	   <form:textarea path="description"/>
	   
	  </td>
	  <td>
	   <form:input path="unitcount"/>
	   
	  </td>
	  <td>
	   <form:input path="unitprice"/>
	   
	  </td>
	  
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800"  border="0">
    <tr>
	 <td rowspan="3">
	  Special Instructions
	  <p>
	  <form:textarea path="specilainstructions"/>
	   
	  </p>
	 </td>
	 <td rowspan="3">
	  Date
	  <form:input path="date" id="gendate1"/>
	  
	 </td>
	  <td height="36">
	  Approval Name&nbsp;
	  <form:input path="approvalname"/>
	  
	  </td>
	</tr>
	<tr>
	<td height="34">
	 Purchaser Name
	  <form:input path="purchasername"/>
	  
	  </td>
	  
	</tr>
	<tr>
	 <td>
	  Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <form:input path="title"/>
	  
	 </td>
	</tr>
	<tr>
	<td colspan="3" align="center">
	 <%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
	  <input type="image" src="images/submit_button.jpg" id="button1"/>
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
	<%session.removeAttribute("successmsg"); %>	
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>