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
<script src="datediff.js" language="javascript"></script>
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
var a=document.frm11.fromdate.value;
var b=document.frm11.todate.value;
//var c=document.frm11.rm.value;
//var d=document.frm11.hod.value;
if(a=="")
{
alert("Please specify from date");
document.frm11.fromdate.focus();
document.frm11.fromdate.style.background = "pink";
return false;
}
if(b=="")
{
alert("Please specify to date");
document.frm11.todate.focus();
document.frm11.todate.style.background = "pink";
return false;
}
//if(c==""&&d=="")
//{
//alert("Please choose RM or HOD");
//return false;
//}
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
					
<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3> Attendance Summary Report RM/HOD Wise<br><br><br></td>
	</tr></table>



<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<form action="totalattendancesummaryserachRM.jsp" name="frm11" method="post" onSubmit="return datediff();">
   <tr align="right">
   <td width="500">
	  <strong><font color="#000066" size="2" face="Verdana">Select Reporting Manager</font></strong>
	
	 <font color="#573801" face="verdana" size="2">
   <%
   Connection conn=null;
     //DBConnection cc=new DBConnection();
     ConnectionUtils connectionUtils=new ConnectionUtils();
     
	  try{
//conn=cc.connection1();
    //////System.out.println("totalattendancesummaryRM.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("totalattendancesummaryRM.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	Statement stmt=conn.createStatement();
	String str="select distinct rm from empinout1 where rm!='NULL'";
	ResultSet rs=stmt.executeQuery(str);
	out.println("<select name=rm onMouseOver=this.className='highlight1' onMouseOut=this.className='normal1' class=select>");
	out.println("<option>");
	out.println("</option>");
	while(rs.next())
	{
	  out.println("<option>");
	  out.println(rs.getString(1));
	  out.println("</option>");
	}
	out.println("</select>");
   }
  catch(SQLException se)
	{
	  se.printStackTrace();
	}
	finally {
//if (rs != null) rs.close();
try
			{
				//////System.out.println("totalattendancesummaryRM.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("totalattendancesummaryRM.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}

}
	%>
  </font>
	 </td>
	<td align="center" class="head"><b>(or)</b></td>
	  <td width="500" align="left">
	  <strong><font color="#000066" size="2" face="Verdana">Select HOD</font></strong>
	
	 <font color="#573801" face="verdana" size="2">
   <%
	  try{
	//////System.out.println("totalattendancesummaryRM.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("totalattendancesummaryRM.jsp::ConnectionPool----->>>>After Open --->>>>Test");
    //conn=cc.connection1();
	Statement stmt=conn.createStatement();
	String str="select distinct HOD from empinout1 where HOD!='NULL'";
	ResultSet rs=stmt.executeQuery(str);
	out.println("<select name=hod onMouseOver=this.className='highlight1' onMouseOut=this.className='normal1' class=select>");
	out.println("<option>");
	out.println("</option>");
	while(rs.next())
	{
	  out.println("<option>");
	  out.println(rs.getString(1));
	  out.println("</option>");
	}
	out.println("</select>");
	
   }
  catch(SQLException se)
	{
	  se.printStackTrace();
	}
	finally {
//if (rs != null) rs.close();
try
			{
				//////System.out.println("totalattendancesummaryRM.jsp:ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("totalattendancesummaryRM.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
}
	%>
  </font>
	 </td>

	 </tr>
	 </table>
	 <table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
	 <tr align="right">
   <td width="550">
	  <strong><font color="#000066" size="2" face="Verdana">From Date</font>
	  </strong><font color="#006600" size="4"><img src="images/date.png" align="absmiddle">
	  <input type="text" name="fromdate" id="start" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	</td>
	<td align="center" class="head"><b></b></td>
	
	<td width="550" align="left">
	<strong><font color="#000066" size="2" face="Verdana">To Date</font>
	  </strong><font color="#006600" size="4"><img src="images/date.png" align="absmiddle">
	  <input type="text" name="todate" id="end" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	 </td>
	 </tr>
	 
	 <tr align="center">
<td class="t1"></td><td class="t1"><input type="image" src="images/submit_btn.png" onFocus="return check()"></td>
    </tr>
  </form>
</table>
<tr>
    <td align="center">
		<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->]
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
