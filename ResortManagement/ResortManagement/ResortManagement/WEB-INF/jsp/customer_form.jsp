<%@ page language="java" contentType="text/html; accept-charset=utf-8 "
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; accept-charset=utf-8 ">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
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
			<jsp:include page="header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>Customer Form</legend>
				<c:forEach items="${guest_list}" var="guest" varStatus="staus"> 
				<form:form action="save_customer_form.res" method="post" commandName="customerBean">
				<table cellpadding="3px" cellspacing="3px">
					<tr>
						<td>
							First Name:
						</td>
						<td>
							<form:input path="customer_first_name" value="${guest.guest_name}" readonly="true"/>
						</td>
					
						<td>
							Last Name:
						</td>
						<td>
							<form:input path="customer_last_name" value="${guest.guest_last_name }" readonly="true"/>
						</td>
						<td>
							Gender:
						</td>
						<td>
							
							<form:select path="gender">
								<form:option value=""></form:option>
								<form:option value="male">male</form:option>
								<form:option value="female">female</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>
							Mobile No:
						</td>
						<td>
							<form:input path="mobileno" value="${guest.mobileno }" readonly="true"/>
						</td>
						<td>
							Email:
						</td>
						<td>
							<form:input path="email" value="${guest.email }" readonly="true"/>
						</td>
					
						<td>
							Address:
						</td>
						<td>	
							<form:textarea path="address" required="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Type Of Villa:
						</td>
						<td>
							<form:input path="typeofvilla" value="${guest.villa_type}" readonly="true"/>
								
								
							
						</td>
								<td>
							Villa Facing:
						</td>
						<td>
							<form:select path="facingofvilla" requiered="true">
								<form:option value=""></form:option>
								<form:option value="East">East</form:option>
								<form:option value="North">North</form:option>
								<form:option value="West">West</form:option>
							</form:select>
						</td>
							<td>
							Price :
						</td>
						<td>
						<form:input path="pricelimit" onblur="return numeric(this.value);" class="number" required="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Flat in Feet:
						</td>
						<td>
							<form:input path="flatinfeet" onblur="return numeric(this.value);" class="number" required="true"/><sub>sqft</sub>
						</td>
						<td>
							Location:
						</td>
						<td>
							<form:input path="location" onblur="return alphabetic(this.value);" class="number" required="true"/>
						</td>
						<td>
							Block 
						</td>
						<td>
							<form:select path="block"></form:select>
						</td>
					</tr>
					
					<tr>
					<td>
							Working Company Name
						</td>
						<td>
							<form:input path="workingcompanyname" onblur="return alphabetic(this.value);" class="name" required="true"/>
						</td>
						<td>
							Working Type
						</td>
						<td>
							<form:input path="workingtype" onblur="return alphabetic(this.value);" class="name" required="true"/>
								
							
						</td>
							
					</tr>
					
					<tr>
						<td>
							Bank Name
						</td>
						<td>
							<form:input path="bankname" onblur="return alphabetic(this.value);" class="name" required="true"/>
						</td>
					
						<td>
							Bank Account
						</td>
						<td>
							<form:input path="bankaccount" onblur="return numeric(this.value);" class="number" required="true"/>
						</td>
						<td>
							Salary
						</td>
						<td>
							<form:input path="salary" onblur="return numeric(this.value);" class="number" required="true"/>
						</td>
					</tr>
					<tr>
						<td>
							UserName:
						</td>
						<td>
							<form:input path="username" id="uname"/>
						</td>
					</tr>
					<tr>	
						<td>
							Password:
						</td>
						<td>
							<form:password path="password"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="hidden" name="manager" value="${guest.designation}"/>
							<input type="hidden" name="dept" value="${guest.department}"/>
						</td>
						<td>	
							
						</td>
						<td>
							<input type="image" src="images/submit_button.jpg" id="button1"/>
						<!--  <input type="submit" value="Submit"/>-->
						</td>
					</tr>
				</table>
				<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
				</form:form>
				</c:forEach>				
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
