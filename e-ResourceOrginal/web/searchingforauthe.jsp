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
<script language="javascript">

function goLite(BTN)
{
   window.document.getElementById(BTN).style.color = "#660099";
   window.document.getElementById(BTN).style.backgroundColor = "#FFFF99";
}

function goDim(BTN)
{
  window.document.getElementById(BTN).style.color = "#000066";
   window.document.getElementById(BTN).style.backgroundColor = "#CCFF99";
}


</script>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
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
<script language="javascript">
function check()
{
a=document.frm11.name.value;
b=document.frm11.empno.value;
if(a==""&&b=="")
{
alert("Please Enter Name or ID");
return false;
}}
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
 if(pwd!=null)
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
				<!--<table width="576" border="0" cellspacing="0" cellpadding="0" class="tab10">
         		 <tr>
           		 <td width="426">&nbsp;</td>
				  </tr>
				</table>-->
				
				
				<table align="center"><tr><td>
				<jsp:include flush="true" page="hr_admin_header.jsp"></jsp:include>
				</td></tr></table>


<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>
					
<table class="tab10" width="98%" border="0" ><tr align="right"><td width="700"></td><td><a href="Approve Leave HR" id="anchorcolor" title="Click Here To Approve Leave" ><input type="button" value="Approve Leaves" name="butt" id="buttonauthe" onMouseOver="goLite(this.id)"
   onMouseOut="goDim(this.id)"></a></td>
   <td><a href="permissionssearch.jsp" id="anchorcolor" title="Click Here To Approve Permissions" ><input type="button" value="Approve Permissions" name="buttper" id="buttonper" onMouseOver="goLite(this.id)"
   onMouseOut="goDim(this.id)"></a></td>
   <td><a href="cancelleaves.jsp" id="anchorcolor" title="Click Here To Cancel Leaves" ><input type="button" value="Cancel Leaves" name="buttper" id="buttoncancel" onMouseOver="goLite(this.id)"
   onMouseOut="goDim(this.id)"></a></td></tr>
   </table>
<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Leave Approval Form<br><br></td>
	</tr></table>
	<form action="searchforauthe3.jsp" name="frm11" method="post" >
	
	


<table class="tab10" width="98%">
<tr><td><br><font color="#000066" face="Verdana, Arial, Helvetica, sans-serif" size="2">>>	Please Enter Name or ID Number Of Employee To Approve Leave</font>
	<br><br></td></tr>

</table>
<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">

<tr align="center"><td colspan="3">${response}</td></tr>
   <tr align="right" bgcolor="#A4C6C5">
   <td width="500">
	  <strong><font color="#000066" size="2" face="Verdana">Name</font>
	  </strong><font color="#006600" size="4">
	  <input type="text" name="name" ></font>
	</td>
	<td align="center" class="head"><b>(or)</b></td>
	
	<td width="500" align="left">
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">Emp No</font></strong>
	  <input type="text" name="empno" ></font>
	 </td>
	 </tr>
	 <% session.removeAttribute("response");%>
	 <tr align="center">
<td class="t1"></td><td class="t1"><input type="image" src="images/submit_btn.png"></td>
    </tr>
	<tr><td>${authnt}</td></tr>
  </form>
</table>
<tr>
    <td align="center">
		<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
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
