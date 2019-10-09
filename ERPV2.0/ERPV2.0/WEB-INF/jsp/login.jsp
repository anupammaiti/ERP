<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
</head>
<body>
<!--  Title and Head of the project -->
	<center><h3>ERP</h3></center><hr/>
	<div class="mainframe">
	
  <div class="rotator">
    
  					<ul>
    					<li class="show"><a href="#link1"><img src="images/image_1.jpg" width="1000" height="313"  alt="pic1" /></a></li>
    					<li><a href="#link2"><img src="images/image_2.jpg" width="1000" height="313"  alt="pic2" /></a></li>
    					<!-- <li><a href="#link3"><img src="#" width="1000" height="313"  alt="pic3" /></a></li> -->
  					</ul>
		</div> 
       <!-- <div class="menu">
      
        </div>-->
        
   <div class="Content">
    <div id="project_content">
    	<h3>Welcome To ERP</h3><hr/>
    	<p>
    		&nbsp;&nbsp;&nbsp;&nbsp;This ERP is the Product that is developed for the Middle Companies.<br/>It contains HR,Sales,Invoice,Finance, e.t.c.
    	</p>
    </div>
    <div id="login_content" align="right">
    	<table align="right" cellpadding="1" cellspacing="1">
					<tr align="center">
						<td>	
						<h3>Login</h3>					
						</td>
					</tr>
					<form:form action="loginSuccess.erp" method="post" commandName="loginBean">
					<tr>
						<td><label>Username :</label></td>
							<td><form:input path="username" id="username" autocomplete="false"/></td>
					</tr>
					<tr>
						<td><label>Password : </label></td>
						<td><form:password path="password" id="password" autocomplete="false"/></td>
					</tr>
					<tr>
						<td>
							<input type="Submit" value="Login"/>		
						</td>
					</tr>
					<tr><td></td>
						<td>
							<div class="loginstatus"></div>		
						</td>
					</tr>
					</form:form>
			</table>
			</div>
		</div>
	</div>
	<div class="footer"><br/>
		<span>Powered By <a href="www.svsinfomatics.com">SVSINFOMATICS</a></span>
	</div>	
</body>
</html>