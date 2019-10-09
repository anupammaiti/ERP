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
<h4 align="center"><font color="#573801" face="verdana" size="3">Agin Of Acounts Receivable </font></h4>
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <form action="agingofaccountreceivablesubmit.jsp">
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 <tr>
	  <td colspan="2">
	     <font color="#573801" face="verdana" size="2">Reporting Period</font>
	  </td>
	  </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">From </font>
	   <input type="text" name="fromdate">
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">To</font>
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
	  <td colspan="5" align="center">&nbsp;</td><td colspan="4" align="center">
	   <font color="#573801" face="verdana" size="2">Account</font>
	  </td>
	 </tr>
	 <tr>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Invoice#</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Account</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Account#</font>
	    </strong></td>
	   <td>
	     <strong><font class="#573801" face="verdana" size="2">Description</font>
	     </strong></td>
	   
	
	  <td>
	     <strong><font color="#573801" face="verdana" size="2">30 Days</font>
	     </strong></td>
	   <td>
	     <strong><font color="#573801" face="verdana" size="2">60 Days</font> 
	     </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">90+ Days</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Total</font>
	    </strong></td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date1" size="10">
	  </td>
	  <td>
	   <input type="text" name="invoice1" size="10">
	  </td>
	  <td>
	   <input type="text" name="account1" size="10">
	  </td>
	  <td>
	   <input type="text" name="accounta1" size="10">
	  </td>
	   <td>
 	  <input type="text" name="description1" size="10">
	   </td> 
	   <td>
	    <input type="text" name="30days1" size="10">
	   </td>
	   <td>
	    <input type="text" name="60days1" size="10">
	    </td>
		<td>
		 <input type="text" name="90days1" size="10">
		</td>
		<td>
		 <input type="text" name="total1" size="10">
		</td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date2" size="10">
	  </td>
	  <td>
	   <input type="text" name="invoice2" size="10">
	  </td>
	  <td>
	   <input type="text" name="account2" size="10">
	  </td>
	  <td>
	   <input type="text" name="accounta2" size="10">
	  </td>
	   <td>
 	  <input type="text" name="description2" size="10">
	   </td> 
	   <td>
	    <input type="text" name="30days2" size="10">
	   </td>
	   <td>
	    <input type="text" name="60days2" size="10">
	    </td>
		<td>
		 <input type="text" name="90days2" size="10">
		</td>
		<td>
		 <input type="text" name="total2" size="10">
		</td>
	 </tr>
	  <tr>
	  <td>
	   <input type="text" name="date3" size="10">
	  </td>
	  <td>
	   <input type="text" name="invoice3" size="10">
	  </td>
	  <td>
	   <input type="text" name="account3" size="10">
	  </td>
	  <td>
	   <input type="text" name="accounta3" size="10">
	  </td>
	   <td>
 	  <input type="text" name="description3" size="10">
	   </td> 
	   <td>
	    <input type="text" name="30days3" size="10">
	   </td>
	   <td>
	    <input type="text" name="60days3" size="10">
	    </td>
		<td>
		 <input type="text" name="90days3" size="10">
		</td>
		<td>
		 <input type="text" name="total3" size="10">
		</td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date4" size="10">
	  </td>
	  <td>
	   <input type="text" name="invoice4" size="10">
	  </td>
	  <td>
	   <input type="text" name="account4" size="10">
	  </td>
	  <td>
	   <input type="text" name="accounta4" size="10">
	  </td>
	   <td>
 	  <input type="text" name="description4" size="10">
	   </td> 
	   <td>
	    <input type="text" name="30days4" size="10">
	   </td>
	   <td>
	    <input type="text" name="60days4" size="10">
	    </td>
		<td>
		 <input type="text" name="90days4" size="10">
		</td>
		<td>
		 <input type="text" name="total4" size="10">
		</td>
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date5" size="10">
	  </td>
	  <td>
	   <input type="text" name="invoice5" size="10">
	  </td>
	  <td>
	   <input type="text" name="account5" size="10">
	  </td>
	  <td>
	   <input type="text" name="accounta5" size="10">
	  </td>
	   <td>
 	  <input type="text" name="description5" size="10">
	   </td> 
	   <td>
	    <input type="text" name="30days5" size="10">
	   </td>
	   <td>
	    <input type="text" name="60days5" size="10">
	    </td>
		<td>
		 <input type="text" name="90days5" size="10">
		</td>
		<td>
		 <input type="text" name="total5" size="10">
		</td>
	 </tr>
	 <tr>
	  <td colspan="9" align="center"><input type="image" src="images/submit.jpg"></td>
	  </tr>




	</table>
   </td>
  </tr>
  </form>
</table>
</body>
</html>
