<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
<script type="text/javascript" language="javascript">

	function isEmpty(){
		//alert('Hello!!!!');
		var status;
		with(document.villa_form)
			if((villa_name.value=="")||(villa_facing.value=="")||(villa_type.value=="")||(villa_price.value=="")||(sqrtfeet.value=="")||(villa_size.value=="")||(total_villas.value=="")||(villas_left.value==""))
			{
				alert('Please Fill All Fields');
				return false;
			}
		}
</script>
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
			<legend>Villa Type</legend>
				<span id="successmsg">${successmsg}</span>
		<form:form action="save_villa_type.res" method="post" commandName="villaTypeBean" name="villa_form" onSubmit="return isEmpty();">
			<table>
				<tr>
					<td>
						Villa Name:
					</td>
					<td>
						<form:input path="villa_name" onblur="return alphabetic(this.value);"  class="name" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Villa Facing:
					</td>
					<td>
						<form:input path="villa_facing" onblur="return alphabetic(this.value);" class="alphanumeric" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Villa Type:
					</td>
					<td>
						<form:input path="villa_type" onblur="return alphanumeric(this.value);" class="alphanumeric" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Price:
					</td>
					<td>
					<form:input path="villa_price" onblur="return numeric(this.value);" class="number" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Plot Size (Yards):
					</td>
					<td>
						<form:input path="sqrtfeet" onblur="return numeric(this.value);" class="number" required="true"/>
					</td>
				</tr>
				<tr>
					<td>	
						Villa Size (Sqrtfeet):
					</td>
					<td>
						<form:input path="villa_size" onblur="return numeric(this.value);" class="number" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Total Villas:
					</td>
					<td>
						<form:input path="total_villas" onblur="return numeric(this.value);" required="true" class="number"/>
					</td>
				</tr>
				<tr>
					<td>
					Available Villas:
					</td>
					<td>
						<form:input path="villas_left" onblur="return numeric(this.value);" class="number"required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Block No
					</td>
					<td>
						<form:select path="blockno">
							<form:option value="block1">block1</form:option>
							<form:option value="block2">block2</form:option>
							<form:option value="block3">block3</form:option>
							<form:option value="block4">block4</form:option>
						</form:select>
					</td>
				</tr>
				<tr>
					<td>
						Plot No
					</td>
					<td>
						<form:input path="plotno" required="true" class="alphanumeric" onblur="return alphanumeric(this.value);"/>
					</td>  
				</tr>
				<tr>
					<td>
					</td>
					<td>	
						<input type="image" src="images/submit_button.jpg" id="button1"/>
						<!--  <input type="submit" value="Submit"/>-->
					</td>
				</tr>
			</table>
			</form:form>
			</fieldset>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
<%session.removeAttribute("successmsg"); %>
<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>	