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
		<fieldset>
			<legend>Create Ledger</legend>
		
<form:form action="created_fn_ledger.res" method="post" commandName="ledgerDetailsBean" id="ledger-form">
<table align="center" border="0">

 <tr>
  <td>
   
    Ledger Name
   
  </td>
  <td >
<form:input path="ledgername" id="ledgername"/>
 
  </td>
 </tr>
 <tr>
  <td>
   
    Alias
   
  </td>
  <td>
 <form:input path="alias" id="alias"/>
   
  </td>
 </tr>
 <tr>
  <td>
   
    Under
   
   </td>
   
	   
   
   <td>
    <form:select path="under" id="groupsdata">
    <form:option value=""></form:option>
	</form:select>
	 
	
   </td>
 </tr>
 <tr>
  <td>
   
    Inventory Values are Effected
   
  </td>
  <td>
  <form:select path="inventoryvalues">
  <form:option value=""></form:option>
  	<form:option value="No">No</form:option>
  	<form:option value="Yes">Yes</form:option>
  </form:select>
   
  </td>
  </tr>
  <tr>
   <td>
   
	 Name
	
   </td>
   <td>
   <form:input path="name" id="name"/>
    
   </td>
  </tr>
  <tr>
   <td>
    
	 Address
	
   </td>
   <td>
    <form:textarea path="address" id="address"/>
    
   </td>
  </tr>
  <tr>
   <td>
   
    State
   
   </td>
   <td>
    <form:input path="state" id="state"/>
    
   </td>
  </tr>
  <tr>
   <td>
   
	 Pin Code
	
    </td>
	<td>
	<form:input path="pincode" id="pincode"/>
	 
	</td>
  </tr>
  <tr>
   <td>
    
	 PAN/IT No:
	
   </td>
   <td>
    <form:input path="panno" id="panno"/>
    
   </td>
  </tr>
  <tr>
   <td>
    
	 Sales Tax No:
	
	
   </td>
   <td>
   <form:input path="salestax" id="salestax"/>
    
   </td>
   </tr>
   <tr>
    <td>
	
	  Opening Balance
	
	 </td>
	 <td>
	<form:input path="openingbalance" id="openingbalance"/>
	 <form:select path="type">
	 <form:option value="Dr">Dr</form:option>
	 <form:option value="Cr">Cr</form:option>
	 </form:select>
	  
	 </td>
	</tr>
	<tr>
	<td>
			<%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
	</td>
	 <td>
	 <input type="image" src="images/submit_button.jpg" id="button1"/>
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
