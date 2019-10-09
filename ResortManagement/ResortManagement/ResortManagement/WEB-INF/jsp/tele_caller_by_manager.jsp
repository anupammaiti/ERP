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
		if((firstname.value=="")||(lastname.value=="")||(gender.value=="")||(maritualstatus.value=="")||(email.value=="")||(mobile.value=="")||(land_line.value=="")||(address.value=="")||(pincode.value="")||(qualification.value=="")||(expectedsalary.value=="")||(bankaccountno.value=="")||(pannumber.value=="")||(passportnumber.value=="")(passportexpirydate.value=="")||(designation.value="")||(reportingto.value=="")||(username.value=="")||(password.value=="")){
			alert('All Fields are Mandetory');
			return false;
				
		}
		
		return false;
	}
	function alphaMaxMin(name){
		alert("Methods are");
		alphabetic(name);
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
 if(pwd!=null)
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="tele_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="left">
		<fieldset>
				<legend>Tele Callers </legend><a href="rep_executive_list.res?uname=<%=username%>" target="_blank" ><img src="images/pdf_download.png" align="right" width="50px" height="50px"/></a>
				<table align="center" cellpadding="3px" cellspacing="6px" border="1px">
					<tr class="column_header" >
						<td>
							Name
						</td>
						<td>
							Designation
						</td>
						<td>
							User Name
						</td>
						<td>
							Mobile No
						</td>
					</tr>
					<c:forEach items="${CallersList}" var="tellecaller" varStatus="status">
					<tr>
						<td>
							<c:out value="${tellecaller.firstname}"></c:out>
						</td>
						<td>
							<c:out value="${tellecaller.designation}"></c:out>
						</td>
						<td>
							<c:out value="${tellecaller.username}"></c:out>
						</td>
						<td>
							<c:out value="${tellecaller.mobile}"></c:out>
						</td>
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