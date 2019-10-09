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
<h4 align="center"><font color="#573801" face="verdana" size="3">Phone Bill </font></h4>
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="phonebillsubmit.jsp">
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
   <table width="511" height="90" border="1" align="center" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td width="79">
	  <font color="#573801" face="verdana" size="2">Provider</font>
	 </td>
	 <td width="147">
	  <select name="provider">
	   <option>BSNL</option>
	   <option>Airtel</option>
	   <option>Idea</option>
	   <option>Vodafone</option>
       <option>TATA</option>
	  </select>
	  
	 </td>
	 <td width="86">
	  <font color="#573801" face="verdana" size="2">phone</font>
	 </td>
	 <td width="171">
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
    <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
	 <tr>
	  <td width="260">
	   <font color="#573801" face="verdana" size="2">Bill Month</font>
	  </td>
	  
	  
	   
	   
	   
	   <td width="237">
	    <font color="#573801" face="verdana" size="2">Amount</font></td>
	 </tr>
	 <tr>
	  <td>
	    <select name="billmonth">
	      <option>Jan</option>
		  <option>Feb</option>
		  <option>Mar</option>
		  <option>Apr</option>
		  <option>May</option>
		  <option>June</option>
		  <option>July</option>
		  <option>Aug</option>
		  <option>Sep</option>
		  <option>Oct</option>
		  <option>Nov</option>
		  <option>Dec</option>
	   </select>
	   </td>
	  
	  
	  
	  
	   
	   <td>
	   <input type="text" name="amountdue">
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
