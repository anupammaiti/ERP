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
<h4 align="center"><font color="#573801" face="verdana" size="3">Invoice For Work Performed </font></h4>
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="invoice4worhperformedsubmit.jsp">
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Labour</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	 
	</tr>
	<tr>
	  <td>
	   <input type="text" name="date1">
	   </td>
	   <td>
	    <input type="text" name="quantity1">
	   </td>
	   <td>
	    <input type="text" name="description1">
	   </td>
	   <td>
	    <input type="text" name="price1">
	   </td>
	  
	</tr>
	<tr>
	  <td>
	   <input type="text" name="date2">
	   </td>
	   <td>
	    <input type="text" name="quantity2">
	   </td>
	   <td>
	    <input type="text" name="description2">
	   </td>
	   <td>
	    <input type="text" name="price2">
	   </td>
	  
	</tr>
    <tr>
	  <td>
	   <input type="text" name="date3">
	   </td>
	   <td>
	    <input type="text" name="quantity3">
	   </td>
	   <td>
	    <input type="text" name="description3">
	   </td>
	   <td>
	    <input type="text" name="price3">
	   </td>
	  
	</tr>
   <tr>
	  <td>
	   <input type="text" name="date4">
	   </td>
	   <td>
	    <input type="text" name="quantity4">
	   </td>
	   <td>
	    <input type="text" name="description4">
	   </td>
	   <td>
	    <input type="text" name="price4">
	   </td>
	  
	</tr>

   <tr>
	  <td>
	   <input type="text" name="date5">
	   </td>
	   <td>
	    <input type="text" name="quantity5">
	   </td>
	   <td>
	    <input type="text" name="description5">
	   </td>
	   <td>
	    <input type="text" name="price5">
	   </td>
	   
	</tr>

   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Materials</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	
	</tr>
	<tr>
	  <td>
	   <input type="text" name="datem1">
	   </td>
	   <td>
	    <input type="text" name="quantitym1">
	   </td>
	   <td>
	    <input type="text" name="descriptionm1">
	   </td>
	   <td>
	    <input type="text" name="pricem1">
	   </td>
	  
	</tr>
	<tr>
	  <td>
	   <input type="text" name="datem2">
	   </td>
	   <td>
	    <input type="text" name="quantitym2">
	   </td>
	   <td>
	    <input type="text" name="descriptionm2">
	   </td>
	   <td>
	    <input type="text" name="pricem2">
	   </td>
	   
	</tr>
    <tr>
	  <td>
	   <input type="text" name="datem3">
	   </td>
	   <td>
	    <input type="text" name="quantitym3">
	   </td>
	   <td>
	    <input type="text" name="descriptionm3">
	   </td>
	   <td>
	    <input type="text" name="pricem3">
	   </td>
	   
	</tr>
   <tr>
	  <td>
	   <input type="text" name="datem4">
	   </td>
	   <td>
	    <input type="text" name="quantitym4">
	   </td>
	   <td>
	    <input type="text" name="descriptionm4">
	   </td>
	   <td>
         <input type="text" name="pricem4">
</td>
	  
	</tr>

   <tr>
	  <td>
	   <input type="text" name="datem5">
	   </td>
	   <td>
	    <input type="text" name="quantitym5">
	   </td>
	   <td>
	    <input type="text" name="descriptionm5">
	   </td>
	   <td>
	    <input type="text" name="pricem5">
	   </td>
	   
	</tr>

   </table>

  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Travel & Miscellaneous</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	 
	</tr>
	<tr>
	  <td>
	   <input type="text" name="datet1">
	   </td>
	   <td>
	    <input type="text" name="quantityt1">
	   </td>
	   <td>
	    <input type="text" name="descriptiont1">
	   </td>
	   <td>
	    <input type="text" name="pricet1">
	   </td>
	   
	</tr>
	<tr>
	  <td>
	   <input type="text" name="datet2">
	   </td>
	   <td>
	    <input type="text" name="quantityt2">
	   </td>
	   <td>
	    <input type="text" name="descriptiont2">
	   </td>
	   <td>
	    <input type="text" name="pricet2">
	   </td>
	   
	</tr>
    <tr>
	  <td>
	   <input type="text" name="datet3">
	   </td>
	   <td>
	    <input type="text" name="quantityt3">
	   </td>
	   <td>
	    <input type="text" name="descriptiont3">
	   </td>
	   <td>
	    <input type="text" name="pricet3">
	   </td>
	   
	</tr>
   <tr>
	  <td>
	   <input type="text" name="datet4">
	   </td>
	   <td>
	    <input type="text" name="quantityt4">
	   </td>
	   <td>
	    <input type="text" name="descriptiont4">
	   </td>
	   <td>
	    <input type="text" name="pricet4">
	   </td>
	   
	</tr>

   <tr>
	  <td>
	   <input type="text" name="datet5">
	   </td>
	   <td>
	    <input type="text" name="quantityt5">
	   </td>
	   <td>
	    <input type="text" name="descriptiont5">
	   </td>
	   <td>
	    <input type="text" name="pricet5">
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
</body>
</html>
