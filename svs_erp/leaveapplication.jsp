<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center" background="images/bg.jpg">
  <tr>
    <td width="800"><img src="images/banner.jpg" width="800"></td>
  </tr>
  <!--  <tr>
   <td>
  <table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/finance.jpg" width="119"></td>
    <td><img src="images/project-management.jpg" width="119"></td>
    <td><img src="images/inventory.jpg" width="119"></td>
    <td><img src="images/sales.jpg" width="119"></td>
    <td><img src="images/maintenance.jpg" width="119"></td>
    <td><img src="images/power.jpg" width="119"></td>
    <td><img src="images/human-resources.jpg" width="119"></td>
  </tr>
</table>

   </td>
  </tr>-->
  
</table>
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>
<table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="leaveapplicationsubmit.jsp">
 <tr>
  <td>
   <h3 align="center"><font color="#573801">Leave Application</font></h3>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" bgcolor="#FADFC3" bordercolor="#F0B269" border="1">
    <tr>
	 <td>
	 <font color="#573801" size="4">1.Name</font>
	  </td>
	  <td>
	   <input type="text" name="name1">
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">2.Company</font>
	 </td>
	 <td>
	  <input type="text" name="company">
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">3.Employee Code</font>
	 </td>
	 <td>
	  <input type="text" name="employeecode">
	 </td>
	</tr>
	<tr>
	<td>
	 <font color="#573801" size="4">4.Designation</font>
	</td>
	<td>
	 <input type="text" name="designation">
	</td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">5.Purpose Of Leave</font>
	 </td>
	 <td>
	  <input type="text" name="purposeofleave">
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">6.Address While On Leave</font>
	 </td>
	 <td>
	  <input type="text" name="addressonleave">
	 </td>
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align="center">
   <table align="center" bordercolor="#F0B269" border="1">
    <tr>
	 <td width="105" align="center">
	   <font color="#573801" size="4">Date</font>
	  </td>
	 <td width="233" align="center">
	   <font color="#573801" size="4">Leave Applied For</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <table align="center"  bordercolor="#573801">
	   <tr>
	    <td align="center">
		 <font color="#573801" size="3">From</font>
		</td>
		<td align="center">
		 <font color="#573801" size="3">To</font>
		</td>
	   </tr>
	   <tr>
	    <td>
		 <input type="text" name="fromdate" size="12">
		</td>
		 <td>
		  <input type="text" name="todate" size="12">
		 </td>
	   </tr>
	  </table>
	 </td>
	 <td>
	  
	  <table width="232"  align="center" bordercolor="#573801">
	   <tr>
	     <td width="51" align="center">
		  <font color="#573801" size="3">CL</font>
		</td>
		<td width="51" align="center">
		 <font color="#573801" size="3">SL</font>
		</td>
		<td width="51" align="center">
		 <font color="#573801" size="3">EL</font>
		</td>
		<td width="51" align="center">
		 <font color="#573801" size="3">LOP</font>
		</td>
	   </tr>
	   <tr>
	    <td>
		 <input type="text" name="cl" size="9">
		</td>
		<td>
		  <input type="text" name="sl" size="9">
		</td>
		<td><input type="text" name="el" size="9">
		</td>
		<td>
		 <input type="text" name="lop" size="9">
		</td>
		 
	   </tr>
	  </table>
	 </td>
	</tr>
	
   </table>
  </td>
  </tr>
  <tr>
	 <td align="center">
	  <input type="image" src="images/submit.jpg">
	 </td>
	</tr>
	</form>
</table>
</td>
</tr>
</table>
</body>
</html>
