<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script><link rel="stylesheet" href="css/finance_style.css"/>
</head>

<body>
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project">e-Finance</div>
	</div>
	<div class="menuscreen">
		<a href="login.fin" id="return_link">Back</a>
	</div>
	
	<div class="content" align="center">
	<fieldset>
		<legend>
			Company Registration
		</legend><span id="successmsg">${successmsg}</span>
			
		<table>
		
			<tr>
				<td>
					Logo
				</td>
				<form action="sfn_create_company_logo_registration.fin" method="post" enctype="multipart/form-data">
				<td>
					<input type="file" name="logo"/>	
				</td>
				<td>
					<input type="image" src="images/submit_button.jpg" id="button1"/>
				</td>
				</form>
							<form action="fn_create_Student.fin" method="post">
								<td>
									<input type="submit" value="Skip>>"/>
								</td>
							</form>
						</tr>
					</table>
			
		
	</fieldset>
	<%session.removeAttribute("successmsg");%>
	
	</div>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	</div>
		
</body>
</html>