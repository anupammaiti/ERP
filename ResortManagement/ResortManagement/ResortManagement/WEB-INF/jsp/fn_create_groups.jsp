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
		<div class="content" align="center" >
		<fieldset>
	<legend>Groups</legend>
	



<form:form action="created_fn_group.res" method="post" commandName="groupDetailsBean" id="groups-form">


<table>


<tr>
<td>
Name
</td>
<td>
<form:input path="name"/>

</td>
</tr>

<tr>
<td>
(Alias)
</td>
<td>
<form:input path="alias"/>

</td>
</tr>

<tr>
<td>
Under
</td>
<td>
 <form:select path="under" id="groupsdata">
</form:select>
</td>
</tr>
<tr>
<td>
Nature Of Group 
</td>
<td>
<form:input path="natureofgroup"/>

</td>
</tr>


<tr>
<td>
Group behaves like a Sub-Ledger 
</td>
<td>
<form:select path="grpbeh">
	<form:option value="No">No</form:option>
	<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>

<tr>
<td>
Net Debit/Credit Balances for Reporting
</td>
<td>
<form:select path="netrep">
<form:option value="No">No</form:option>
<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>


<tr>
<td>
Used for Calculation
</td>
<td>
<form:select path="usecal">
	<form:option value="No">No</form:option>
	<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>
<tr>
<td>
Method to Allocate when Used in Purchase Invoice
</td>
<td>
<form:select path="metall">
	<form:option value="NotApplicable">Not Applicable</form:option>
	<form:option value="AppropriateByQty">Appropriate By Qty</form:option>
	<form:option value="AppropriateByValue">Appropriate By Value</form:option>
	<form:option value="NoAppropriatoin">No Appropriatoin</form:option>
</form:select>

</td>
</tr>
<tr><td>
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
