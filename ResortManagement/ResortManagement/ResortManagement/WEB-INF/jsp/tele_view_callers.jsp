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
			<jsp:include page="tele_marketing_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="left">
			<fieldset>
				<legend>View Tele Callers List</legend><span id="successmsg">${upsuccess}</span>
				<table align="center" cellpadding="3px" cellspacing="7px" border="1px">
					<tr class="column_header"> 
						<td>
							Name
						</td>
						<td>
							Designation
						</td>
						<td>
							Status
						</td>
						<td>
							Reporting To
						</td>
						<td>
							Manager
						</td>
					</tr>
					<c:forEach items="${TeleCallerList}" var="telecaller" varStatus="status">
					<tr>
						<td>
							<c:out value="${telecaller.firstname}"></c:out>
							
						</td>
						
						<td>
							<a href="tele_director_alloted_callers.res?id=<c:out value="${telecaller.empno}"/>"><c:out value="${telecaller.designation}"></c:out></a>
						</td>
						<td>
							<c:out value="${telecaller.status}" />
						</td>
						<td>
							<c:out value="${telecaller.reportingto}"></c:out>
						</td>
						<td>
							<c:out value="${telecaller.manager}"></c:out>
						</td>
					</tr>
					</c:forEach>
				</table>
			</fieldset>
		</div>
			<jsp:include page="footer.jsp" flush="true"></jsp:include>
		</div>
	<%session.removeAttribute("upsuccess"); %>
	
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>