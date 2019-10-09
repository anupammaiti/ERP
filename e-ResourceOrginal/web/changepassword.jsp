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
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script src="School.js" language="javascript"></script>
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
</style></head>
<script language="javascript">
 function create()
{

	if(document.frm.name1.value==""||document.frm.company.value==""||
		document.frm.employeecode.value==""||
		document.frm.designation.value==""||
		document.frm.purposeofleave.value==""||
		document.frm.addressonleave.value==""||
		document.frm.fromdate.value==""||
		document.frm.todate.value==""||
		document.frm.cl.value==""||
		document.frm.sl.value==""||
		document.frm.el.value==""||document.frm.lop.value=="")
		
	{
		alert("Enter Info: Fields are Empty");
        return false;
	}
	    
}	
</script>
<%

 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
  String name=(String)session.getAttribute("name");

 if((user_name!=null)&&(pwd!=null))
 {
	 %>
<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg"><table width="1012" border="0" cellspacing="0" cellpadding="0">
		<tr>
            <td valign="top"><span class="welcometxtye">Welcome, </span><span class="welcometxtg"><%=name%></span></td>
          </tr>
          <tr>
            <td width="157" align="right"><img src="images/logo_image.jpg" width="146" height="93" /></td>
            <td width="116">&nbsp;</td>
            <td width="739" align="left" valign="bottom"><table width="721" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="50" align="right" valign="middle"><table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="center" valign="middle">
					<div id="menu">
					<ul class="menu">
        <li><a href="specific.jsp?username=<%=user_name%>&password=<%=pwd%>" class="parent"><span>Home</span></a></li>
                    
                
       
        <li><a href="#" class="parent"><span>Update</span></a>
            <div><ul>
                <li><a href="updateemployeeinformation.jsp" ><span>Update Details</span></a>
                    
                </li>
                <li><a href="changepassword.jsp" ><span>Change Password</span></a></li>
            </ul></div>
        </li>
        <li><a href="#" class="parent"><span>Leave</span></a>
		<div><ul>
                <li><a href="viewleaves.jsp" ><span>View Leaves</span></a></li>
                <li><a href="leaveapplication.jsp" ><span>Leave Application Form</span></a></li>
                <li><a href="leaveapplications2.jsp" ><span>Leave Application Report</span></a></li>
            </ul></div>
		</li>
        <li class="last"><a href="index.jsp"><span>Logout</span></a></li>

    </ul>
</div>
					
					
					</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#EDC527">&nbsp;</td>
		        <td width="1012"><img src="images/banner_img.jpg" width="1012" height="195" /></td>

        <td bgcolor="#EDC527">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center"><table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="577" align="left" valign="top" style="padding-left:22px;"><table width="576" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="576">&nbsp;</td>
          </tr>
		  
 <table border="0" bordercolor="#D468F7"   align="center" class="tab13">
<form action="ChangePassword" method="post" name="frm">
 <tr>
  <td>
     <h3 align="center"><font color="#573801">Change Password</font></h3>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" >
    <tr>
	 <td>
	 <font color="#573801" size="4">User Id</font>
	  </td>
	  <td>
	   <input type="text" name="username" value=<%=user_name%> readonly="true">
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">Old Password</font>
	 </td>
	 <td>
	  <input type="password" name="oldpassword">
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">New Password</font>
	 </td>
	 <td>
	  <input type="password" name="newpassword">
	 </td>
	</tr>
	
   </table>
  </td>
 </tr>
 <tr>
	 <td align="center">
	  <input type="image" src="images/submit_btn.png">
	 </td>
	</tr>
    </table>
  
	</form>

<tr>
    <td align="center">
			<table width="98%"  ><tr id="svstr"><td align="right" >&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width=""  cellspacing="0" cellpadding="0">
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
