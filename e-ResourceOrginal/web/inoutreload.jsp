<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script src="School.js" language="javascript"></script>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
-->
-->

.t1
{
border:0;
background-color:"#FADFC3";
border-color:"#FADFC3";
}
</style>
<script  language="javascript">
function check1()
{
if(document.fr.empno.value=="")
{
alert("Please Enter Employee No.");
document.fr.empno.focus();
document.fr.empno.style.background = "pink";
return false;
}
}
</script>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>
</head>

<body>
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if((user_name!=null)&&(pwd!=null))
 {
 %>


 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg">
		<table width="1012" border="0" cellspacing="1" cellpadding="0">
          <tr>
		  <td>
		  	<table border="0">
		  	<tr align="center">
            <input type="hidden" value="<%=comp %>" id="companyid"/>
            <img alt="Logo" class="logo_image" alt="logo"/>
			</tr>
			<tr align="center">
            <td ><img src="images/e-resource.gif" width="200"height="50" /></td>
			</tr>
			</table>
		</td>
			<div id="welcome1"><font color="#000099"><b>Welcome:</b></font>&nbsp;&nbsp;<%=user_name%></div>
       	<td width="739" align="left" valign="bottom">
			<table width="721" border="0" cellspacing="0" cellpadding="0">
            <tr align="right">
			<td>
			</td>
            </tr>
            </table>
			</td></tr>
          
        </table></td> </tr>
     
    </table></td> </tr>
 
  <tr>
    <td>
		<table width="1004" border="0" cellspacing="0" cellpadding="0" align="center" bordercolor="red" rules="cols">
      		<tr >
       			 	<td ></td>
		        	<td width="1004" align="center"><img src="images/banner_img.gif" width="1004" height="10" /></td>
       			 	<td ></td>
      		</tr>
    	</table>
	</td>
  </tr>
  <tr>
    <td align="center">
		<table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
     	 <tr>
        	<td width="477" align="center" valign="top" >
				<table align="center"><tr><td>
				<jsp:include flush="true" page="hr_admin_header.jsp"></jsp:include>
				</td></tr></table>
<%-- <% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>
 --%><table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Data Update Form(In case of FC)<br><br><br><br><br><br></td>
	</tr></table>


<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<form action="forgetcarddetailssearch" name="fr" method="post" onSubmit="return check1(this);">
<%//////System.out.println("Forgotten Card"); %>
  <tr bgcolor="#A4C6C5">
   <td width="50%" align="right"> 
   <table>
   <tr>
   <td>
	<strong><font color="#000066" size="2" face="Verdana">Enter Emp No</font></strong>
	</td>
	<td>
	  <input type="text" name="empno"/>
	 </td>
	 <td width="400"><font color="#FF0000" size="2">${msg2}</font></td>
	 </tr>
	 </table>
	 </td>
	 </tr>
	  	 
	 <tr >
<td class="t1" align="center"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="images/submit_btn.png"></td>
    </tr>
	
  </form>
</table>
<tr><% session.removeAttribute("msg2");%>
    <td align="center">
		<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br><br><br><br><br><br><br><br><br><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
		<br>
		<jsp:include page="Footer.jsp" flush="true"></jsp:include>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
  </table>

</body>
<%
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
