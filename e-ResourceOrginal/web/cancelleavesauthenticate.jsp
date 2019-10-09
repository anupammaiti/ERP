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
<script src="showhidebox.js" language="javascript"></script>
<script src="datediff1.js" language="javascript"></script>
<script type="text/javascript">

//}
/////////////////////////find date diff
//function datediff(){
var day1, day2;
var month1, month2;
var year1, year2;
var value1=document.frm.date1.value;
	var value2=document.frm.date2.value;
	//alert(value1+"hai");
//var value1= form.fromdate.value;
//var value2= form.todate.value;
//alert(value2+"hai");
day1 = value1.substring (0, value1.indexOf ("-"));
month1 = value1.substring (value1.indexOf ("-")+1, value1.lastIndexOf ("-"));
year1 = value1.substring (value1.lastIndexOf ("-")+1, value1.length);

day2 = value2.substring (0, value2.indexOf ("-"));
month2 = value2.substring (value2.indexOf ("-")+1, value2.lastIndexOf ("-"));
year2 = value2.substring (value2.lastIndexOf ("-")+1, value2.length); 

date1 =day1+"-"+month1+"-"+year1;
date2 = day2+"-"+month2+"-"+year2;

//alert(date1+"dat1");
//alert(date2+"dat2");
firstDate = Date.parse(date1);
//alert(firstDate+"fdat");
secondDate= Date.parse(date2);
//alert(secondDate+"sdat");

msPerDay = 24 * 60 * 60 * 1000;
//alert(msPerDay);
dbd = Math.round((secondDate.valueOf()-firstDate.valueOf())/ msPerDay) + 1;
//alert(dbd+"hai");
	
		
if(dbd<=0)
{
alert("Starting date should not exceed the End date");
return false;
}
}



</script>
<script type="text/javascript">
function delete1()
{
var res=window.confirm("Are you sure to cancel leave(s) ");

if(res==true)
{
return true;
}
else
{
	
	return false;
}
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
</style></head>
<script language="javascript">

</script>
<%
String ename=(String)session.getAttribute("ename");
 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 String name=(String)session.getAttribute("name");
 String empid=request.getParameter("empid");
 ////////System.out.println(empid);
 if((user_name!=null) &&(pwd!=null))
 {
	 %>
<body >
<script type="text/javascript">
$(document).ready(function(){
	alert('Hello');
	var empno=$('#empid').val();
	$.get('CancelationOfLeaves',{'empid':empno},function(data){
		alert('Hello'+data);
		$('#data2').html(data);
	});
});
</script>
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

					
					
					
						
    


<table border="0" bordercolor="#D468F7"   align="center"  width="98%"  class="tab10">
<tr><td><h3 align="center"> <font color="#573801" size="4" class="head">Leave Cancellation Form </font></h3></td></tr>
	
</table>

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<tr><td><table align="center" width="100%"><tr><td><font color="#CC6600"> <b>Emp.ID.</b></font></td><td align="center"><font color="#CC6600"><b>Employee Name</b></font></td><td align="center"><font color="#CC6600"><b>Reporting To</b></font></td><td align="center"><font color="#CC6600"><b>Fromdate</b></font></td><td align="center"><font color="#CC6600"><b>Todate</b></font></td><td align="center"><font color="#CC6600"><b>Leave Type</b></font></td><td align="center"><font color="#CC6600"><b>Purpose</b></font></td><td><font color="#CC6600"><b>Delete</b></font></td></tr>

<tbody id="data2">

</tbody>

</table>	</td></tr></table>



<tr>
    <td align="center">
			<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>
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
