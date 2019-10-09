<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
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
<h4 align="center"><font color="#573801" face="verdana" size="3">Company Creation</font></h4>
<form action="fn_createcompanysubmit.jsp">
<table align="center" width="800" bgcolor="#FADFC3" bordercolor="#F0B269" border="1">

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Name
   </font>
  </td>
  <td width="392">
   <input type="text" name="companyname">
   
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Mailing Name
   </font>
  </td>
  <td>
   <input type="text" name="mailingname">
  </td>
  
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Address
   </font>
  </td>
  <td>
    <textarea name="address"></textarea>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Statutory Commpliances  for
   </font>
  </td>
  <td>
   <input type="text" name="statutory" value="india">
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    State
   </font>
   </td>
   <td>
    <select  name="state">
	 <option>Andaman&Nikobar Islands</option>
	 <option>AndhraPradesh</option>
	 <option>ArunachalPradesh</option>
	 <option>Assam</option>
	 <option>Bihar</option>
	 <option>Chandighar</option>
	 <option>Chattisghar</option>
	 <option>Dadra&Nagar Haveli</option>
	 <option>Daman&Diu</option>
	 <option>Delhi</option>
	 <option>Goa</option>
	 <option>Gujarat</option>
	 <option>Haryana</option>
	 <option>HimachalPradesh</option>
	 <option>Jammu&Kashmir</option>
	 <option>Jharkhand</option>
	 <option>Karnataka</option>
	 <option>Kerala</option>
	 <option>Lakshadweep</option>
	 <option>MadyaPradesh</option>
	 <option>Maharashtra</option>
	 <option>Manipur</option>
	 <option>Meghalaya</option>
	 <option>Mezoram</option>
	 <option>Nagaland</option>
	 <option>Orissa</option>
	 <option>Puducherry</option>
	 <option>Punjab</option>
	 <option>Rajastan</option>
	 <option>Sikkim</option>
	 <option>Tamilnadu</option>
	 <option>Tripura</option>
	 <option>Uttarakhand</option>
	 <option>Uttarpradesh</option>
	 <option>Westbengal</option>
     
	</select>
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
     PIN Code
   </font>
  </td>
  <td>
   <input type="text" name="pincode">
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="Verdana" size="2">
	  Telephone Number
	</font>
   </td>
   <td>
    <input type="text" name="telephonenumber">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 E-Mail
	</font>
   </td>
   <td>
     <input type="text" name="email">
   </td>
  </tr>
  <tr>
   <td>
     <font color="#573801" face="verdana" size="2">
	   Currency Symbol
	 </font>
    </td>
	<td>
	 <input type="text" name="currency" value="Rs.">
	</td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Maintain
	</font>
   </td>
   <td>
    <select name="maintain">
	 <option>Accounts Only</option>
	 <option>Accounts with Inventory</option>
	</select>
   </td>
   
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	  Finalcial Year from
	</font>
	
	
   </td>
   <td>
    <input type="text" name="finacialyearfrom" value="1-4-2008">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Books Beginning from
	</font>
    </td>
	<td>
	 <input type="text" name="booksbeginningfrom" value="1-4-2008">
	</td>
  </tr>
  <tr>
   <td colspan="2" align="center">
     <input type="image" src="images/submit.jpg">   </td>
   </tr>
  
</table>
</form>
</body>
</html>
