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
<h4 align="center"><font color="#573801" face="verdana" size="3">Auto Expense Travel Form</font></h4>
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="autoexpensetravelsubmit.jsp">
 <tr>
  <td>
   <table width="800" align="center" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
   <td width="245" align="right">
   <font color="#573801" face="verdana" size="2">Date</font>
    </td>
	<td width="543">
	 <input type="text" name="date">
	</td>
	<td>
	 <font color="#573801" face="verdana" size="2">Day</font>
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
	</tr>
   </table>
  </td>
   </tr>
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
	  <font color="#573801" face="verdana" size="2">Completed By</font>
	 </td>
	 <td>
	  <input type="text" name="completedby">
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
	   Audited By
	  </font>
	 </td>
	 <td>
	   <input type="text" name="auditedby">
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Address
	  </font>
	 </td>
	 <td>
	   <input type="text" name="address">
	 </td>
	 
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Purpose of Trip
	  </font>
	 </td>
	 <td>
	   <input type="text" name="purposeoftrip">
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   City
	  </font>
	 </td>
	 <td>
	   <input type="text" name="city">
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
	   State
	  </font>
	 </td>
	 <td>
	   <input type="text" name="state">
	 </td>
	 
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Zip
	  </font>
	 </td>
	 <td>
	   <input type="text" name="zip">
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Phone
	  </font>
	 </td>
	 <td>
	   <input type="text" name="phone">
	 </td>
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
	 <option>Maintenance</option>
	 <option>HumanResource</option>
	</select>
	 </td>
	 
	 
	</tr>
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
	 <tr>
	  <td width="78">
	   <font color="#573801" face="verdana" size="2">Date</font>
	  </td>
	  <td width="107">
	   <font color="#573801" face="verdana" size="2">Travel From</font>
	  </td>
	  <td width="132">
	   <font color="#573801" face="verdana" size="2">Odometer Start</font>
       </td>
	   <td width="120">
	    <font color="#573801" face="verdana" size="2">Odometer End</font>
	   </td>
	   <td width="120">
	    <font color="#573801" face="verdana" size="2">Total Mileage</font>
	   </td>
	   <td width="82">
	    <font color="#573801" face="verdana" size="2">Rate/Mile</font>
	   </td>
	   <td width="115">
	    <font color="#573801" face="verdana" size="2">Amount Due</font>
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date1" size="10">
	   </td>
	   <td>
	    <input type="text" name="travelfrom" size="10">
	   </td>
	   <td>
	    <input type="text" name="odometerstart" size="10">
	   </td>
	   <td>
	    <input type="text" name="odometerend" size="10">
	   </td>
	   <td>
	    <input type="text" name="totalmileage" size="10">
	   </td>
	   <td>
	    <input type="text" name="rate" size="10">
	   </td>
	   <td>
	   <input type="text" name="amountdue" size="10">
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
