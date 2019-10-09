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
<h4 align="center"><font color="#573801" face="verdana" size="3">Invoice For Work Performed </font></h4>
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="invoice4worhperformedsubmit.jsp">
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Labour</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">TotalCost</font>
	   </strong></td>
	</tr>
	<tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet1"));%>
	    </font>	
	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet1"));%>
	     </font>	   </td>
	   <td>
	    <font color="#573801" face="verdana" size="2">
	   <%
	      int  quantity1=Integer.parseInt(request.getParameter("quantityt1"));
	      int price1=Integer.parseInt(request.getParameter("pricet1"));
	   out.println(quantity1*price1);
	    int total1=quantity1*price1;
	   %>
	   </font>	
	    </td>
	</tr>
	<tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet2"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity2=Integer.parseInt(request.getParameter("quantityt2"));
	      int price2=Integer.parseInt(request.getParameter("pricet2"));
	   out.println(quantity2*price2);
	    int total2=quantity2*price2;
	   %>
	     </font>	    </td>
	</tr>
    <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet3"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity3=Integer.parseInt(request.getParameter("quantityt3"));
	      int price3=Integer.parseInt(request.getParameter("pricet3"));
	   out.println(quantity3*price3);
	    int total3=quantity3*price3;
	   %>
	     </font>	    </td>
	</tr>
   <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet4"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity4=Integer.parseInt(request.getParameter("quantityt4"));
	      int price4=Integer.parseInt(request.getParameter("pricet4"));
	   out.println(quantity4*price4);
	    int total4=quantity4*price4;
	   %>
	     </font>	    </td>
	</tr>

   <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet5"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantity5=Integer.parseInt(request.getParameter("quantityt5"));
	      int price5=Integer.parseInt(request.getParameter("pricet5"));
	   out.println(quantity5*price5);
	    int total5=quantity5*price5;
	   %>
	     </font>	    </td>
	</tr>
    <tr><td></td><td></td><td></td>
	<td>
	 <font color="#573801" face="verdana" size="2">Total</font>
	</td>
	 <td>
	  <%
	  out.println("<strong>");
	   
 	    out.println(total1+total2+total3+total4+total5);
		out.println("<strong>");
	  %>
	 </td>
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Materials</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">TotalCost</font>
	   </strong></td>
	</tr>
	<tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datem1"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantitym1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptionm1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricem1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantitym1=Integer.parseInt(request.getParameter("quantitym1"));
	      int pricem1=Integer.parseInt(request.getParameter("pricem1"));
	   out.println(quantitym1*pricem1);
	    int totalm1=quantitym1*pricem1;
	   %>
	     </font>	    </td>
	</tr>
	<tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datem2"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantitym2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptionm2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricem2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantitym2=Integer.parseInt(request.getParameter("quantitym2"));
	      int pricem2=Integer.parseInt(request.getParameter("pricem2"));
	   out.println(quantitym2*pricem2);
	    int totalm2=quantitym1*pricem1;
	   %>
	     </font>	    </td>
	</tr>
    <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datem3"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantitym3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptionm3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricem3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantitym3=Integer.parseInt(request.getParameter("quantitym3"));
	      int pricem3=Integer.parseInt(request.getParameter("pricem3"));
	   out.println(quantitym3*pricem3);
	    int totalm3=quantitym3*pricem3;
	   %>
	     </font>	    </td>
	</tr>
   <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datem4"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantitym4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptionm4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricem4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantitym4=Integer.parseInt(request.getParameter("quantitym4"));
	      int pricem4=Integer.parseInt(request.getParameter("pricem4"));
	   out.println(quantitym4*pricem4);
	    int totalm4=quantitym4*pricem4;
	   %>
	     </font>	    </td>
	</tr>

   <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datem5"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantitym5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptionm5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricem5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantitym5=Integer.parseInt(request.getParameter("quantitym5"));
	      int pricem5=Integer.parseInt(request.getParameter("pricem5"));
	   out.println(quantitym5*pricem5);
	    int totalm5=quantitym5*pricem5;
	   %>
	     </font>	    </td>
	</tr>
   <tr><td></td><td></td><td></td><td>
	 <font color="#573801" face="verdana" size="2">Total</font>
	</td>
  <td>
   <%
	    out.println(totalm1+totalm2+totalm3+totalm4+totalm5);
	  %>
  </td>
   </tr>
   </table>

  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Travel & Miscellaneous</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">TotalCost</font>
	   </strong></td>
	</tr>
	<tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet1"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet1"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantityt1=Integer.parseInt(request.getParameter("quantityt1"));
	      int pricet1=Integer.parseInt(request.getParameter("pricet1"));
	   out.println(quantityt1*pricet1);
	    int totalt1=quantityt1*pricet1;
	   %>
	     </font>	    </td>
	</tr>
	<tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet2"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet2"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantityt2=Integer.parseInt(request.getParameter("quantityt2"));
	      int pricet2=Integer.parseInt(request.getParameter("pricet2"));
	   out.println(quantityt2*pricet2);
	    int totalt2=quantityt2*pricet2;
	   %>
	     </font>	    </td>
	</tr>
    <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet3"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet3"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantityt3=Integer.parseInt(request.getParameter("quantityt3"));
	      int pricet3=Integer.parseInt(request.getParameter("pricet3"));
	   out.println(quantityt3*pricet3);
	    int totalt3=quantityt3*pricet3;
	   %>
	     </font>	    </td>
	</tr>
   <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet4"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet4"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantityt4=Integer.parseInt(request.getParameter("quantityt4"));
	      int pricet4=Integer.parseInt(request.getParameter("pricet4"));
	   out.println(quantityt4*pricet4);
	    int totalt4=quantityt4*pricet4;
	   %>
	     </font>	    </td>
	</tr>

   <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datet5"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("quantityt5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("descriptiont5"));%>
	     </font>	   </td>
	   <td>

	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("pricet5"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
	      int  quantityt5=Integer.parseInt(request.getParameter("quantityt5"));
	      int pricet5=Integer.parseInt(request.getParameter("pricet5"));
	   out.println(quantityt5*pricet5);
	    int totalt5=quantityt5*pricet5;
	   %>
	     </font>	    </td>
	</tr>
    <tr><td></td><td></td><td></td>
	<td>
	 <font color="#573801" face="verdana" size="2">Total</font>
	</td>
  <td>
   <%
	    out.println(totalt1+totalt2+totalt3+totalt4+totalt5);
	  %>
  </td>
   </tr>
   </table>

  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
     <tr>
	  <td width="619" align="right">
	    <strong><font color="#573801" face="verdana" size="2">Labour</font>
	    </strong></td>
	  <td width="165" align="right">
	    <strong><font color="#573801" face="verdana" size="2">
	     <%
	  
	   
 	    out.println(total1+total2+total3+total4+total5);
		
	  %>
	    </font>
	    </strong></td>
	  </tr>
	  <tr>
	  <td align="right">
	    <strong><font color="#573801" face="verdana" size="2">
	    Materials
	    </font>
	    </strong></td>
	   <td align="right">
	     <strong><font color="#573801" face="verdana" size="2">
		 <%
	    out.println(totalm1+totalm2+totalm3+totalm4+totalm5);
	  %>
		 </font>
	     </strong></td>
	  </tr>
	  <tr>
	    <td align="right">
	      <strong><font color="#573801" face="verdana" size="2">Travel & Miscellaneous </font>


	      </strong></td>
	   <td align="right">
	     <strong>
	     <%
	    out.println(totalt1+totalt2+totalt3+totalt4+totalt5);
	  %>
	     </strong></td>
	  </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
  <table align="center">
  <tr>
  <td>
    <strong><font color="#573801" face="verdana" size="2">Total</font>=
    </strong></td>
   <td>
     <strong><font color="#573801" face="verdana" size="2">
     <%
	   out.println(total1+total2+total3+total4+total5+totalm1+totalm2+totalm3+totalm4+totalm5+totalt1+totalt2+totalt3+totalt4+totalt5);
	 %>
     </font>
     </strong></td>
  </table>
    </td>
  
  </tr>
 <tr>
  <td align="center">
   <input type="image" src="images/submit.jpg">
   </td>
  </tr>
 </form>
</table>
</body>
</html>
