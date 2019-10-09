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
		<div class="content" align="center">
	
		<fieldset>
			<legend>Guest User</legend>
			
			<form:form action="updateGuestUser.res" method="post" commandName="guestUserBean">
			<c:forEach items="${guestUserUpdatList}" var="guestuserlist" varStatus="status">			
			<table>
				<tr>
					<td>
						First Name :
					</td>
					<td>
						<form:input path="guest_name" value="${guestuserlist.guest_name}"/>			
					</td>
				</tr>
				<tr>
					<td>
						Last Name :
					</td>
					<td>
						<form:input path="guest_last_name" value="${guestuserlist.guest_last_name}"/>
					</td>
				</tr>
				<tr>
					<td>
						Mobile No:
					</td>
					<td>
						<form:input path="mobileno" value="${guestuserlist.mobileno}"/>
					</td>
				</tr>
				<tr>
					<td>
					E-mail
					</td>
					<td>
						<form:input path="email" value="${guestuserlist.email}"/>
					</td>
				</tr>
				<tr>
					<td>
						Req for Call:
					</td>
					<td>
						<form:input path="reqforcall" value="${guestuserlist.reqforcall}"/>
					</td>
				</tr>
				<tr>
					<td>
						Req for Quote:
					</td>
					<td>
						<form:input path="reqforquote" value="${guestuserlist.reqforquote }"/>
					</td>
				</tr>
				<tr>
					<td>
						Best Day To Visit:
					</td>
					<td>
						<form:input path="reqforvisit" value="${guestuserlist.reqforvisit}"/>
					</td>
				</tr>
				<tr>
					<td>
						Villa Type:
					</td>
					<td>
						<form:input path="villa_type" value="${guestuserlist.villa_type}"/>
					</td>
				</tr>
				<tr>
					<td>
						Villa Facing
					</td>
					<td>
						<form:input path="facing_villa" value="${guestuserlist.facing_villa}"/>
					</td>
				</tr>
				<tr><td><input type="hidden" name="guest_id" value="${guestuserlist.guest_id}"/></td></tr>
				
				
				<tr>
					<td>
						Department :
					</td>
					<td>
						<form:select path="department" id="departmentid" readonly="true"></form:select>
						
					</td>
				</tr>
				<tr>
					<td>
					Designation :
					</td>
					<td>
						<form:select path="designation" id="designation1" ></form:select>
					</td>
					<td width="150px">
						<span id="empname"></span>
					</td>
				</tr>
				
				<tr>
					<td>
						<%String id=request.getParameter("id"); %>
				 		<input type="hidden" name="guestid" value="<%=id%>"/>
				 		<span></span>
				  </td>
					<td>
						<!--  <input type="submit" value="Update"/>-->
						<input type="image" src="images/allot_button.jpg" id="button1"/>
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
