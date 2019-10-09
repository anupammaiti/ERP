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
<!--<script type="text/javascript" src="js/resort_js.js"></script>-->
<!--
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/resort_validation_js.js"></script>-->
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
				<legend>Customer List</legend>
<!--				<table border="1px">
					<tr  class="column_header">
						<td>
							Name
						</td>
						<td>	
							E Mail:
						</td>
						<td>
							Mobile:
						</td>
						<td>
							Type Of Villa:
						</td>
						<td>
							Price:
						</td>
						<td>
							Location:
						</td>
							<td>
							Manager
						</td>
						<td>
							Delt By:
						</td>
					</tr>
						<c:forEach items="${customerList}" var="customer" varStatus="status">
					
					<tr>
						<td>
							<c:set var="name" value="${customer.customer_first_name}${customer.customer_last_name}"/>
							
							<c:out value="${name}"/>
						</td>
						<td>
						
							<c:out value="${customer.email}"/>
						</td>
						<td>
							<a href="rep_customerbyid.res?id=<c:out value="${customer.sno}"></c:out>" target="_blank"><c:out value="${customer.mobileno}"/></a>
							
						</td>
						<td>
							<c:out value="${customer.typeofvilla}"/>
						</td>
						<td>
							<c:out value="${customer.pricelimit}"/>
						</td>
						<td>
							<c:out value="${customer.location}"/>
						</td>
						<td>
							<c:out value="${customer.manager}"/>
						</td>
						<td>
							<c:out value="${customer.deltby}"/>
						</td>
					</tr>
					</c:forEach>
				</table><br/>-->
                                <div id="customerGrid"></div>
				Note: Click on mobile Number you will get the Customer Report.
			</fieldset>	
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	
	
<% }
else
{
response.sendRedirect("login.res");
}%>	
<script type="text/javascript">
    $(document).ready(function(){
        alert('Hello');
        initCustomerGrid();
        initCustGridData();
    });
</script>
</body>
</html>
