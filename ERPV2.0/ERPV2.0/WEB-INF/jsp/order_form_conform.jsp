<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>

</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="800"><img src="images/banner.jpg" width="800"></td></tr>
	<td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Sales Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  
  </tr>
</table>
 
<h4 align="center"><font color="#573801" face="verdana" size="3">Order Form </font></h4>

<%

session.setAttribute("number",request.getParameter("number"));
session.setAttribute("date",request.getParameter("date"));
session.setAttribute("salesperson",request.getParameter("salesperson"));
session.setAttribute("soldto",request.getParameter("solodto"));
session.setAttribute("shipto",request.getParameter("shipto"));
session.setAttribute("phone",request.getParameter("phone"));
session.setAttribute("shipby",request.getParameter("shipby"));
session.setAttribute("qunatity1",request.getParameter("qunatity1"));
session.setAttribute("itemdesc1",request.getParameter("itemdesc1"));
session.setAttribute("price1",request.getParameter("price1"));
session.setAttribute("quantity2",request.getParameter("quantity2"));
session.setAttribute("itemdesc2",request.getParameter("itemedesc2"));
session.setAttribute("price2",request.getParameter("price2"));
session.setAttribute("quantity3",request.getParameter("quantity3"));
session.setAttribute("itemdesc3",request.getParameter("itemedesc3"));
session.setAttribute("price3",request.getParameter("price3"));
session.setAttribute("quantity4",request.getParameter("quantity4"));
session.setAttribute("itemdesc4",request.getParameter("itemedesc4"));
session.setAttribute("price4",request.getParameter("price4"));
session.setAttribute("quantity5",request.getParameter("quantity5"));
session.setAttribute("itemdesc5",request.getParameter("itemedesc5"));
session.setAttribute("price5",request.getParameter("price5"));


/*String number=request.getParameter("number");
String date =request.getParameter("date");
String salesperson=request.getParameter("salesperson");
String soldto=request.getParameter("soldto");
String phone=request.getParameter("phone");
String shipby=request.getParameter("shipby");

String quantity1=request.getParameter("quantity1");
String itemdesc1=request.getParameter("itemdesc1");
String price1=request.getParameter("price1");

String quantity2=request.getParameter("quantity2");
String itemdesc2=request.getParameter("itemdesc2");
String price2=request.getParameter("price2");

String quantity3=request.getParameter("quantity3");
String itemdesc3=request.getParameter("itemdesc3");
String price3=request.getParameter("price3");

String quantity4=request.getParameter("quantity4");
String itemdesc4=request.getParameter("itemdesc4");
String price4=request.getParameter("price4");

String quantity5=request.getParameter("quantity5");
String itemdesc5=request.getParameter("itemdesc5");
String price5=request.getParameter("price5");
*/
%>
<form action="OrderForm" method="post">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td>
   <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Number</font>
	   </strong></td>
	 <td>

	<input type="text" name="number" value="<%=request.getParameter("number")%>">
    </td>
	</tr>
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>


	 <input type="text" name="date" value="<%=request.getParameter("date")%>">
	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Sales Person</font>
	   </strong></td>
	  <td>
	 <input type="text" name="salesperson" value="<%=request.getParameter("salesperson")%>">
	  </td> it
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>Sold To</strong></font>
	  <input type="text" name="solodto" value="<%=request.getParameter("solodto")%>">
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2"><strong>Ship To</strong></font>
	   <input type="text" name="shipto" value="<%=request.getParameter("shipto")%>">
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"> <strong>Phone</strong>&nbsp;&nbsp; </font>
	  <input type="text" name="phone" value="<%=request.getParameter("phone")%>">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>Ship By</strong></font>
	  <input type="text" name="shipby" value="<%=request.getParameter("shipby")%>">
 	 </td>
	 </tr>
   </table>
     </td>
 </tr>
 <tr>
  <td>
  <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
    <td>
	  <strong><font color="" face="verdana" size="2">
	  Quantity
	  </font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	  Item/Description
	  </font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	  Price/Item
	  </font>
	  </strong></td>
	 
   </tr>
   <tr>
    <td height="30">
	 <input type="text" name="qunatity1" value="<%=request.getParameter("qunatity1")%>">
	 </td>
	 <td>
	  <input type="text" name="itemdesc1" value="<%=request.getParameter("itemdesc1")%>">
	 </td>
	 <td>
	  <input type="text" name="price1" value="<%=request.getParameter("price1")%>">
	 </td>
	
    </tr>
     <tr>
	  <td>
	   <input type="text" name="quantity2" value="<%=request.getParameter("quantity2")%>">
	  </td>
	  <td>
	   <input type="text" name="itemedesc2" value="<%=request.getParameter("itemedesc2")%>">
	   </td>
	   <td>
	    <input type="text" name="price2" value="<%=request.getParameter("price2")%>">
	   </td>
	   
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="quantity3" value="<%=request.getParameter("quantity3")%>">
	  </td>
	  <td>
	   <input type="text" name="itemedesc3" value="<%=request.getParameter("itemedesc3")%>">
	   </td>
	   <td>
	    <input type="text" name="price3" value="<%=request.getParameter("price3")%>">
	   </td>
	   
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="quantity4" value="<%=request.getParameter("quantity4")%>">
	  </td>
	  <td>
	   <input type="text" name="itemedesc4" value="<%=request.getParameter("itemedesc4")%>">
	   </td>
	   <td>
	    <input type="text" name="price4" value="<%=request.getParameter("price4")%>">
	   </td>
	   
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="quantity5" value="<%=request.getParameter("quantity5")%>">
	  </td>
	  <td>
	   <input type="text" name="itemedesc5" value="<%=request.getParameter("itemedesc5")%>">
	   </td>
	   <td>
	    <input type="text" name="price5" value="<%=request.getParameter("price5")%>">
	   </td>
	   
	 </tr>
	 <td colspan="4" align="center">	   <input type="image" src="images/submit.jpg"></td>
	 </table>
  </td>
  </tr>
</table>
</form>

</body>

</html>
