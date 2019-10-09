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
		<div class="content" align="center" ><span id="successmsg">${allotedmsg}</span>
		<fieldset>
			<legend>
				Sales Customer List
			</legend>
			<table border="1px">
				<tr class="column_header">
					<td>
						Customer Id
					</td>
					<td>
						Price
					</td>
					<td>
						Cust Price
					</td>
					<td>
						Villa Type
					</td>
					<td>
						No of Installments
					</td>
					<td>
						Manager
					</td>
					<td>
						Delt By
					</td>
					<td>
						Status
					</td>
				</tr>
				<c:forEach items="${slcustomerlist}" var="slcustomer" varStatus="status">					
				<tr>
					<td>
						<a href="sl_view_customer_by_fn_manager.res?id=<c:out value="${slcustomer.sno}"></c:out>"><c:out value="${slcustomer.custid}"></c:out></a>
					</td>
					<td>	
						<c:out value="${slcustomer.price }"></c:out>
					</td>
					<td>
						<c:out value="${slcustomer.cust_price}"></c:out>
					</td>
					<td>
						<c:out value="${slcustomer.villatype}"></c:out>
					</td>
					<td>
						<c:out value="${slcustomer.noofinstallments}"></c:out>
					</td>
					<td>
						<c:out value="${slcustomer.fnmanager}"></c:out>
					</td>
					<td>
						<c:out value="${slcustomer.fnexecutive}"></c:out>
					</td>
					<td>
						<c:out value="${slcustomer.status}"></c:out>
					</td>
				</tr>
				</c:forEach>
			</table><br/>
                        <div id="custCostomerByAdminGrid"></div>
			<b>Note</b>:List of Customer in sales, for allotting Finance Manager click on Customer Id.
		</fieldset>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<% }
else
{
response.sendRedirect("login.res");
}%>	
<script>
    $(document).ready(function(){
        initCustomerViewByAdminGrid();
        costomerViewByAdminData();
    });
</script>
</body>
</html>
