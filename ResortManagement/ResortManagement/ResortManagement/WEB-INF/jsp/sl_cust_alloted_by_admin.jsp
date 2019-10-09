<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Resort</title>
<!--  <script type="text/javascript" src="js/jquery-2.0.0.js"></script>-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript" src="js/resort_js.js"></script>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title" > 
		<img src="images/logo_image123.jpg" alt="logo" id="logo" height="50px" width="100px"/>
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center" >
					<fieldset>
				<legend>Customer Allotment</legend><span id="successmsg">${updatemsg}</span>
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
							
							<a href="cust_allot_manager_by_admin.res?id=<c:out value="${customer.sno}"></c:out>" title="Click here to get Manager Allotment Form"><c:out value="${name}"/></a>
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
                                <div id="allotingAllotCostGrid"></div>
				<b>Note</b>: Click on mobile Number you will get the Customer Report, and Click on Name you will get the Sales Manager Allotment Form.
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
<script>
    $().ready(function(){
       initAllotCustomerByAdminGrid();
       allotCustomerByAdmin();
    });
</script>
</html>
