<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="00" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
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
<h4 align="center"><font color="#573801" face="verdana" size="3">Invoice Form </font></h4>
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>
<form action="invoicesubmit.jsp">
<table align="center" bordercolor="#F0B269" border="1" bgcolor="#FADFC3">

 <tr>
  <td>
    <strong><font color="#573801"   size="2" face="Verdana" >Customer Name & Address</font></strong>
  </td>
  <td>
   <textarea name="nameandaddress"></textarea>
  </td>
  </tr>
  <tr>
  <td>
    <strong><font color="#573801" size="2" face="Verdana" >ID</font></strong>
  </td>
  <td>
   <input type="text" name="id">
  </td>
  </tr>
  <tr>
  <td>
    <strong><font color="#573801" size="2" face="Verdana" >Invoice NO.</font></strong>
  </td>
  <td>
   <input type="text" name="invoiceno">
  </td>
  </tr>
  <tr>
  <td>
    <strong><font color="#573801" size="2" face="Verdana" >Date</font></strong></td>
  
   <td>
   <input type="text" name="date">
  </td>
 </tr>
 <tr>
  <td><font color="#573801" size="2" face="Verdana"><strong>Refference No.</strong> </font></td>
  <td>
   <input type="text" name="refferenceno">
  </td>
 </tr>
 <tr>
  <td><font color="#573801" size="2" face="Verdana"><strong>Dept</strong> </font></td>
  <td>
   <select  name="dept">
    <option>Sales</option>
	<option>Finance</option>
	<option>Accounts</option>
	
    </select>
  </td>
 </tr>
</table>
 <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
    <td>
	  <strong><font color="#573801" size="2" face="Verdana" >Srl.Part Number</font></strong>
	</td>
	<td>
	  <strong><font color="#573801" size="2" face="Verdana" >Name</font></strong>
	</td>
	<td>
	  <strong><font color="#573801" size="2" face="Verdana" >Unit Price</font></strong>
	</td>
	<td>
	  <strong><font color="#573801" size="2" face="Verdana" >Number of Items </font></strong></td>
   </tr>
   <tr>
    <td>
	 <input type="text" name="srlnumber">
	 </td>
	 <td>
	  <input type="text" name="name">
	 </td>
	 <td>
	  <input type="text" name="unitprice">
	 </td>
	 <td>
	  <input type="text" name="price">
	 </td>
	 
   </tr>
 </table>
 <table width="256" align="center">
  <tr>
   <td width="248" align="center">
     <p><font color="#573801" size="2" face="Verdana" >Service Tax @12%</font></p>
     <p><font color="#573801" size="2" face="Verdana" >VAT @ 12.5%</font></p>
     <p><font color="#573801" size="2" face="Verdana" >Edu. Cess On services Tax @3%</font>
</p>
     <p><input type="image" src="images/submit.jpg">             </p></td>
  </tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>
