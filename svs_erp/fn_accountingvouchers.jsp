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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Accounting Vouchers </font></h4>
<table align="center">
 <tr>
  <td align="center">
   <form action="fn_accountingvoucher_contra.jsp">
    <input type="submit" value="    Contra Voucher  ">
   </form>
  </td>
  </tr>
  <tr>
   <td align="center">
    <form action="fn_accountingvoucher_receipt.jsp">
	 <input type="submit" value="  Receipt Voucher ">
	</form>
   </td>
  </tr>
   <tr>
   <td align="center">
    <form action="fn_accountingvoucher_payment.jsp">
	 <input type="submit" value=" Payment Voucher">
	</form>
   </td>
  </tr>
  <tr>
   <td align="center">
    <form action="fn_accountingvoucher_sales.jsp">
	 <input type="submit" value="    Sales Voucher   ">
	</form>
   </td>
  </tr>
   <tr>
   <td align="center">
    <form action="fn_accountingvoucher_purchase.jsp">
	 <input type="submit" value="Purchase Voucher">
	</form>
   </td>
  </tr>
  <tr>
   <td align="center">
    <form action="specific.jsp">
	 <input type="hidden" name="username" value="fn_pranam">
	 <input type="hidden" name="password" value="fn_pranam">
	 <input type="image" src="images/home.jpg">
	</form>
   </td>
  </tr>
</table>
</body>
</html>
