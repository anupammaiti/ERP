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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Sales Call Log </font></h4>
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
 <form action="salescalllogsubmit.jsp">
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Number</font>
   </td>
   <td>
    <input type="text" name="number">
   </td>
   <td>
    <font color="#573801" face="verdana" size="2">Date</font>
   </td>
   <td>
    <input type="text" name="date">
   </td>
   
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Name OF Company</font>
  </td>
  <td> <input type="text" name="nameofcompany"></td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Contact</font>
   </td>
   <td>
    <input type="text" name="contact">
    </td>
	<td>
	 <font color="#573801" face="verdana" size="2">Phone</font>
	 
	</td>
	<td>
	 <input type="text" name="phone">
	</td>
  </tr>
  <tr>
   <td>
   <font color="#573801" face="verdana" size="2">Type Of Call</font>
    </td>
	<td>
	 <font color="#573801" face="verdana" size="2">Customer</font>
	
	  <input type="radio" name="typeofcall">
	 
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Prospect</font>
	  </td>
	  <td>
	   <input type="radio" name="typeofcall">
	   </td>
	
  </tr>
  <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Comments</font>
   </td>
   <td colspan="3">
    <textarea name="comments"></textarea>
   
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">Purpose Of Call</font>
	</td>
   <td colspan="3">
	 <textarea name="purposeofcall"></textarea>
	
   </td>
  </tr>
  <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Opening Conversation</font>
    </td>
   <td colspan="3">
	 <textarea name="openingconversation"></textarea>
	
    
  </td>
  </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">Sales Story</font>
	 </td>
   <td colspan="3">
	  <textarea name="salesstory"></textarea>
	 
	 </td>
   </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  Benefits Of Customer
	 </font>
	</td>
   <td colspan="3">
	  <textarea name="benefitsofcustomer"></textarea>
	
	</td>
   </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">Objections</font>
	</td>
   <td colspan="3">
	  <textarea name="objections"></textarea>
	
	 </td>
    </tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Closing Conversation</font>
	 </td>
   <td colspan="3">
	   <textarea name="closingconversation"></textarea>
	 
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">When To Follow</font>
	</td>
   <td colspan="3">
	   <textarea name="whentofollow"></textarea>
	 
	  </td>
	</tr>
	<tr>
	 <td colspan="4" align="center">
	  <input type="image" src="images/submit.jpg">
	 </td>
	</tr>
	</form>
</table>
</body>
</html>
