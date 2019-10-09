<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body bgcolor="#F1B672" background="images/bg.jpg">

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

<h2 align="center"><strong><font color="#573801" face="verdana" size="3">FA Forecast Depreciation Table</font></strong></h2>
<form action="">
<table align="center" width="800">
  <tr>
   <td width="301" align="right">
    <font color="#573801" face="verdana" size="2">Code</font>
   </td>
   <td width="123">
    <input type="text" size="20" name="code">
   </td>

   <td width="360">
   <input type="submit" value="Search">
   </td>
  </tr>

</table>
</form>
<form action="#">
<table align="center" width="817" bgcolor="#FADFC3" bordercolor="#F0B269" border="1">
 <tr>
  <td width="266" align="center">
   <font color="#573801" face="verdana" size="3">Current Year</font>
  </td>
  <td width="264" align="center">
   <font color="#573801" face="verdana" size="3">Next Year</font>
  </td>
  <td width="265" align="center">
   <font color="#573801" face="verdana" size="3">Following Year</font>
   </td>
 </tr>
</table>

<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td width="258">
   <table>
     <tr>
	  <td width="83"></td>
	  <td width="88">
	    <font color="#573801" face="verdana" size="2">Default Rate</font>
	  </td>
	  <td width="65">
	   <font color="#573801" face="verdana" size="2">Revised Forecast</font>
	  </td>
	 </tr>
     <tr>
	 <td></td>
	  <td>
	   <input type="text" size="10" name="date1">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Frequency
	   </font>
	  </td>
	  <td>
	    <select  name="frequencydefault">
	     <option>Monthly</option>
		 <option>Yearly</option> 
	   </select>
	  </td>
	  <td>
	   <select name="frequencyforecast">
	     <option>-----</option>
	   </select>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="Verdana" size="2">
	    Method
	   </font>
	  </td>
	 <td>
	  <select name="methoddefault">
	  
	    <option>Diminishing</option>
	  </select>
	 </td>
	 <td>
	  <select name="methodforecast">
	   <option>-----</option>
	  </select>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Rate
	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="ratedefault">
	  </td>
	  <td>
	   <input type="text" size="10" name="rateforecast">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Life
	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="lifedefault">
	  </td>
	  <td>
	   <input type="text" size="10" name="lifeforecast">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    FirstYear
