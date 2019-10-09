<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<meta content="utf-8" http-equiv="encoding">
<title>Login</title>

<link href="login-box.css" rel="stylesheet" type="text/css" />
<link href="Css/Style.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
#rightlogo{
position:absolute;
right:270px;
top:15px;
}
#leftlogo{
position:absolute;
left:100px;
top:15px;
}


a{
font-family:Verdana, Arial, Helvetica, sans-serif;
text-decoration:none;
}

</style>
</head>

<body>
<div id="leftlogo"><table width="200" height="100" border="0">
		<tr>
			<td>
				</td>
			<td><img src="images/logo_image.jpg"/></td>
			<td><img src="images/e-resource.gif"/></td>
		</tr>
		</table></div>
		<div id="rightlogo">
		<table>
			<tr>
			<td></td>
		</tr>
	</table>
</div>
<% String u=null;
String p=null; 
String us=(String)session.getAttribute("user_name");
session.removeAttribute("user_name");
session.removeAttribute("pwd");
 %>
<div id="IndexpageE-msg" style="font-size-adjust:inherit;color:red;">${errorMessage}</div>
<% session.removeAttribute("errorMessage");%>

<div style="padding: 100px 0 0 250px;">


<div id="login-box">

<H2>Login</H2>
<!--Lorem Ipsum is simply dummy text of the printing and typesetting industry.-->
<br />
<br />
<form action="LoginCheckUp" method="post">
<div id="login-box-name" style="margin-top:20px;">User Name:</div><div id="login-box-field" style="margin-top:20px;"><input name="username" class="form-login" title="Username" value="" size="30" maxlength="2048" /></div>
<div id="login-box-name">Password:</div><div id="login-box-field"><input name="password" type="password" class="form-login" title="Password" value="" size="30" maxlength="2048" /></div>
<br />
<!--<span class="login-box-options"><input type="checkbox" name="1" value="1"> Remember Me <a href="#" style="margin-left:30px;">Forgot password?</a></span>-->
<br />
<br />
<input type="image" src="images/login-btn.png" width="103" height="42" style="margin-left:90px;" />
<!--<a href="#"><img src="images/login-btn.png" width="103" height="42" style="margin-left:90px;" /></a>-->

</form>

<a href="company_registration.jsp" id="comp_reg"><span>Company Registration</span></a>


</div>
<div id="Footer">
<table align="center"><tr><td>
<font color="#000">&copy;Developed by&nbsp;</font><a href="http://www.svsinfomatics.com" target="_blank"><font color="#000"><b><i>SVS Infomatics</i></b></font></a>

</td></tr></table>

</div>
</div>
</body>
</html>
