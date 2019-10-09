<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" >
	function isEmpty(){
		with(document.employee_form)
		if((firstname.value=="")||(lastname.value=="")||(gender.value=="")||(maritualstatus.value=="")||(email.value=="")||(mobile.value=="")||(land_line.value=="")||(address.value=="")||(pincode.value=="")||(qualification.value=="")||(expectedsalary.value=="")||(bankaccountno.value=="")||(pannumber.value=="")||(passportnumber.value=="")(passportexpirydate.value=="")||(designation.value="")||(reportingto.value=="")||(username.value=="")||(password.value=="")){
			alert('All Fields are Mandetory');
			return false;
				
		}
		
		return false;
	}
	function alphaMaxMin(name){
		alert("Methods are");
		
		nameMaxMinLength(name);
	}
</script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
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
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="left">
			<fieldset>
				<legend>Employee Details</legend>
				<span id="successmsg">${updatesuccess}</span>
					<c:forEach items="${EmployeeList}" var="emp" varStatus="status">							
					<form:form action="semployee.res" method="post" commandName="employeeBean" name="employee_form" onsubmit="return isEmpty();">
						<table cellpadding="3px" cellspacing="7px">
							<tr>
								<td>
									First Name:
								</td>
								<td>
									
									<form:input path="firstname" onblur="return alphabetic(name.value);" required="true" value="${emp.firstname}"/>
								</td>
							
								<td>
									Last Name:
								</td>
								<td>
									<form:input path="lastname" onblur="return alphabetic(name.value);" required="true" value="${emp.lastname}"/>
								</td>
								<td>	
									Date Of Birth:
								</td>
								<td>	
									<form:input path="dateofbirth" required="true" value="${emp.dateofbirth}"/>
								</td>
							</tr>
							<tr>
								<td>
									Gender:
								</td>
								<td>
									<form:select path="gender" value="${emp.gender}">
										<form:option value=""></form:option>
										<form:option value="male">male</form:option>
										<form:option value="female">female</form:option>
									</form:select>
								</td>
								<td>
									Maritual Status:
								</td>
								<td>
									<form:select path="maritualstatus" value="${emp.gender}">
										<form:option value=""></form:option>
										<form:option value="Single">Single</form:option>
										<form:option value="Married">Married</form:option>
										<form:option value="Divorced">Divorced</form:option>
									</form:select>
						
								</td>
									
								
							</tr>
							<tr><td></td></tr>
							
							<tr>
							<td>
								e-mail:	
							</td>
							<td>
								<form:input path="email" size="42" required="true" value="${emp.email}"/>
							</td>
							<td>
								Mobile:
							</td>
							<td>
								<form:input path="mobile" onblur="return numeric(this.value);" required="true" value="${emp.mobile}"/>
							</td>
							<td>
								Land Line:
							</td>
							<td>
								<form:input path="land_line" onblur="return numeric(this.value);" required="true" value="${emp.land_line}"/>
							</td>
							</tr>
							<tr>
								<td>
									Address:
								</td>
								<td>
									<form:textarea path="address" required="true" value="${emp.address}"/>
								</td>
								<td>
									Pin Code:
								</td>
								<td>
									<form:input path="pincode" onblur="return numeric(this.value);" required="true"  value="${emp.pincode}"/>
								</td>
							</tr>
							<tr>
							<td>
									Qualification:
								</td>
								<td>
									
									<form:select path="qualification" required="true">
										<form:option value=""></form:option>
										<form:option value="SSC"></form:option>
										<form:option value="UnderGraduation"></form:option>
										<form:option value="Graduation"></form:option>
										<form:option value="PostGraduation"></form:option>
										<form:option value="PHD"></form:option>
									</form:select>
								</td>
								<td>
									Salary/(month):
								</td>
								<td>
									<form:input path="expectedsalary" onblur="return numeric(this.value);" required="true" value="${emp.expectedsalary}"/>
								</td>
								<td>
									Bank Account No:
								</td>
								<td>
									<form:input path="bankaccountno" onblur="return numeric(this.value);" required="true" value="${emp.bankaccountno}"/>
								</td>
		
							</tr>
							<tr>
							<td>
									Pan Number:
								</td>
								<td>
									<form:input path="pannumber" onblur="return alphanumeric(this.value);" required="true" value="${emp.pannumber}"/>
								</td>
								<td>
									Passport Number:
								</td>
								<td>
									<form:input path="passportnumber" onblur="return numeric(this.value);" required="true" value="${emp.passportnumber}"/>
								</td>
								<td>
									Passport Exp dt:
								</td>
								<td>
									<form:input path="passportexpirydate" required="true" value="${emp.passportexpirydate}"/>
								</td>
							</tr>
							<tr>
								
							</tr>
													
							<tr>
								<td>
									Department
								</td>
								<td>
									
									<form:select path="department" id="dept" required="true"></form:select>
								</td>
								<td>
									Designation:
								</td>
								<td>
									<form:select path="designation" id="designation1" required="true">
									
									</form:select>
								</td>
								<td>
									Reporting To:
								</td>
								<td>
									<form:select path="reportingto" id="reportingto" required="true"></form:select>
								</td>
							</tr>
							
							<tr>
								
							</tr>
							<tr>
								<td>
									User Name:
								</td>
								<td>
									<form:input path="username" required="true" value="<%=username%>"/>
								</td>
								<td>
								</td>
								<td>
								</td>
								<td>
								</td>
								<td>
									<span id="empname"></span>
								</td>			
							</tr>
		
									
							<tr>
								<td>
								</td>
								<td></td>
								<td>
									<!-- <input type="submit" value="Submit"/> -->
									<input type="image" src="images/update_button.jpg" id="button1"/>
								</td>
							</tr>
							<tr>
								<td>
															
								</td>
							</tr>
					</table>
				</form:form>
				</c:forEach>
			</fieldset>
		</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	
	<%session.removeAttribute("successmsg"); %>
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>