<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Expires" content="-1"> 
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate"> 
<title>Insert title here</title>
<script>

window.history.forward(1); 
browser.cache.offline.enable = false; 
function noBack() {
	alert("Hello");
	
	window.history.forward(1);

}

</script>
</head>
<body onload="return noBack();">
<%

String uname=(String)session.getAttribute("uname");
String pswd=(String)session.getAttribute("pswd");
session.removeAttribute(uname);
session.removeAttribute(pswd);
response.sendRedirect("login.res"); %>
</body>
</html>