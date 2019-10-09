

<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset='utf-8'/>
<title>Resort</title>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
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
		<fieldset>
			<legend>
				view Mislineous Expenses By Executive
			</legend>
			
			<table border="1" cellpadding="0" cellspacing="0">
				<tr class="column_header">
					<td>
						Employee Id 
					</td>
					<td>
						Ledger Name
					</td>
					<td>
						Department
					</td>
					<td>
						Approved By
					</td>
					
				</tr>
				<c:forEach items="${MisleneousExp}" var="misexp" varStatus="status">
				<tr>
					<td><a href="rep_fn_mis_exp_by_executive.res?sno=${misexp.sno}" target="_blank">${misexp.empid}</a></td>
					<td>${misexp.ledgername}</td>
					<td>${misexp.department}</td>
					<td>${misexp.approvedby}</td>
				</tr>
				</c:forEach>
			</table>
			
			
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
