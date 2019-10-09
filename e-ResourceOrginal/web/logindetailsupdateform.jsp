

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />



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


</style>
<script language="javascript">
function check()
{
var pass=document.frm11.password.value;

if(pass=="")
{
document.frm11.password.focus();
document.getElementById('length1').innerHTML="Please Enter Password " ;
return false;
}
var pass1=document.frm11.confirmpassword.value;
if(pass1=="")
{
document.frm11.confirmpassword.focus();
document.getElementById('confirmation1').innerHTML="Please ConfirmPassword " ;
return false;
}
//``````````````````````````````````````
var a=document.frm11.confirmpassword.value
var b=document.frm11.password.value
document.getElementById('confirmation1').style.visibility = 'hidden'; 
if(a!=b)
{
document.frm11.confirmpassword.focus();
document.getElementById('confirmation').style.visibility = 'visible'; 
var d="Please Confirm Password";
document.getElementById('confirmation').innerHTML=d;

	document.frm11.confirmpassword.style.background = "pink";
	return false;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
var len=document.frm11.password.value
var l1=len.length;
if(l1>=1&&l1<6)
{
document.frm11.password.focus();
document.getElementById('length').innerHTML="Password Should be Minimum 6 " ;
return false;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//document.frm11.confirmpassword.style.background = "#FFFFFF";
//return false;
}
function cc()
{
document.frm11.password.style.background = "pink";

}
function cc2()
{
document.getElementById('length1').style.visibility = 'hidden'; 
document.frm11.password.style.background = "#FFFFFF";
var len=document.frm11.password.value
var l1=len.length;
if(l1==0)
{
document.frm11.password.focus();
document.getElementById('length').innerHTML="Please Enter Password" ;
}

if(l1>=1&&l1<6)
{
document.frm11.password.focus();
document.getElementById('length').innerHTML="Password Should be Minimum 6 " ;
return false;
}
if(l1>=6)
{
document.getElementById('length').innerHTML="" ;
}
}
function cc1()
{
document.frm11.confirmpassword.style.background = "pink";
document.getElementById('confirmation').style.visibility = 'hidden'; 
}
function checkpassword()
{
var a=document.frm11.confirmpassword.value
var b=document.frm11.password.value
document.getElementById('confirmation1').style.visibility = 'hidden'; 
if(a!=b)
{
document.frm11.confirmpassword.value="";
document.frm11.password.value="";
document.frm11.password.focus();
document.getElementById('confirmation').style.visibility = 'visible'; 
var d="Please Confirm Password";
document.getElementById('confirmation').innerHTML=d;

	document.frm11.password.style.background = "pink";
	return false;
}
document.frm11.confirmpassword.style.background = "#FFFFFF";
}
</script>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>

</head>

<body ><!--background="background images for website/master70_background.jpg"-->
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
  String ename=(String)session.getAttribute("ename");
  if((user_name!=null)&&(pwd!=null)){
 //~~~~~~~~~~~~~~~~`code to find user is RM or NOT
	int chekrm=0;
	Connection con=null;
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	try
		{
			//////System.out.println("Plogindetailsupdateform.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("logindetailsupdateform.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	
	
/*PreparedStatement prchekrm=con.prepareStatement("select * from employee where reportingto=?");
prchekrm.setString(1,ename);
ResultSet rschekrm=prchekrm.executeQuery();
while(rschekrm.next())
{
chekrm++;
}*/
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
			 	<!--<table width="721" border="0" cellspacing="0" cellpadding="0">
                <td id="session" align="right"><b>Welcome</b>&nbsp; <font color="#000000"><%=ename%></font></td>
				</table>-->
			</td>
            </tr>
			<!--<tr>
            <td height="50" align="right" valign="middle">
				<!--<table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					
					
					</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table>
			</td>
			</tr>-->
			
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
				<jsp:include flush="true" page="eresourcemenu.jsp"></jsp:include>
				</td></tr></table>
				
				



<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>

<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Login Details Update<br><br><br></td>
	</tr>
	<tr><td>


<table border="0" bordercolor="#D468F7"   align="center" >
<form  name="frm11" method="post" action="logindetailsupdateBO" onSubmit="return check();">
 <tr align="center">
    </tr>
</table>
<table border="0" bordercolor="#D468F7"   align="center"  width="98%" ><!--bgcolor="#A4C6C5"-->
<tr >
<td colspan="4" align="center"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif">${respmsg}</font></td></tr>
<tr ><% session.removeAttribute("respmsg");%>
<td width="350"></td>
   <td width="150" align="left"> 
	  <strong><font color="#000066" size="2" face="Verdana">User Name</font>
	  </strong>
	</td>
	<td align="left">
	  <input type="text"  name="Uname" value="<%=user_name%>" readonly="true" class="empidtext" size="20">
	  </td>
	  	  <td width="290" align="left"></td>
	</tr>
	<tr>
	<td width="350"></td>
   <td width="150" align="left"> 
	  <strong><font color="#000066" size="2" face="Verdana">New Password</font>
	  </strong>
	  </td>
	  <td align="left">
	   <input type="password" name="password"  size="20"  onFocus="cc();" onBlur="return cc2();">
	 </td>
	  <td width="290" align="left"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"><div id="length"></div><div id="length1"></div></font></td>
	 </tr>
	 <tr>
	<td width="350"></td>
   <td width="150" align="left"> 
	  <strong><font color="#000066" size="2" face="Verdana">Confirm Password</font>
	  </strong>
	  </td>
	  <td align="left">
	  <input type="password" name="confirmpassword"  size="20" onFocus="cc1();" onBlur="return checkpassword();">
	 </td>
	 <td width="290" align="left"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"><div id="confirmation"></div><div id="confirmation1"></div></font></td>
	 </tr>
	 </table>
	 <table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
	 <tr align="center">
<td class="t1"></td><td class="t1" ><br>
       <input type="image" src="images/submit_btn.png" onFocus="return check()" >
	  </td>
    </tr>
  </form>
</table>
</td></tr></table>
<tr>
    <td align="center">
			<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br><br><br><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
					<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table>
</td>
  </tr>
  </table>

</body>
<%
}catch(Exception ex)
		{
		//////System.out.println(ex);
		}finally {
			try
			{
				//////System.out.println("logindetailsupdateform.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("logindetailsupdateform.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
