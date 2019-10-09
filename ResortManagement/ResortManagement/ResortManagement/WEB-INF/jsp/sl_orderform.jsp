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
			<jsp:include page="sl_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>Order Form</legend><span class="successmsg">${successmsg}</span>
		<form:form action="save_sl_order.res" method="post" commandName="orderFormBean">
			<table align="center" width="800" border="1">
 <tr>
  <td>
   <table align="center" width="800" border="0" >
    <tr>
	 <td>
	   <strong>Number
	   </strong></td>
	 <td>
	 
	 <form:input path="number" id="orderno"/>
    </td>
	</tr>
    <tr>
	 <td>
	   <strong>Date
	   </strong></td>
	 <td>
	  <form:input path="today" id="gendate1"/>
	 </td>
	</tr>
	<tr>
	 <td>
	   <strong>Sales Person
	   </strong></td>
	  <td>
	  
	  <form:input path="salesperson" onblur="return alphabetic(this.value);" class="name"/>
	  </td> 
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" border="0"  width="800">
    <tr>
	 <td>
	  <strong>Sold To</strong>
	  
	  <form:input path="soldto" onblur="return alphabetic(this.value);" class="name"/>
	  </td>
	  <td>
	   <strong>Ship To</strong>
	   
	   <form:input path="shipto" onblur="return alphabetic(this.value);" class="name"/>
	  </td>
	</tr>
	<tr>
	 <td>
	   <strong>Phone</strong>&nbsp;&nbsp; 
	  
	  <form:input path="phone" onblur="return numeric(this.value);" class="number"/>
	 </td>
	 <td>
	  <strong>Ship By</strong>
	  
	  <form:input path="shipby" onblur="return alphabetic(this.value);" class="name"/>
 	 </td>
	 </tr>
   </table>
     </td>
 </tr>
 <tr>
  <td>
  <table align="center" width="800" border="0" >
   <tr>
    <td>
	  <strong>
	  Quantity
	  
	  </strong></td>
	<td>
	  <strong>
	  Item/Description
	  
	  </strong></td>
	<td>
	  <strong>
	  Price/Item
	  
	  </strong></td>
	 
   </tr>
   <tr>
    <td height="30">
	 
	 <form:input path="quantity" onblur="return numeric(this.value);" class="number"/>
	 </td>
	 <td>
	 	<form:input path="itemdesc" onblur="return alphabetic(this.value);" class="name"/>
	  
	 </td>
	 <td>
	  
	  <form:input path="price" onblur="return numeric(this.value);" class="number"/>
	 </td>
	
    </tr>
     
	 <td colspan="4" align="center">
	 	<%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
	   <input type="image" src="images/submit_button.jpg" id="button1"></td>
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
