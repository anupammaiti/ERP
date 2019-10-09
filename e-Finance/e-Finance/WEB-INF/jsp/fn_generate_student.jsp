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
<body onLoad="studentDetails();">
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
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="left">
	<fieldset><legend>Student Details</legend>
	<input type="hidden" value="<%=comp %>" id="comp1"/>
	<form:form action="sfn_create_Student.fin" method="post" commandName="studentBean"> 
		<table align="center">
			<tr>
				<td>
					<table border="0" >
						<tr>
							<td>
								University
							</td>
							
							<td>Course</td>
							<td>Entroll No</td>
						</tr>
						<tr>
							<td><form:select path="university" id="univ"></form:select> </td>
							<td>
								<form:select path="course" id="course"></form:select>
							</td>
							<td>	
								<form:input path="entrollno"/>
								<form:errors path="entrollno" cssClass="error"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td><hr/></td>
			</tr>
			<tr>	
				<td>
					<table>
						<tr>
							<td>
								Student Name
							</td>
							<td>	
								<form:input path="name"/>
								<form:errors path="name" cssClass="error"/>
							</td>
						</tr>
						<tr>
							<td>
								Father Name
							</td>
							<td>	
								<form:input path="fatherName"/>
								<form:errors path="fatherName"/>
							</td>
						</tr>
						<tr>
							<td>
							Mother Name</td>
							<td>	
								<form:input path="motherName"/>
								<form:errors path="motherName"/>
							</td>
						</tr>
						<tr>
							<td>Date Of Birth</td>
							<td>	
								<form:input path="dob"/>
							</td>
						</tr>
						<tr>
							<td>
								Address
							</td>
							<td>	
								<form:textarea path="address"></form:textarea>
							</td>
						</tr>
						<tr>
							<td>
								Phone No
							</td>
							<td>	
								<form:input path="phoneno"/>
								<form:errors path="phoneno"/>
							</td>
						</tr>
						<tr>
							<td>Email</td>
							<td>	
								<form:input path="email"/>
								<form:errors path="email"/>
							</td>
						</tr>
						
						</table></td></tr>
							<tr>
								<td><hr/></td>
							</tr>
						<tr><td>
						<table>
						<tr>
							<td>
								1<sup>st</sup>Sem
							</td><td>
								<form:input path="sem1"/>
								<form:errors path="sem1"></form:errors>
							 </td>
								<td>
								2<sup>nd</sup>Sem
							</td><td>
								<form:input path="sem2"/>
								<form:errors path="sem2"/>	 
								</td>
								<td>
								3<sup>rd</sup>Sem
							</td><td>
								<form:input path="sem3"/>
								<form:errors path="sem3"/>	
								 </td>
						</tr>
						<tr>
							<td>
								4<sup>th</sup>Sem
							</td><td>
								<form:input path="sem4"/>
								<form:errors path="sem4"/>	
								 </td>
								<td>
								5<sup>th</sup>Sem
							</td><td>
								<form:input path="sem5"/>
								<form:errors path="sem5"/> 
								</td>
								<td>
								6<sup>th</sup>Sem
							</td><td>
								<form:input path="sem6"/>
								<form:errors path="sem6"/> 
								</td>
						</tr>
						<tr>
							<td>
								7<sup>th</sup>Sem
							</td><td>
								<form:input path="sem7"/>
								<form:errors path="sem7"/> 
								</td>
								<td>
								8<sup>th</sup>Sem
							</td><td>
								<form:input path="sem8"/>
								<form:errors path="sem8"/>
								 </td>
								
						</tr>
						<tr></tr>
						<tr>
							<td>Provisional</td>
							<td>	
								<form:input path="provisnal"/>
								<form:errors path="provisnal"></form:errors>
							</td>
						
							<td>Migration</td>
							<td>	
								<form:input path="migration"/>
								<form:errors path="migration"/>
							</td>
						
							<td>OD</td>
							<td>	
								<form:input path="od"/>
								<form:errors path="od"/>
							</td>
						</tr>
						<tr>	
							<td>Long Memo</td>
							<td>	
								<form:input path="longmemo"/>
								<form:errors path="longmemo"/>
							</td>
						
							<td>Other</td>
							<td>
								<form:input path="other"/>
								<form:errors path="other"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td><hr/></td>
			</tr>
			<tr>
				<td>	
					<table align="center">	
						<tr>
							<td>	
								RC No	
							</td>
							<td>Date</td>
							<td>
								DD/Check
							</td>
							<td>
								Course Fee
							</td>
							<td>
								Exam Fee
							</td>
							<td>
								Center Fee
							</td>
							<td>	
								Application Fee
							</td>
							<td>	
								Other Fee
							</td>
							<td>
								Total Fee
							</td>
							<td>
								Paid
							</td>
							<td>
								Balance
							</td>
						</tr>
						<tr>
							<td>	
								<form:input path="rcno" size="10"/>
								<form:errors path="rcno"/>
							</td>
							<td>	
								<form:input path="date" size="10"/>
								
							</td>
							<td>	
								<form:input path="ddorcheck" size="10"/>
								<form:errors path="ddorcheck"/>
							</td>
							<td>	
								<form:input path="coursefee" size="10" id="cfee"/>
								<form:errors path="coursefee"/>
							</td>
							<td>	
								<form:input path="examfee" size="10" id="efee"/>
								<form:errors path="examfee"/>
							</td>
							<td>	
								<form:input path="centerfee" size="10" id="cenfee"/>
								<form:errors path="centerfee"/>
							</td>
							<td>	
								<form:input path="applicationfee" size="10" id="apfee"/>
								<form:errors path="applicationfee"/>
							</td>
							<td>	
								<form:input path="otherfee" size="10" id="othfee"/>
								<form:errors path="otherfee"/>
							</td>
							<td>	
								<form:input path="totalpaid" size="10" id="totalfee"/>
								
							</td>
							<td>	
								<form:input path="paid" size="10" id="paidfee"/>
								<form:errors path="paid"/>
							</td>
							<td>
								<form:input path="balance" size="10" id="balance"/>
							</td><input type="hidden" name="collegename" value="<%=comp%>"/>					
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<hr/>
				</td>
			</tr>
			<tr>
				<td>
					<table align="center"> 
						<tr>
							<td>
								<input type="image" src="images/submit_btn.png"/>
							</td></form:form>
							
						</tr>
					</table>
				</td>
				
			</tr>
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