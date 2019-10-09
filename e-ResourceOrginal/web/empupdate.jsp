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
<script src="vallidation.js" language="javascript"></script>

<script type="text/javascript">
function create()
{
var a=document.frm.empno.value;
if(a=="")
{
alert("Please Enter Emp. ID.");
return false;
}
}
///////////////////////mail checking
function checkmail()
{
with(document.frm)
		{	
	var emailRegEx =/^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._-])?([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/
 
if (emailid.value.search(emailRegEx )==-1) //if match failed
{
alert("Email Id is invalid !!!");
return false;
}
	}
	
	}
	function checkmail1()
{
with(document.frm)
		{	
	var emailRegEx =/^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._-])?([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/
 
if (emailidd.value.search(emailRegEx )==-1) //if match failed
{
alert("Company mail id is invalid !!!");
return false;
}
	}
	
	}////////////////////////
	function checkname()
	{
	var a=document.frm.name.value;
	if(a.length<2)
	{
	alert("Name Should be minimum 2 characters");
	document.frm.name.focus();
	return false;
	}
	}
	/////////////fathername
	function checkname1()
	{
	var b=document.frm.fathername.value;
	if(b.length<2)
	{
	alert("Father Name Should be minimum 2 characters");
	document.frm.fathername.focus();
	return false;
	}
	}
	///////////////////Nation
	function checknation1()
	{
	var f=document.frm.nomination.value;
	if(f.length<3)
	{
	alert("Nationality Should be minimum 3 characters");
	document.frm.nomination.focus();
	return false;
	}
	}
	///////////////////Nation
	function checkaddress()
	{
	var i=document.frm.address.value;
	if(i.length<3)
	{
	alert("Address Should be minimum 3 characters");
	document.frm.address.focus();
	return false;
	}
	}
	///////////////////Location
	function checklocation1()
	{
	var h=document.frm.location.value;
	if(h.length<3)
	{
	alert("Location Should be minimum 3 characters");
	document.frm.location.focus();
	return false;
	}
	}
	///////////////////birth
	function checkbirth()
	{
	var e=document.frm.birthplace.value;
	if(e.length<3)
	{
	alert("Birth Place Should be minimum 3 characters");
	document.frm.birthplace.focus();
	return false;
	}
	}
	///////////////////religion 
	function checkreligion()
	{
	var d=document.frm.religion.value;
	if(d.length<3)
	{
	alert("Religion Should be minimum 3 characters");
	document.frm.religion.focus();
	return false;
	}
	}/////////////////////////phone
	function checkphone()
	{
	var c=document.frm.phoneno.value;
	if(c.length<10)
	{
	alert("Phone Number Should be minimum 10 digits");
	document.frm.phoneno.focus();
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

<%

 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 //////System.out.println("~~~~~TESTING~~~~~~~~");
 if((user_name!=null)&&(pwd!=null))
 {
	 %>
 
<body>
		<h3 align="center"> <font color="#573801" size="4" class="head">Update Employee Information </font></h3>
		  <table align="center"  border="0" bordercolor="#D468F7"  width="900" class="tab18">
<form action="empupdate1.jsp" method="post" name="frm" onsubmit="return create(this)">
 <tr>&nbsp;
<td width="226">
<table  align="center"  border="0" class="tab2">
     <tr>
	 <td><font color="#000066" face="Verdana" size="2" >Emp ID.</font><font color="#FF0000">*</font></td>
	 <td><input type="text" name="empno" id="empno" onBlur="check(this);" onkeypress="return alphanumeric(event)"></td>
	 <script type="text/javascript">
	 
/////////////////////////script to call mysql query to find details of emloyee....................
function update(){ 
var empid1 = document.getElementById('empno').value;

<%
//String empid123=empid1;
////////System.out.println("..............."+empid123);
//PreparedStatement pss=con.prepareStatement("select * from employee where empno=?");

//pss.setString(1,empid123);
//ResultSet rss=pss.executeQuery();
//while(rss.next())
//{
//String ename=rss.getString(2);
%>
//alert("...................."+ename);
<%
//}
%>
//alert("hai..........."+empid);
}

</script>
	     <td align="center">
 <input type="image" src="images/submit_btn.png" class=" payroll_button" />	 </td>
  </tr>
 </form>
 </td></tr>
 
 
 </table>
 <table><tr><td align="center"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"></font></td></tr></table>
</body>
<%
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
