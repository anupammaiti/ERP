<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" import="java.io.*" errorPage="" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!--
	Big Picture by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->



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
<body onload="return genPaySlip();">
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
				<center>PaySlip</center>
<form:form action="sfn_final_paylsip.fin" method="post" commandName="finalPaySlipBean"> 	
	 <table class="tab10" align="center"> 
  <tr>
	<td><input type="hidden" value="<%=request.getParameter("sno")%>" id="sno"/>
		<label>EmpId:</label></td><td><input type="text"name="empid"  id="empid"/>
	</td>
	<td>
		<label>Bank A/c No:</label></td><td><input type="text" name="bankaccount" id="bankac" />
	</td>
	<td>
		<label>PF No:</label></td><td><input type="text" name="pfno" id="pfno"/>
	</td>
</tr>
<tr>
	<td>
		<label>Employee Name</label></td><td><input type="text" name="empname" id="empname"/>
	</td>
	<td>
		<label>Department</label></td><td><input type="text" name="deprtment" id="dept"/>
	</td>
	<td>
		<label>Pan Number</label></td><td><input type="text" name="pannumber" id="pannumber"/>
	</td>
</tr>
<tr>
	<td>
		<label>Designation</label></td><td><input type="text" name="designation" id="desig"/>
	</td>
	<td>
		<label>Paid Days</label></td><td><input name="paiddays" type="text" id="paiddays"/>
	</td>
</tr>
</table>

<hr/>
</td>
</tr>

<tr>
	<td>
							<table class="tab10" align="center">
							<tr><td>Allowance</td><td>Amount</td><td>Deductions</td><td>Amount</td></tr>
								<tr>
									<td>
											<label>Basic</label></td><td><input type="text"name="basic"  id="basic"/>
											
									</td>
									<td>
											<label>PF</label></td><td><input name="pf" type="text" id="pf"/>
											
									</td>
									</tr>
									<tr>
									<td>
										<label>HRA</label></td><td><input name="hra" type="text" id="hra"/>
									</td>
									<td>
										<label>PT</label></td><td><input type="text" name="pt" id="pt"/>
									</td>
								</tr>
								<tr>
									<td>
									<label>Conveyance</label></td><td><input type="text" name="conv" id="conv"/>
									</td>
									<td>
										<label>IncomeTax</label></td><td><input type="text" name="ittax"  id="it"/>
									</td>
								
								</tr>
														
								<tr>
								<td>
								DA
								</td>
								
								<td>
									<input type="text" name="da"  id="da"/>
								</td>
									
								<td>
									Loan
								</td>
								<td>
									<input type="text" name="loan" id="loan"/>
								</td>
								</tr>
								<tr>
								<td>
									<label>Special Allowance</label></td><td><input type="text" name="sa" id="sa"/>
								</td>
								<td>
									<label>Other Deductions</label></td><td><input name="otherded" type="text" id="otherded"/>
								</td>
								</tr>
								<tr>
									<td>
										Medical 
									</td>
									<td>
										<input type="text" name="medical" id="medical"/>
									</td>
								</tr>
								<tr>
									<td>
										Child Education 
									</td>
									<td>
										<input name="childedu" id="ched" type="text"/> 
									</td>
								</tr>
								
								<tr>
									<td><label>Gross Salary</label></td><td><input type="text" name="gross" id="gs"/> </td><td><label>Total Deduction</label></td><td><input type="text" name="totalded" id="totded"/> </td>								</tr>
							</table><hr/>
							<table class="tab10" align="center">
								<tr>
									<td>
										<label>Net Amount</label></td><td><input type="text" name="totalnet" id="net"/>
									</td>
									<td><label>Payment By Bank</label></td><td><input type="text" name="payment" id="fialsalary"/> </td>
									
								</tr>
								<tr><td></td><td></td><td><input type="image" src="images/submit_button.jpg" id="button1"/></td></tr>


							</table>	
	</td>
</tr>
</table>            
</form:form>	
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