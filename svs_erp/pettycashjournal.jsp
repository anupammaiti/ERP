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
<h4 align="center"><font color="#573801" face="verdana" size="3">Petty Cash Journal </font></h4>
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <form action="pettycashjournalsubmit.jsp">
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 
	 <tr>
	  
	 
	  <td width="416">
	   <font color="#573801" face="verdana" size="2"><strong>Dept</strong></font>
	   <select name="dept">
	    <option>Sales</option>
		<option>Finance</option>
		<option>Accounts</option>
	   </select>
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	
	 <tr>
	  <td width="82">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  <td width="95">
	    <strong><font color="#573801" face="verdana" size="2">Voucher#</font>
	    </strong></td>
	 
	   <td width="114">
	     <strong><font class="#573801" face="verdana" size="2">Payee</font>
	     </strong></td>
	   
	
	  <td width="112">
	     <strong><font color="#573801" face="verdana" size="2">Approved By </font>
	     </strong></td>
	   <td width="77">
	     <strong><font color="#573801" face="verdana" size="2">Total</font> 
	     </strong></td>
	   <td width="80">
	     <strong><font color="#573801" face="verdana" size="2">Balance</font>
	     </strong></td>
	  
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="date1" size="10">
	  </td>
	  <td>
	   <input type="text" name="voucher1" size="10">
	  </td>
	  <td>
	   <input type="text" name="payee1" size="10">
	  </td>
	  
	   <td>
	    <input type="text" name="approvedby1" size="10">
	   </td>
	   <td>
	    <input type="text" name="total1" size="10">
	    </td>
		<td>
		 <input type="text" name="balance1" size="10">
		</td>
		
	 </tr>
	<tr>
	 <td><strong><font color="#573801" face="verdana" size="2">Audited By</font></strong></td>
	 <td colspan="2">
	   <input type="text" name="auditedby" size="15">
	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Approved By</font>
	   </strong></td>
	 <td colspan="4">
	 <input type="text" name="approvedby" size="15">
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
