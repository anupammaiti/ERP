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
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Sales Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3">Appraisal Form </font></h4>
<table align="center" bordercolor="#F0B269" bordercolor="#F0B269" width="800">
<form action="appraisalformsubmit.jsp">
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269"bgcolor="#FADFC3">
    <tr>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   We have carefully and thoroughly examined the article(s) listed below belonging to:</font>
	  </td><br>
      <td>
	   <font color="#573801" face="verdana" size="2">Name:</font>
	   <input type="text" name="name">
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Address:</font>
	   <textarea name="address"></textarea>
	  </td>
	</tr>
	<tr>
    <td colspan="3">
	  <font color="#573801" face="verdana" size="2">
	  This estimation is based on the current retail value and is not intended to include any applicable state or federal tax. In the event of any damage to the item(s) described below, the Appraiser is not responsible for the cost of the replacement of said item(s).
	  </font>	 </td>
 	 </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" bordercolor="#F0B269" bgcolor="#FADFC3" border="1" width="800">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Item</font>
	   </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Description</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Appraised Value</font>
	    </strong></td>
	</tr>
	<tr>
	 <td>
	  <input type="text" name="item1">
	 </td>
	 <td>
	  <input type="text" name="description1">
	 </td>
	 <td>
	  <input type="text" name="apprisedvalue1">
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <input type="text" name="item2">
	 </td>
	 <td>
	  <input type="text" name="description2">
	 </td>
	 <td>
	  <input type="text" name="apprisedvalue2">
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <input type="text" name="item3">
	 </td>
	 <td>
	  <input type="text" name="description3">
	 </td>
	 <td>
	  <input type="text" name="apprisedvalue3">
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <input type="text" name="item4">
	 </td>
	 <td>
	  <input type="text" name="description4">
	 </td>
	 <td>
	  <input type="text" name="apprisedvalue4">
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <input type="text" name="item5">
	 </td>
	 <td>
	  <input type="text" name="description5">
	 </td>
	 <td>
	  <input type="text" name="apprisedvalue5">
	 </td>
	 
	</tr>
	<tr>
	 <td colspan="3">
	  <font color="#573801" face="verdana" size="2">The Appraiser assumes no liability for any action taken based on this appraisal</font>
	 </td>
	 </tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Appraisal Name</font>
	 </td>
	 <td>
	  <input type="text" name="appraisalname">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Date</font>
	  <input type="text" name="date">
	  </td>
	</tr>
	 <tr>
	  <td colspan="3" align="center">	  <input type="image" src="images/submit.jpg"></td>
	  </tr>
   </table>
  </td>
 </tr>
</table>
</form>
</body>
</html>
