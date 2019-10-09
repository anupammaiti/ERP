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
	<legend>Measurment</legend>


<form:form action="sfn_inventory_measure.res" method="post" commandName="measuresBean">

<table>


<tr>
<td >
Type
</td>
<td>
<form:select path="type">
	<form:option value="Simple">Simple</form:option>
	<form:option value="Compound">Compound</form:option>
</form:select>

</td>
</tr>

<tr>
<td>
Symbol
</td>
<td>
<form:input path="symbol"/>

</td>
</tr>




<tr>
<td>
Formal Name
</td>
<td>
<form:input path="formalname"/>

</td>
</tr>


<tr>
<td>
Number of Decimal Places
</td>
<td>
<form:input path="numofdec"/>

</td>
</tr>
<tr>
	<td>
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