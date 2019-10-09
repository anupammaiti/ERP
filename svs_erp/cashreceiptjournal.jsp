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
<h4 align="center"><font color="#573801" face="verdana" size="3">Cash Receipts Journal </font></h4>
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <form action="cashreceiptjournalsubmit.jsp">
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 
	 <tr>
	  <td>
	   <font color="#573801" size="2" face="verdana">Month </font>
	   <input type="text" name="fromdate">
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">General ledger No. </font>
	   <input type="text" name="todate">
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 
	 <tr>
	  <td width="73">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  
	  
	  <td width="71">  <strong><font color="#573801" face="verdana" size="2">Account Credited</font></strong></td>
	   <td width="69">
	     <strong><font color="#573801" face="verdana" size="2">Account#</font>
	     </strong></td>
	   <td width="69">
	     <strong><font color="#573801" face="verdana" size="2">Sales</font>
	     </strong></td>
	<td width="69">
	    <strong><font color="#573801" face="verdana" size="2">Amount Receivables</font>
	    </strong></td>
	  <td width="62">
	     <strong><font color="#573801" face="verdana" size="2">Cash</font>
	     </strong></td>
	   <td width="61">
	     <strong><font color="#573801" face="verdana" size="2">Discount</font> 
	     </strong></td>
	   <td width="60">
	     <strong><font color="#573801" face="verdana" size="2">Other</font></strong></td>
	   <td width="99">
	     <strong><font color="#573801" face="verdana" size="2">Account Debited </font>
	     </strong></td>
	   
	   <td width="99"><strong><font color="#573801" face="verdana" size="2">Account#</font></strong></td>
	   <td width="99"><strong><font color="#573801" face="verdana" size="2">Other</font></strong></td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date1" size="6">
	  </td>
	  
	 
	  <td>
	   <input type="text" name="accountc1" size="6">
	  </td>
	   <td>
 	  <input type="text" name="account1" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="sales1" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="amountr1" size="6">
	   </td> 
	   <td>
	    <input type="text" name="cash1" size="6">
	   </td>
	   <td>
	    <input type="text" name="discount1" size="6">
	    </td>
		<td>
		 <input type="text" name="other1" size="6">
		</td>
		<td>
		 <input type="text" name="accountd1" size="6">
		</td>
	   
	    <td><input type="text" name="accountp1" size="6"></td>
	    <td><input type="text" name="othera1" size="6"></td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date2" size="6">
	  </td>
	  
	 
	  <td>
	   <input type="text" name="accountc2" size="6">
	  </td>
	   <td>
 	  <input type="text" name="account2" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="sales2" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="amountr2" size="6">
	   </td> 
	   <td>
	    <input type="text" name="cash2" size="6">
	   </td>
	   <td>
	    <input type="text" name="discount2" size="6">
	    </td>
		<td>
		 <input type="text" name="other2" size="6">
		</td>
		<td>
		 <input type="text" name="accountd2" size="6">
		</td>
	   
	    <td><input type="text" name="accountp1" size="6"></td>
	    <td><input type="text" name="othera1" size="6"></td>
	 </tr>
	  <tr>
	  <td>
	   <input type="text" name="date3" size="6">
	  </td>
	 
	  
	  <td>
	   <input type="text" name="accountc3" size="6">
	  </td>
	   <td>
 	  <input type="text" name="account3" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="sales3" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="amountr3" size="6">
	   </td> 
	   <td>
	    <input type="text" name="cash3" size="6">
	   </td>
	   <td>
	    <input type="text" name="discount3" size="6">
	    </td>
		<td>
		 <input type="text" name="other3" size="6">
		</td>
		<td>
		 <input type="text" name="accountd3" size="6">
		</td>
	    
	    <td><input type="text" name="accountp1" size="6"></td>
	    <td><input type="text" name="othera1" size="6"></td>
	  </tr>
	 <tr>
	  <td>
	   <input type="text" name="date4" size="6">
	  </td>
	 
	 
	  <td>
	   <input type="text" name="accountc4" size="6">
	  </td>
	   <td>
 	  <input type="text" name="account4" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="sales4" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="amountr4" size="6">
	   </td> 
	   <td>
	    <input type="text" name="cash4" size="6">
	   </td>
	   <td>
	    <input type="text" name="discount4" size="6">
	    </td>
		<td>
		 <input type="text" name="other4" size="6">
		</td>
		<td>
		 <input type="text" name="accountd4" size="6">
		</td>
	   
	    <td><input type="text" name="accountp1" size="6"></td>
	    <td><input type="text" name="othera1" size="6"></td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date5" size="6">
	  </td>
	 
	  
	  <td>
	   <input type="text" name="accountc5" size="6">
	  </td>
	   <td>
 	  <input type="text" name="account5" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="sales5" size="6">
	   </td> 
	   <td>
 	  <input type="text" name="amountr5" size="6">
	   </td> 
	   <td>
	    <input type="text" name="cash5" size="6">
	   </td>
	   <td>
	    <input type="text" name="discount5" size="6">
	    </td>
		<td>
		 <input type="text" name="other5" size="6">
		</td>
		<td>
		 <input type="text" name="accountd5" size="6">
		</td>
	   
	    <td><input type="text" name="accountp1" size="6"></td>
	    <td><input type="text" name="othera1" size="6"></td>
	 </tr>
	 <tr>
	  <td colspan="12" align="center"><input type="image" src="images/submit.jpg"></td>
	  </tr>




	</table>
   </td>
  </tr>
  </form>
</table>
</body>
</html>
