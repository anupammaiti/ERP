<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/resort_validation_js.js"></script>
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
				<legend>New Guest Request</legend>
				
				
				 <table border="1" cellpadding="5" cellspacing="5">
        <tr class="column_header">
            <td>Guest Name</td>
            <td>Request for Quote</td>
            <td>Mobile No</td>
            <td>Status</td>
        </tr>
 
        <c:forEach var="guest" items="${groupslist}">
            <tr>
                <td><a href="customer_conformation.res?id=${guest.guestid}" title="Click for Report">${guest.guest_name}&nbsp;&nbsp;${guest.guest_last_name}</a></td>
                <td>${guest.reqforquote }</td>
                <td>${guest.mobileno}</td>
                <td>${guest.status}</td>
            </tr>
        </c:forEach>
    </table>
 
    <%--For displaying Previous link except for the 1st page --%>
    <%-- <c:if test="${currentPage != 1}">
        <td><a href="SimplePagination?page=${currentPage - 1}">Previous</a></td>
    </c:if> --%>
 
    <%--For displaying Page numbers. 
    The when condition does not display a link for the current page--%>
    <table border="0" cellpadding="5" cellspacing="5" align="right">
        <tr>
            <c:forEach begin="1" end="${noOfPages}" var="i">
                <c:choose>
                    <c:when test="${currentPage eq i}">
                        <td>${i}</td>
                    </c:when>
                    <c:otherwise>
                        <td><a href="admin_guest_authentication.res?page=${i}">${i}</a></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </tr>
    </table>
     
    <%--For displaying Next link --%>
    <%-- <c:if test="${currentPage lt noOfPages}">
        <td><a href="admin_guest_authentication.res?page=${currentPage + 1}">Next</a></td>
    </c:if> --%>
				
				
				
				
				
				<br/>
				<b>Note:</b> Click on the name for assigning the TeleManager to the guest.
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
