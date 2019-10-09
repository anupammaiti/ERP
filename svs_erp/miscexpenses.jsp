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
<h4 align="center"><font color="#573801" face="verdana" size="3">Misc. Expenses</font></h4>
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="miscexpensessubmit.jsp">
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Employee Name</font>
	   </strong></td>
	 <td>
	  <input type="text" name="employeename">
	  
	 </td>
	  <td>
	  <font color="#573801" face="verdana" size="2">
	   <strong>Phone
       </strong> </font>
	 </td>
	 <td>
	   <input type="text" name="phone">
	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Location
	   </font>
	   </strong></td>
	 <td>
	   <input type="text" name="location">
	 </td>
	 
	<td>
	  <font color="#573801" face="verdana" size="2">
	   <strong>Approved By</strong>	  </font>
	 </td>
	  <td>
	   <input type="text" name="approvedby">
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   <strong>Dept</strong>	  </font>
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
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
	 <tr>
	  <td width="258">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
		<td width="258">
	    <strong><font color="#573801" face="verdana" size="2">Day</font>
	    </strong></td>
	 <td width="258">
	   <strong><font color="#573801" face="verdana" size="2">Purpose</font>
	   </strong></td>
	 
	  
	 
	  
	   
	  
	   <td width="234">
	     <strong><font color="#573801" face="verdana" size="2">Amount</font>
	     </strong></td>
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
	   <input type="text" name="purpose">
	   </td>
	   
	   
	   
	  
	   <td>
	   <input type="text" name="amount">
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
