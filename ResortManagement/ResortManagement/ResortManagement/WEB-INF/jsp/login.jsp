<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Resort Management</title>
        <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <div class="wrapper">
	<div class="container">
		<h1>Login</h1>
		<form:form action="loginstatus.res" method="post" commandName="loginBean">
			
			<form:input path="username" id="username1"  placeholder="Username" autocomplete="on" value=""/>
			
			<form:password path="password" id="password1" placeholder="Password" autocomplete="on" value=""/>
			
			<input type="submit"  id="login_button" value="Sing In" />
		 			<a href="guest_user_home.res" title="Click here to get Guest Form" style="color:white">Guest</a>/ 
                                        <a href="appRegistration.res" title="Click here to Register the Application" style="color:white">Registration</a>
		</form:form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    <script src='js/jquery-2.0.0.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
