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
<h4 align="center"><font color="#573801" face="verdana" size="3">Order Form </font></h4>
<form action="orderformsubmit.jsp">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td>
   <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td width="393">
	   <strong><font color="#573801" face="verdana" size="2">Number</font>
	   </strong></td>
	 <td width="391">
	 <font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("number"));%>
	 </font>
    </td>
	</tr>
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
     <font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("date"));%>
	 </font>	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Sales Person</font>
	   </strong></td>
	  <td>
      <font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("salesperson"));%>
	 </font>	  </td> 
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
    <tr>
	 <td width="391">
	  <font color="#573801" face="verdana" size="2"><strong>Sold To:</strong></font>
	  <font color="#573801" face="verdana" size="2">
	  <%out.println(request.getParameter("solodto"));%>
	 </font>	
	  </td>
	  <td width="393">
	   <font color="#573801" face="verdana" size="2"><strong>Ship To:</strong></font>
<font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("shipto"));%>
	 </font>		  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"> <strong>Phone&nbsp;&nbsp;:&nbsp;</strong>&nbsp; </font>
<font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("phone"));%>
	 </font>		 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>Ship By</strong></font><strong>:
	  </strong><font color="#573801" face="verdana" size="2">
	  <%out.println(request.getParameter("shipby"));%>
	 </font>	 	 </td>
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
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   SubTotal
	   </font>
	   </strong></td>
   </tr>
   <tr>
    <td height="30">
<font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("qunatity1"));%>
	 </font>		 </td>
	 <td>
<font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("itemdesc1"));%>
	 </font>		 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("price1"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%
	      int  quantity1=Integer.parseInt(request.getParameter("qunatity1"));
	      int price1=Integer.parseInt(request.getParameter("price1"));
	   out.println(quantity1*price1);
	    int total1=quantity1*price1;
	   %>
	   </font>	 </td>
    </tr>
     <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("quantity2"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("itemedesc2"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("price2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity2=Integer.parseInt(request.getParameter("quantity2"));
	      int price2=Integer.parseInt(request.getParameter("price2"));
	   out.println(quantity2*price2);
	    int total2=quantity2*price2;
	   %>
	     </font>	   </td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("quantity3"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("itemedesc3"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("price3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity3=Integer.parseInt(request.getParameter("quantity3"));
	      int price3=Integer.parseInt(request.getParameter("price3"));
	   out.println(quantity3*price3);
	    int total3=quantity3*price3;
	   %>
	     </font>	   </td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("quantity4"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("itemedesc4"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("price4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity4=Integer.parseInt(request.getParameter("quantity4"));
	      int price4=Integer.parseInt(request.getParameter("price4"));
	   out.println(quantity4*price4);
	   int total4=quantity4*price4;
	   %>
	     </font>	   </td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("quantity5"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("itemedesc5"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("price5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity5=Integer.parseInt(request.getParameter("quantity5"));
	      int price5=Integer.parseInt(request.getParameter("price5"));
	    out.println(quantity5*price5);
		 int total5=quantity5*price5;
		%>
	     </font>	   </td>
	 </tr>
	 <tr><td></td><td></td><td>
	  <font color="#573801" face="verdana" size="2"><strong>Total</strong>
	  </font>
	 </td>
	  <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  <%
	    out.println(total1+total2+total3+total4+total5);
	  %>
	  </font></strong>
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