%	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="firstyeardefault">
	  </td>
	  <td>
	   <input type="text" size="10"  name="firstyearforecast">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Pvt Use%</font>
	  </td>
	  <td>
	   <input type="text" size="10" name="privatedefault">
	  </td>
	  <td>
	  <input type="text" size="10" name="privateforecast">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Cost Limit</font>
	   
	  </td>
	  <td>
	   <input type="text" size="10" name="costdefault">
	   </td>
	   <td>
	    <input type="text" size="10" name="costforecast">
	   </td>
	 </tr>
	 <tr>
	  <td align="right">
	   <input type="checkbox" name="ignoreassetrate">
	  </td>
	  <td colspan="2">
	   <font color="#573801" face="Verdana" size="2">Ignore Asset Rate</font> 
	  </td>
	  </tr>
   </table>
   
  
  </td>
  <td width="259">
    <table>
     <tr>
	  <td width="84"></td>
	  <td width="88">
	    <font color="#573801" face="verdana" size="2">Default Rate</font>
	  </td>
	  <td width="65">
	   <font color="#573801" face="verdana" size="2">Revised Forecast</font>
	  </td>
	 </tr>
     <tr>
	 <td></td>
	  <td>
	   <input type="text" size="10" name="date2">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Frequency
	   </font>
	  </td>
	  <td>
	    <select  name="frequencydefaultnext">
	     <option>Monthly</option>
		 <option>Yearly</option> 
	   </select>
	  </td>
	  <td>
	   <select name="frequencyforecastnext">
	     <option>-----</option>
	   </select>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="Verdana" size="2">
	    Method
	   </font>
	  </td>
	 <td>
	  <select name="methoddefaultnext">
	  
	    <option>Diminishing</option>
	  </select>
	 </td>
	 <td>
	  <select name="methodforecastnext">
	   <option>-----</option>
	  </select>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Rate
	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="ratedefaultnext">
	  </td>
	  <td>
	   <input type="text" size="10" name="rateforecastnext">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Life
	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="lifedefaultnext">
	  </td>
	  <td>
	   <input type="text" size="10" name="lifeforecastnext">
	  </td>
	 </tr>
	 <tr>
	  <td>
	    <p><font color="#573801" face="verdana" size="2">
	      FirstYe</font><font color="#573801" face="verdana" size="2">ar
    % </font>	          </p>
	    </td>
	  <td><input type="text" size="10" name="firstyeardefaultnext"></td>
	  <td>
	   <input type="text" size="10"  name="firstyearforecastnext">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Pvt Use%</font>
	  </td>
	  <td>
	   <input type="text" size="10" name="privatedefaultnext">
	  </td>
	  <td>
	  <input type="text" size="10" name="privateforecastnext">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Cost Limit</font>
	   
	  </td>
	  <td>
	   <input type="text" size="10" name="costdefaultnext">
	   </td>
	   <td>
	    <input type="text" size="10" name="costforecastnext">
	   </td>
	 </tr>
	 <tr>
	  <td align="right">
	   <input type="checkbox" name="ignoreassetratenext">
	  </td>
	  <td colspan="2">
	   <font color="#573801" face="Verdana" size="2">Ignore Asset Rate</font> 
	  </td>
	  </tr>
   </table>
   
  
  </td> 
  
  
  
  <td width="261">
    <table>
     <tr>
	  <td width="85"></td>
	  <td width="89">
	    <font color="#573801" face="verdana" size="2">Default Rate</font>
	  </td>
	  <td width="65">
	   <font color="#573801" face="verdana" size="2">Revised Forecast</font>
	  </td>
	 </tr>
     <tr>
	 <td></td>
	  <td>
	   <input type="text" size="10" name="date3">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Frequency
	   </font>
	  </td>
	  <td>
	    <select  name="frequencydefaultfollow">
	     <option>Monthly</option>
		 <option>Yearly</option> 
	   </select>
	  </td>
	  <td>
	   <select name="frequencyforecastfollow">
	     <option>-----</option>
	   </select>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="Verdana" size="2">
	    Method
	   </font>
	  </td>
	 <td>
	  <select name="methoddefaultfollow">
	  
	    <option>Diminishing</option>
	  </select>
	 </td>
	 <td>
	  <select name="methodforecastfollow">
	   <option>-----</option>
	  </select>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Rate
	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="ratedefaultfollow">
	  </td>
	  <td>
	   <input type="text" size="10" name="rateforecastfollow">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Life
	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="lifedefaultfollow">
	  </td>
	  <td>
	   <input type="text" size="10" name="lifeforecastfollow">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    FirstYear
%	   </font>
	  </td>
	  <td>
	   <input type="text" size="10" name="firstyeardefaultfollow">
	  </td>
	  <td>
	   <input type="text" size="10"  name="firstyearforecastfollow">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Pvt Use%</font>
	  </td>
	  <td>
	   <input type="text" size="10" name="privatedefaultfollow">
	  </td>
	  <td>
	  <input type="text" size="10" name="privateforecastfollow">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Cost Limit</font>
	   
	  </td>
	  <td>
	   <input type="text" size="10" name="costdefaultfollow">
	   </td>
	   <td>
	    <input type="text" size="10" name="costforecastfollow">
	   </td>
	 </tr>
	 <tr>
	  <td align="right">
	   <input type="checkbox" name="ignoreassetratefollow">
	  </td>
	  <td colspan="2">
	   <font color="#573801" face="Verdana" size="2">Ignore Asset Rate</font> 
	  </td>
	  </tr>
	
   </table>
   
  
  </td>
 </tr>
 
 <tr>
	  <td>
	   
	  </td>
	  <td align="center">
	   <input type="image" src="images/submit.jpg">
	   </td> 
	   <td></td>
	 </tr>
</table>
</form>
</body>
</html>
