<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/finance_style.css"/>

</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
// System.out.println("hi"+username);
// System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body onLoad="studentDetails();">
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project"><%=comp%></div>
	<div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="admin_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="left">
	<fieldset><legend>Student Details</legend>
	<input type="hidden" value="<%=comp %>" id="comp1"/>
	<c:forEach items="${RemainigAmountList}" var="std">
 
		<table align="center" border="1">
			<tr>
				<td>
					<table border="0" >
						<tr>
							<td>
								<span class="fieldlabel">University</span>
							</td>
							
							<td><span class="fieldlabel">Course</span></td>
							<td><span class="fieldlabel">Entroll No</span></td>
						</tr>
						<tr>
							<td><span class="fieldresult">${std.university}</span> </td>
							<td>
							<span class="fieldresult">	${std.course}</span>
							</td>
							<td>	
							<span class="fieldresult">	${std.entrollno}</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td><hr/></td>
			</tr>
			<tr>	
				<td>
					<table>
						<tr>
							<td>
								<span class="fieldlabel">Student Name</span>
							</td>
							<td>	
								<span class="fieldresult">${std.name}</span>
							</td>
							
						
							<td>
								<span class="fieldlabel">Phone No</span>
							</td>
							<td>	
							<span class="fieldresult">	${std.phoneno}</span>
							</td>
						
							<td><span class="fieldlabel">Email</span></td>
							<td>	
							<span class="fieldresult">	${std.email}</span>
							</td>
						</tr>
						
						</table></td></tr>
							<tr>
								<td><hr/></td>
							</tr>
						<tr><td>
						<table>
						<tr>
							<td><input type="hidden" name="enrollno" id="enrollno" value="${std.entrollno}" />
								<span class="fieldlabel">1<sup>st</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem1}</span> </td>
								<td>
								<span class="fieldlabel">2<sup>nd</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem2}</span> </td>
								<td>
								<span class="fieldlabel">3<sup>rd</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem3}</span> </td>
							
						
							<td>
								<span class="fieldlabel">4<sup>th</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem4}</span> </td>
								<td>
								<span class="fieldlabel">5<sup>th</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem5}</span> </td>
								<td>
								<span class="fieldlabel">6<sup>th</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem6} </span></td>
							<td></td>
						
							<td>
								<span class="fieldlabel">7<sup>th</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem7}</span> </td>
								<td>
								<span class="fieldlabel">8<sup>th</sup>Sem</span>
							</td><td><span class="fieldresult">${std.sem8}</span> </td>
								<td></td>
						</tr>
						<tr></tr>
						
						
					</table>
				</td>
			</tr>
			<tr>
				<td><hr/></td>
			</tr>
			<tr>
				<td>	
					<table align="center" border="1">	
						<tr>
							<td>	
								<span class="fieldlabel">RC No	</span>
							</td>
							<td><span class="fieldlabel">Date</span></td>
							
							
							<td>
								<span class="fieldlabel">Total Balance</span>
							</td>
						</tr>
						<tr>
							<td>	
								<span class="fieldresult">${std.rcno}</span>
							</td>
							<td>	
								<span class="fieldresult">${std.date}</span>
							</td>
							
							
							<td>
								<span class="fieldresult">${std.balance }</span>
							</td>					
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<hr/>
				</td>
			</tr>
			
		</table>
	
	</c:forEach>
	</fieldset>
	</div><input type="hidden" id="companyid" value="<%=comp%>"/>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
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