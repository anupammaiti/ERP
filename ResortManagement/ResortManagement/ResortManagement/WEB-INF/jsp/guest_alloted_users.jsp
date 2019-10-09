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
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/resort_validation_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>

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
			<legend>View Alloted Guest</legend>
<!--			<table cellspacing="3px" cellpadding="4px" border="1px">
				<tr class="column_header">
					<td>
						Name
					</td>
					<td>
						Mobile
					</td>
					<td>
						Email
					</td>
					<td>
						Status
					</td>
					<td>
						Manager
					</td>
					<td>
						Alloted To
					</td>
				</tr>
				<c:forEach items="${AllotedGuestList}" var="allotedguestlist" varStatus="status">
				<tr>
					<td>
						<c:set var="name" value="${allotedguestlist.guest_name}  ${allotedguestlist.guest_last_name}"/>
						<c:out value="${name}"/>
					</td>
					<td>
						<c:out value="${allotedguestlist.mobileno}"></c:out>
					</td>
					<td>
						<c:out value="${allotedguestlist.email}"></c:out>
					</td>
					<td>
						<c:out value="${allotedguestlist.status}"></c:out>
					</td>
					<td>
						<c:out value="${allotedguestlist.designation}"></c:out>
					</td>
					<td>
						<c:out value="${allotedguestlist.refered1}"></c:out>
					</td>
				</tr>
				</c:forEach>
			</table><br/>-->
                        <div id="allotingGuestGrid"></div>
			Note: List of Guest Alloted to whom.Manager and Caller.
		</fieldset>
		
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	
	
        <script>
            $(document).ready(function(){
                initAllotingGuestGrid();
                initAllotGuestGridData();
            });
        </script>	
</body>
</html>
