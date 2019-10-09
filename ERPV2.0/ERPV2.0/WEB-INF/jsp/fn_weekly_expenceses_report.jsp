<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
</head>
<body>
<center>ERP</center><a href="fn_main.erp">Back</a><hr/>
<fieldset><legend>Weekly Expenceses</legend> 

<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">

<tr>
 <td>
  <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  Period Covered:
	  </font>
	</td>
	<td>
	 <font color="#573801" face="verdana" size="2">from</font>
	 <input type="text" name="fromdate">
	</td>
	 <td>
	  <font color="#573801" face="verdana" size="2">To</font>
	  <input type="text" name="todate">
	 </td>
   </tr>
  </table>
 </td>
</tr>
<tr>
 <td>
  <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">Name</font>
	</td>
	<td>
	 <font color="#573801" face="verdana" size="2">Dept/Sales Office</font>
	</td>
	<td>
	 <font color="#573801" face="verdana" size="2">Report Date</font>
	 </td>
     <td>
	  <font color="#573801" face="verdana" size="2">Date of Trip</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">From:</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">To:</font>
	 </td>
   </tr>
   <tr>
      <td>
	   <input type="text" name="name" size="15">
	  </td>
	  <td>
	   <input type="text" name="deptoffice" size="15">
	   </td>
	   <td>
	    <input type="text" name="reportdate" size="15">
	   </td>
	   <td>
	    <input type="text" name="dateoftrip" size="15">
	   </td>
	   <td>
	    <input type="text" name="from" size="15">
	   </td>
	   <td>
	    <input type="text" name="to" size="15">
	   </td>
   </tr>
   <tr>
    <td><font color="#573801" face="verdana" size="2">Business Purpose</font></td>
    <td colspan="2" align="center"><input type="text" name="businesspurpose">	</td>
	<td><font color="#573801" face="verdana" size="2">Account No.</font> </td>
	<td colspan="2" align="center"><input type="text" name="accountno">	 </td>
	</tr>
   
  </table>
 </td>
</tr>
<tr>
 <td>
  <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	  
	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Date
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Transport</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Automobile Expences
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Lodging
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Meals
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="" face="verdana" size="2">
	   Entertainment
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Misc
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Total
	   </font>
	   </strong></td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	  
	    SUN
	  </font>
	 </td>
	 <td>
	    <input type="text" name="datesun" size="10">
	 </td>
	 <td>
	  <input type="text" name="transportationsun" size="10">
	 </td>
	 <td>
	  <input type="text" name="automobilesun" size="10">
	 </td>
	 <td>
	  <input type="text" name="lodgingsun" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealssun" size="10">
	 </td>
	 <td>
	  <input type="text" name="entertainmentsun" size="10">
	 </td>
	 <td>
	  <input type="text" name="miscsun" size="10">
	 </td>
	 <td>
	  <input type="text" name="totalsun" size="10">
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	  
	    MON
	  </font>
	 </td>
	 <td>
	    <input type="text" name="datemon" size="10">
	 </td>
	 <td>
	  <input type="text" name="transportationmon" size="10">
	 </td>
	 <td>
	  <input type="text" name="automobilemon" size="10">
	 </td>
	 <td>
	  <input type="text" name="lodgingmon" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealsmon" size="10">
	 </td>
	 <td>
	  <input type="text" name="entertainmentmon" size="10">
	 </td>
	 <td>
	  <input type="text" name="miscmon" size="10">
	 </td>
	 <td>
	  <input type="text" name="totalmon" size="10">
	 </td>
	</tr>
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	  
	    TUE
	  </font>
	 </td>
	 <td>
	    <input type="text" name="datetue" size="10">
	 </td>
	 <td>
	  <input type="text" name="transportationtue" size="10">
	 </td>
	 <td>
	  <input type="text" name="automobiletue" size="10">
	 </td>
	 <td>
	  <input type="text" name="lodgingtue" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealstue" size="10">
	 </td>
	 <td>
	  <input type="text" name="entertainmenttue" size="10">
	 </td>
	 <td>
	  <input type="text" name="misctue" size="10">
	 </td>
	 <td>
	  <input type="text" name="totaltue" size="10">
	 </td>
	</tr>
<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	  
	    WED
	  </font>
	 </td>
	 <td>
	    <input type="text" name="datewed" size="10">
	 </td>
	 <td>
	  <input type="text" name="transportationwed" size="10">
	 </td>
	 <td>
	  <input type="text" name="automobilewed" size="10">
	 </td>
	 <td>
	  <input type="text" name="lodgingwed" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealswed" size="10">
	 </td>
	 <td>
	  <input type="text" name="entertainmentwed" size="10">
	 </td>
	 <td>
	  <input type="text" name="miscwed" size="10">
	 </td>
	 <td>
	  <input type="text" name="totalwed" size="10">
	 </td>
	</tr>
<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	  
	    THU
	  </font>
	 </td>
	 <td>
	    <input type="text" name="datethu" size="10">
	 </td>
	 <td>
	  <input type="text" name="transportationthu" size="10">
	 </td>
	 <td>
	  <input type="text" name="automobilethu" size="10">
	 </td>
	 <td>
	  <input type="text" name="lodgingthu" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealsthu" size="10">
	 </td>
	 <td>
	  <input type="text" name="entertainmentthu" size="10">
	 </td>
	 <td>
	  <input type="text" name="miscthu" size="10">
	 </td>
	 <td>
	  <input type="text" name="totalthu" size="10">
	 </td>
	</tr>
<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	  
	    FRI
	  </font>
	 </td>
	 <td>
	    <input type="text" name="datefri" size="10">
	 </td>
	 <td>
	  <input type="text" name="transportationfri" size="10">
	 </td>
	 <td>
	  <input type="text" name="automobilefri" size="10">
	 </td>
	 <td>
	  <input type="text" name="lodgingfri" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealsfri" size="10">
	 </td>
	 <td>
	  <input type="text" name="entertainmentfri" size="10">
	 </td>
	 <td>
	  <input type="text" name="miscfri" size="10">
	 </td>
	 <td>
	  <input type="text" name="totalfri" size="10">
	 </td>
	</tr>
<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	  
	    SAT
	  </font>
	 </td>
	 <td>
	    <input type="text" name="datesat" size="10">
	 </td>
	 <td>
	  <input type="text" name="transportationsat" size="10">
	 </td>
	 <td>
	  <input type="text" name="automobilesat" size="10">
	 </td>
	 <td>
	  <input type="text" name="lodgingsat" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealssat" size="10">
	 </td>
	 <td>
	  <input type="text" name="entertainmentsat" size="10">
	 </td>
	 <td>
	  <input type="text" name="miscsat" size="10">
	 </td>
	 <td>
	  <input type="text" name="totalsat" size="10">
	 </td>
	</tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2"><strong>Total</strong></font>
	</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
   </tr>
   <tr>
    <td colspan="9" align="center"><input type="image" src="images/submit.jpg"></td>
	</tr>
  </table>
 </td>
</tr>
</table>
</fieldset>
</body>
</html>