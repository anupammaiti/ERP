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
<h4 align="center"><font color="#573801" face="verdana" size="3">Daily Cash Report </font></h4>
<table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
 <form action="dailycashreportsubmit.jsp">
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Date</font>
  </td>
  <td>
   <input type="text" name="date">
  </td>
  <td></td>
  <td></td>
  </tr>
  <tr>
   <td>
     <strong><font color="#573801" face="verdana" size="2">#</font>
     </strong></td>
   <td>
     <strong><font color="#573801" face="verdana" size="2">Cash Recorded From</font>
     </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Amount</font>
	  </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Cash Paid Out To</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Amount</font>
	   </strong></td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">1</font>
    </td>
	<td>
	 <input type="text" name="cashr1">
	 </td>
	 <td>
	  <input type="text" name="amount1">
	  </td>
	  <td>
	   <input type="text" name="cashp1">
	  </td>
	  <td>
	   <input type="text" name="amounta1">
	  </td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">2</font></td>
	<td>
	 <input type="text" name="cashr2">
    </td>
	 <td>
	  <input type="text" name="amount2">
    </td>
	  <td>
	   <input type="text" name="cashp2">
	  </td>
	  <td>
	   <input type="text" name="amounta2">
	  </td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">3</font>
    </td>
	<td>
	 <input type="text" name="cashr3">
	 </td>
	 <td>
	  <input type="text" name="amount3">
	  </td>
	  <td>
	   <input type="text" name="cashp3">
	  </td>
	  <td>
	   <input type="text" name="amounta3">
	  </td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">4</font>
    </td>
	<td>
	 <input type="text" name="cashr4">
	 </td>
	 <td>
	  <input type="text" name="amount4">
	  </td>
	  <td>
	   <input type="text" name="cashp4">
	  </td>
	  <td>
	   <input type="text" name="amounta4">
	  </td>
  </tr>
 <tr>
    <td><font color="#573801" face="verdana" size="2">5</font>
    </td>
	<td>
	 <input type="text" name="cashr5">
	 </td>
	 <td>
	  <input type="text" name="amount5">
	  </td>
	  <td>
	   <input type="text" name="cashp5">
	  </td>
	  <td>
	   <input type="text" name="amounta5">
	  </td>
  </tr>
  <tr>
  <td colspan="5" align="center">
    <input type="image" src="images/submit.jpg">   </td> 
  </tr>

</form>
</table>
</body>
</html>
