<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//alert('Hello');
		$.ajax({url:'fn_ledgerdetails.fin',success:function(data){
			//alert(data);
			$('#ledgerlist').html(data);
		}});
	});
</script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img src="images/svs_logo.gif" alt="Logo"/>
	</div>
	<div class="title_of_project">Resort Management</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="admin_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
		<fieldset>
			<legend>
				Phone Bill Expenses
			</legend>
			<table>
				<tr>
					<td>
						
					</td>
				</tr>
			</table>
		</fieldset>
		
		
	</div>
		<div class="footer">
			<jsp:include page="footer.jsp" flush="false"></jsp:include>
		</div>
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
