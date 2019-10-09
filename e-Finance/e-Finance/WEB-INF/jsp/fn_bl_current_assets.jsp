<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 String comp=(String)session.getAttribute("compname");/* System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
 if((username!=null)&&(pwd!=null))
 { %>
<body onload="currentAssets();">
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
		<legend>Current Assets</legend>
	
		<table border="1" class="form_background">
			<tr class="column_header">
		
			
				<td>
					Group Name
				</td>
				<td>
					Amount
				</td>
			</tr>
				<tbody class="even_odd">
			<tr>
										<td>
											<a href="fn_bl_current_assets_list.fin">Current Assets</a>
										</td>
										<td align="right">
											<span id="current_assets1"></span>
										</td>
										
									</tr>
				<tr>
					<td>
						<a href="fn_bl_cash_in_hand_list.fin">Cash-in-Hand</a>
					</td>
					<td>
						<span id="cash_in_hand"></span>
					</td>
				</tr>
				<tr>
										<td>
											<a href="fn_bl_bank_and_cash_list.fin">Bank&Cash</a>
										</td>
										<td align="right">
											<span id="bank_cash"></span>
										</td>
									</tr>
				<tr>
										<td>
											<a href="fn_bl_loans_advances_assets.fin">Loans & Advances(Assets)</a>
										</td>
										<td align="right">
											<span id="loansandadv"> </span>
										</td>
									</tr>
			</tbody>
		</table>
		
</fieldset>

</div>
	<div class="footer"><input type="hidden" id="companyid" value="<%=comp%>"/>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div></div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
