<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>

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
	<jsp:include page="admin_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
		<fieldset>
			<legend>Travel Expenses</legend>
			
			<form:form action="rep_fn_travelexp_individual.fin"  method="post" commandName="autoExpencesesTravelBean" target="_blank">
				<table>
				<tr>
					<td>
						Ledger Name
					</td>
					<td>
						<form:select path="ledgername" class="ledgerdetailslist1"></form:select>
					</td>
				
					<td>
						Employee Name
					</td>
					<td>
						<form:input path="empname"/>
					</td>
					<td>
						Audited By
					</td>
					<td>
						<form:input path="auditedby"/>
					</td>
					<td>
					<td>
						Date
					</td>
					<td>
						<form:input path="gendate" onfocus="showCalendarControl(this);" readonly="true" />
					</td>
					<td>
						Delt By
					</td>
					<td>
						<select name="deltby" id="employeelist"></select>
					</td>
					<td><input type="hidden" id="companyid" name="login_comp" value="<%=comp%>"/>
						<input type="image" src="images/search_button.png" id="button1"/>
					</td>
				</tr>
							
			</table>
			</form:form>
			
			
		</fieldset>
	
	</div>
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