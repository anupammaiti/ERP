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

<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if(pwd!=null)
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="tele_marketing_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
	
		<fieldset>
			<legend>Guest User</legend>
			
			<form:form action="updateGuestByDirectorUser.res" method="post" commandName="guestUserBean">
			<c:forEach items="${guestuserlist}" var="guestuserlist" varStatus="status">			
			<table>
				<tr>
					<td>
						First Name :
					</td>
					<td>
						<form:input path="guest_name" value="${guestuserlist.guest_name}" readonly="true"/>			
					</td>
				</tr>
				<tr>
					<td>
						Last Name :
					</td>
					<td>
						<form:input path="guest_last_name" value="${guestuserlist.guest_last_name}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Mobile No:
					</td>
					<td>
						<form:input path="mobileno" value="${guestuserlist.mobileno}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
					E-mail
					</td>
					<td>
						<form:input path="email" value="${guestuserlist.email}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Best Day To Visit:
					</td>
					<td>
						<form:input path="reqforvisit" value="${guestuserlist.reqforvisit}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Villa Type:
					</td>
					<td>
						<form:input path="villa_type" value="${guestuserlist.villa_type}" readonly="true"/>
					</td>
				</tr>
				<tr><td><input type="hidden" name="guest_id" value="${guestuserlist.guest_id}"/></td></tr>
				<tr>
					<td>
						Department
					</td>
					<td>
						<form:input path="department" value="${guestuserlist.department}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
					Designation :
					</td>
					<td>
						<form:input path="designation" value="${guestuserlist.designation}" readonly="true" id="desig"/>
					</td>
				</tr>
				<tr>
					<td>
						Refer To:
					</td>
					<td>
						<form:input path="refered1" id="refe1" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						<%String id=request.getParameter("id"); %>
				 		<input type="hidden" name="guestid" value="<%=id%>"/> </td>
					<td>
						<input type="image" src="/images/allot_button.jpg" id="button1"/>
					</td>
				</tr>
				<tr>
					<td>
					
			 	
					</td>
				</tr>
			</table>
		</c:forEach>
			</form:form>
			
			 
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
