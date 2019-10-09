<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib  prefix="form"  uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/finance_style.css"/>	
</head>
<body>
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	
	</div>
	<div class="title_of_project"></div>
	
	</div>
	<div class="content" >
	
	<table>
		<tr>
			<td>Comapny Name:</td>
			<td><form:input path="companyname"/> </form></td>
		</tr>
		<tr>
			<td>Full Name :</td>
			<td><form:input path="username"/> </form></td>
		</tr>
		<tr>
			<td>Comapny Mail:</td>
			<td><form:input path="email"/> </form></td>
		</tr>
		<tr>
			<td>Contanct Number:</td>
			<td><form:input path="mobileno"/> </form></td>
		</tr>
		<tr>
			<td>Selected Module:</td>
			<td><form:input path=""/> </form></td>
		</tr>
		<tr>
			<td>Registered Date:</td>
			<td><form:input path=""/> </form></td>
		</tr>
		<tr>
			<td>Lease Time:</td>
			<td><form:input path=""/> </form></td>
		</tr>
		
	</table>
	
	
	</div>
	
	<%session.removeAttribute("loginerror"); %>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	
	
	</div>
	
</body>
</html>