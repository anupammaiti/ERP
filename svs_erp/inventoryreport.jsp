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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Inventory Report </font></h4>
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
 <form action="inventoryreportsubmit.jsp">
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3"bordercolor="#F0B269">
    <tr>
	 <td>
	   <font color="#573801" face="verdana" size="2">Date</font>
	  </td>
	  <td>
	   <input type="text" name="date">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Item</font>
	  </td>
	  <td>
	   <input type="text" name="item">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Dept/Location</font>
	   </td>
	   <td>
	    <input type="text" name="dept">
	    </td>
	 </tr>
    </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr><td colspan="4" align="center">
	  <font color="#573801" face="verdana" size="2">Received</font>
	  </td><td colspan="4" align="center">
	  <font color="#573801" face="verdana" size="2">Shipped</font>
	 </td>
    </tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Date IN</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">P.O.#</font>
 	 </td>
	 <td>
		  <font color="#573801" face="verdana" size="2">Amount</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Received By</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Date Out</font>
	   </td>
	   <td>
	    <font color="#573801" face="verdana" size="2">Invoice</font>
	   </td>
	   <td>
	    <font color="#573801" face="verdana" size="2">Amount</font>
	    </td>
		<td>
		 <font color="#573801" face="verdana" size="2">StockLeft</font>
		</td>
	</tr>
	<tr>
	 <td>
	  <input type="text" name="datein1" size="10">
	 </td>
	 <td>
	  <input type="text" name="po1" size="10">
	 </td>
	 <td>
	  <input type="text" name="amount1" size="10">
	 </td>
	 <td>
	  <input type="text" name="receivedby1" size="10">
	 </td>
	 <td>
	 <input type="text" name="dateout1" size="10">
	 </td>
	 <td>
	  <input type="text" name="invoice1" size="10">
	  </td>
	  <td>
	   <input type="text" name="amounta1" size="10">
	  </td>
	  <td>
	   <input type="text" name="stockleft1" size="10">
	   
	  </td>
	  
	 </tr>
	 <tr>
	 <td>
	  <input type="text" name="datein2" size="10">
	 </td>
	 <td>
	  <input type="text" name="po2" size="10">
	 </td>
	 <td>
	  <input type="text" name="amount2" size="10">
	 </td>
	 <td>
	  <input type="text" name="receivedby2" size="10">
	 </td>
	 <td>
	 <input type="text" name="dateout2" size="10">
	 </td>
	 <td>
	  <input type="text" name="invoice2" size="10">
	  </td>
	  <td>
	   <input type="text" name="amounta2" size="10">
	  </td>
	  <td>
	   <input type="text" name="stockleft2" size="10">
	   
	  </td>
	  
	 </tr>
     <tr>
	 <td>
	  <input type="text" name="datein3" size="10">
	 </td>
	 <td>
	  <input type="text" name="po3" size="10">
	 </td>
	 <td>
	  <input type="text" name="amount3" size="10">
	 </td>
	 <td>
	  <input type="text" name="receivedby3" size="10">
	 </td>
	 <td>
	 <input type="text" name="dateout3" size="10">
	 </td>
	 <td>
	  <input type="text" name="invoice3" size="10">
	  </td>
	  <td>
	   <input type="text" name="amounta3" size="10">
	  </td>
	  <td>
	   <input type="text" name="stockleft3" size="10">
	   
	  </td>
	  
	 </tr>
     <tr>
	 <td>
	  <input type="text" name="datein4" size="10">
	 </td>
	 <td>
	  <input type="text" name="po4" size="10">
	 </td>
	 <td>
	  <input type="text" name="amount4" size="10">
	 </td>
	 <td>
	  <input type="text" name="receivedby4" size="10">
	 </td>
	 <td>
	 <input type="text" name="dateout4" size="10">
	 </td>
	 <td>
	  <input type="text" name="invoice4" size="10">
	  </td>
	  <td>
	   <input type="text" name="amounta4" size="10">
	  </td>
	  <td>
	   <input type="text" name="stockleft4" size="10">
	   
	  </td>
	  
	 </tr>
    <tr>
	 <td>
	  <input type="text" name="datein5" size="10">
	 </td>
	 <td>
	  <input type="text" name="po5" size="10">
	 </td>
	 <td>
	  <input type="text" name="amount5" size="10">
	 </td>
	 <td>
	  <input type="text" name="receivedby5" size="10">
	 </td>
	 <td>
	 <input type="text" name="dateout5" size="10">
	 </td>
	 <td>
	  <input type="text" name="invoice5" size="10">
	  </td>
	  <td>
	   <input type="text" name="amounta5" size="10">
	  </td>
	  <td>
	   <input type="text" name="stockleft5" size="10">
	   
	  </td>
	  
	 </tr>
    <tr><td colspan="8" align="center">
	  <input type="image" src="images/submit.jpg">
	  </td>
    </tr>
    </table>
  </td>
   </tr>
 </form>
</table>
</body>
</html>
