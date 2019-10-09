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
	
<form:form action="sfn_create_company_payslip.fin" method="post" commandName="companyPaySlipBean">

 <table border="1" bordercolor="#573801" align="center" >
			<tr align="center">
				<td align="center">
					<form action="cps" method="post">
					
					<table align="center">
						<tr>
							<td>
								Company Name
							</td>
							<td>
								<form:input path="companyname" value="<%=comp%>"/>
								
							</td>
						</tr>
						<tr>
							<td>
								Basic Salary 
							</td>
							<td>
								<form:input path="basic"/>
								
							</td>
						</tr>
						<tr>
							<td>
							HRA
							</td>
							<td>
								<form:input path="hra"/>
								
							</td>
						</tr>
						<tr>
							<td>
							PF
							</td>
							<td>
								<form:input path="pf"/>
								
							</td>
						</tr>
						<tr>
							<td>
								Conveyance
							</td>
							<td>
								<form:input path="conv"/>
								
							</td>
						</tr>	
						
						<tr>
							<td>
								DA
							</td>
							<td>
							<form:input path="da"/>	
							
							</td>
						</tr>
					</table>
					
					<table align="center" class="y" >
					<caption><b>IncomeTax Slab Structure</caption>
	
					<tr><td align="center" colspan="4"><b>For Men</b></td></tr>
					<tr>
						<th><b>Slab</b></th>
						<th><b>Inclusive</b></th>
						<th><b>Exclusive</b></th>
						<th><b>%</b></th></tr>
						
						<tr> <td align="center"> <b>slab1</b></td>
						 <td>
						 	<form:input path="tx1"/>
						 </td>
						 <td>
						 	<form:input path="tx2"/>
						 </td>
						 <td>
						 <form:input path="tx3"/>
						 </td> 
						 </tr>

						<tr> <td align="center"> <b>slab2</b></td> 
						<td>
							<form:input path="tx4"/>
						</td>
						<td><form:input path="tx5"/>						</td> 
						<td>
						<form:input path="tx6"/>
						</td> 
						</tr>

						<tr> <td align="center"><b>slab3</b></td>
						 <td>
						 <form:input path="tx7"/>
						 </td> 
						 <td>
						 <form:input path="tx8"/>
						 </td> 
						 <td>
						 <form:input path="tx9"/>
						 </td> 
						</tr>

						<tr><td align="center"><b> slab4</b></td> 
						<td>
						<form:input path="tx10"/>
						</td> 
						<td>
						<form:input path="tx11"/>
						</td>
						 <td>
						 <form:input path="tx12"/>
						 </td>
					   </tr>


						<tr><td align="center" colspan="4"><b>For Women<b></td></tr>
						
						<tr> <td align="center"> <b>slab1</b></td>
						<td>
						<form:input path="ftx1"/>
						</td> 
						<td>
						<form:input path="ftx2"/>
						</td> 
						<td>
						<form:input path="ftx3"/>
						</td>
						</tr>

						<tr> <td align="center"><b> slab2</b></td> 
						<td>
						<form:input path="ftx4"/>
						</td> 
						<td>
						<form:input path="ftx5"/>
						</td> 
						<td>
						<form:input path="ftx6"/>
						</td>
						</tr>

						<tr> <td align="center"><b> slab3</b></td> 
						<td>
						<form:input path="ftx7"/>
						</td> 
						<td>
						<form:input path="ftx8"/>
						</td> 
						<td>
						<form:input path="ftx9"/>
						</td>
						 </tr>

						<tr> <td align="center"> <b>slab4</b></td> 
						<td>
						<form:input path="ftx10"/>
						</td> 
						<td>
						<form:input path="ftx11"/>
						</td> 
						<td>
						<form:input path="ftx12"/>
						</td> 
						</tr>
                          
                        <tr>
                        	<td colspan="4" align="center"> 
                         	<input type="image" src="images/submit_btn.png" class="payroll_button"/>
                         	</td>
                        </tr>
						</table>
						</form>
						</td></tr>
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
	<%}else{
		response.sendRedirect("login.fin");	
	}
		 %>
	
</body>
