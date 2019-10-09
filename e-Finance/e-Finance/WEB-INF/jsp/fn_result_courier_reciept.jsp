<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/finance_style.css"/>

</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
// System.out.println("hi"+username);
// System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project"><%=comp%></div>
	<div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="admin_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="left">
	
	<fieldset><legend>Courier Reciept Search</legend>
	<table border="1">
		<tr class="column_header">
			<td>
				Reciept Date
			</td>
			
			<td>
				FormType
			</td>
		
			<td>
				Document For Eligibility
			</td>
		
			<td>
			Mislineous
			</td>
		
			<td>
				Weight Of the Courier
			</td>
		
			<td>Payment Mode</td>
		
			<td>
				Courier Consigment
			</td>
		
			<td>Courier Company</td>
		
			<td>
				Held By
			</td>
		</tr>
		<c:forEach items="${CourierRecieptList }" var="crecpt">
		<tr>
			<td>${crecpt.recieptdate }</td>
			<td>${crecpt.formtype }</td>
			<td>${crecpt.dcforeligibility }</td>
			<td>${crecpt.misleneous }</td>
			<td>${crecpt.weightofcourier }</td>
			<td>${crecpt.paymentmode }</td>
			<td>${crecpt.ccno }</td>
			<td>${crecpt.ccompany }</td>
			<td>${crecpt.deltby }</td>
		</tr>
		</c:forEach>
	</table>
	
	</fieldset>
	
	</div><input type="hidden" id="companyid" value="<%=comp%>"/>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>