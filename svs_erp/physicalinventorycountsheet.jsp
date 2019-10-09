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
    <td background="images/after_main.jpg" height="45" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Inventery Department</font></strong>      <!--<img src="images/after_main.jpg">-->
	
	 
	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3"> Physical Inventory Count Sheet</font></h4>
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
 <tr>
  <td>
     <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
	  <tr>
	   <td width="68">
	    <font color="#573801" face="verdana" size="2">Sheet#</font>
	    </td>
		<td width="716">
		 <input type="text" name="sheet">
		</td>
	  </tr>
	  <tr>
	    <td>
	     <font color="#573801" face="verdana" size="2">Location</font>
	     </td>
		 <td>
		  <input type="text" name="location">
		 </td>
	   </tr>
	 </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">ItemNumber</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Description</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Quantity</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Location</font> 
	  </td>
	</tr>
	<tr>
	 <td>
	  <input type="text" name="itemnumber1">
	  </td>
	  <td>
	   <input type="text" name="description1">
	  </td>
	  <td>
	   <input type="text" name="quantity1">
	  </td>
	  <td>
	  
	   <input type="text" name="location1">
	  </td>
	</tr>
	<tr>
	 <td>
	  <input type="text" name="itemnumber2">
	  </td>
	  <td>
	   <input type="text" name="description2">
	  </td>
	  <td>
	   <input type="text" name="quantity2">
	  </td>
	  <td>
	  
	   <input type="text" name="location2">
	  </td>
	</tr>
    <tr>
	 <td>
	  <input type="text" name="itemnumber3">
	  </td>
	  <td>
	   <input type="text" name="description3">
	  </td>
	  <td>
	   <input type="text" name="quantity3">
	  </td>
	  <td>
	  
	   <input type="text" name="location3">
	  </td>
	</tr>
    <tr>
	 <td>
	  <input type="text" name="itemnumber4">
	  </td>
	  <td>
	   <input type="text" name="description4">
	  </td>
	  <td>
	   <input type="text" name="quantity4">
	  </td>
	  <td>
	  
	   <input type="text" name="location4">
	  </td>
	</tr>
    <tr>
	 <td>
	  <input type="text" name="itemnumber5">
	  </td>
	  <td>
	   <input type="text" name="description5">
	  </td>
	  <td>
	   <input type="text" name="quantity5">
	  </td>
	  <td>
	  
	   <input type="text" name="location5">
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Counted By</font>
	 </td>
	 <td>
	  <input type="text" name="countedby">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Date</font>
	 </td>
	 <td>
	  <input type="text" name="date">
	 </td>
	</tr>
  <tr><td colspan="4" align="center">
    <input type="image" src="images/submit.jpg">
   </td>
  </tr>
   </table> 
   </td>
 </tr>
</table>
</body>
</html>
