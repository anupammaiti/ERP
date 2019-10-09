<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3">Hotel Expenses</font></h4>
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="hotelexpensessubmit1.jsp">
 
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Employee Name</font>
	 </td>
	 <td>
	  <input type="text" name="employeename">
	  
	 </td>
	  <td>
	  <font color="#573801" face="verdana" size="2">
	   Phone
	  </font>
	 </td>
	 <td>
	   <input type="text" name="phone">
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Location
	  </font>
	 </td>
	 <td>
	   <input type="text" name="location">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Approved By
	  </font>
	 </td>
	 <td>
	   <input type="text" name="approvedby">
	 </td>
	 
	</tr>
	<tr>
	  <td>
	  <font color="#573801" face="verdana" size="2">
	   Dept
	  </font>
	 </td>
	 <td>
	   <select name="dept">
	    <option>Sales</option>
		<option>Finance</option>
		<option>Accounts</option>
	    </select>
	 </td>
	 
	
	 
	 
	</tr>
	<tr>
	 
	 
	 
	 
	 
	</tr>
	<tr>
	 
	 
	 
	</tr>
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
	 <tr>
	  <td width="258">
	   <font color="#573801" face="verdana" size="2">Date</font>
	  </td>
	  <td width="258">
	   <font color="#573801" face="verdana" size="2">Day</font>
	  </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">No.Of Days</font>
	 </td>
	 <td>
	  	  <font color="#573801" face="verdana" size="2">Hotel name</font>

	 </td>
	  
	 <td>
	  	  <font color="#573801" face="verdana" size="2">Hotel Location</font>

	 </td>
	  
	   
	  
	   <td width="234">
	    <font color="#573801" face="verdana" size="2">Amount per Day</font>
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date1">
	   </td>
	    <td width="543">
	 <select name="day">
	  <option>SUN</option>
	  <option>MON</option>
	  <option>TUE</option>
	  <option>WED</option>
	  <option>THU</option>
	  <option>FRI</option>
	  <option>SAT</option>
	 </select>
	</td>
	   <td>
	    <input type="text" name="noofdays">
	   </td>
	   <td>
	    <input type="text" name="hotelname">
	   </td>
	   <td>
	    <input type="text" name="hotellocation">
	   </td>
	   
	  
	   <td>
	   <input type="text" name="amountperday">
	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center">	    <input type="image" src="images/submit.jpg"></td>
	  </tr>
	</table>
   </td>
  </tr>
  </form>
</table>
</body>
</html>
