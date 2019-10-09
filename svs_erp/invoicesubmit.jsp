<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
<table align="center" width="800" background="images/bg.jpg">
<tr>
<td>
<form action="invoicesubmit1.jsp">
<table align="center" bordercolor="#F0B269" border="1" bgcolor="#FADFC3">

 <tr>
  <td width="129" align="right">
    <strong><font color="#573801" size="2" face="Verdana"> Name & Address</font>
    </strong></td>
  <td width="8">
  <font color="#573801" size="4">:</font>
  </td>
  <td width="256">
   <% out.println("<font color=#573801 size=4>"+request.getParameter("nameandaddress")+"</font>");
        session.setAttribute("nameandaddress",request.getParameter("nameandaddress"));
	   %>
  </td>
  </tr>
  <tr>
  <td align="right">
    <strong><font color="#573801" size="2" face="Verdana">ID</font>
    </strong></td>
  <td>
  <font color="#573801" size="4">:</font>
  </td>
  <td>
    <% out.println("<font color=#573801 size=4>"+request.getParameter("id")+"</font>");
	
	   session.setAttribute("id",request.getParameter("id"));
	%></td>
  </tr>
  <tr>
  <td align="right">
    <strong><font color="#573801" size="2" face="Verdana">Invoice NO.</font>
    </strong></td>
  <td>
  <font color="#573801" size="4">:</font>
  </td>
  <td>
    <% out.println("<font color=#573801 size=4>"+request.getParameter("invoiceno")+"</font>");
	
	   session.setAttribute("invoiceno",request.getParameter("invoiceno"));
	
	%>
  </td>
  </tr>
  <tr>
  <td align="right">
    <strong><font color="#573801" size="2" face="Verdana">Date</font>
    </strong></td>
  <td>
  <font color="#573801" size="4">:</font>
  </td>
   <td>
     <% out.println("<font color=#573801 size=4>"+request.getParameter("date")+"</font>");
	 
	    session.setAttribute("date",request.getParameter("date"));
	 %>
  </td>
 </tr>
 <tr>
  <td align="right">
    <strong><font color="#573801" size="2" face="Verdana">Refference No.</font>
    </strong></td>
  <td>
  <font color="#573801" size="4">:</font>
  </td>
  <td>
    <% out.println("<font color=#573801 size=4>"+request.getParameter("refferenceno")+"</font>");
	
	   session.setAttribute("refferenceno",request.getParameter("refferenceno"));
	%>
  </td>
 </tr>
 <tr>
  <td align="right">
    <strong><font color="#573801" size="2" face="Verdana">Dept.</font>
    </strong></td>
   <td>
  <font color="#573801" size="4">:</font>
  </td>
   <td>
    <% out.println("<font color=#573801 size=4>"+request.getParameter("dept")+"</font>");
	
	   session.setAttribute("dept",request.getParameter("dept"));
	%>
  </td>
 </tr>
</table>
 <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
   <tr>
    <td width="123">
	  <strong><font color="#573801" size="2" face="Verdana">Srl.Part Number</font>
	  </strong></td>
	<td width="47">
	  <strong><font color="#573801" size="2" face="Verdana">Name</font>
	  </strong></td>
	<td width="77">
	  <strong><font color="#573801" size="2" face="Verdana">Unit Price</font>
	  </strong></td>
	<td width="140">
	  <strong><font color="#573801" size="2" face="Verdana">Number of Pieces </font>
	  </strong></td>
   </tr>
   <tr>
    <td>
	  <% out.println("<font color=#573801 size=4>"+request.getParameter("srlnumber")+"</font>");
	     session.setAttribute("srlnumber",request.getParameter("srlnumber"));
	  %>
	 </td>
	 <td>
	   <% out.println("<font color=#573801 size=4>"+request.getParameter("name")+"</font>");
	   
	     session.setAttribute("name",request.getParameter("name"));
	   %>
	 </td>
	 <td>
	   <% out.println("<font color=#573801 size=4>"+request.getParameter("unitprice")+"</font>");
	   
	      session.setAttribute("unitprice",request.getParameter("unitprice"));
	   %>
	 </td>
	 <td>
	   <% out.println("<font color=#573801 size=4>"+request.getParameter("price")+"</font>");
	   
	      session.setAttribute("price",request.getParameter("price"));
	   %>
	 </td>
	 
   </tr>
 </table>
 <table width="414" align="center" bgcolor="#FADFC3" border="1" bordercolor="#F0B269">
  <tr>
  <td width="148" align="right">
    <strong><font color="#573801" size="2" face="verdana">Total Amount </font>
    </strong></td>
  <td width="9">
  <font color="#573801" size="4">:</font>
  </td>
  <td width="241">
   
   <%
      float price=Float.parseFloat(request.getParameter("unitprice"));
	 float numberofpieces=Float.parseFloat(request.getParameter("price"));
	 float sum=price*numberofpieces;
    
	 out.println("<font color=#573801 size=4>"+sum+"</font>");
	 session.setAttribute("sum",request.getParameter("sum"));
    %>
  </td>
  </tr>
  <tr>
   <td width="148" align="right">
   
     <strong><font color="#573801" size="2" face="verdana">Service Tax @12%</font>
     </strong></td>
 <td>
  <font color="#573801" size="4">:</font>
  </td>
 <td width="241">
<%
  float servicetax=sum*(0.12f);
   out.println("<font color=#573801 size=4>"+servicetax+"</font>");
     session.setAttribute("servicetax",servicetax);          
  %>
  </td>
  </tr>
  <tr>
  <td align="right">
    <strong><font color="#573801" size="2" face="verdana">VAT @ 12.5%</font>
    </strong></td>
  <td>
  <font color="#573801" size="4">:</font>
  </td>
  <td>
   <%
   float vat=sum*(0.125f);
    out.println("<font color=#573801 size=4>"+vat+"</font>");
     session.setAttribute("vat",vat);          
  %>
  </td>
</tr>
 </table>
 <hr>
 <table align="center">
 <tr>
 <td>
  <font color="#573801" size="2" face="verdana"><strong>Total =</strong></font>
 </td>
  <td>
    <%
	 // float totalamount=(sum+servicetax+vat);
     out.println("<font color=#573801 size=4><strong>"+(sum+servicetax+vat)+"</strong></font>");
	 session.setAttribute("totalamount",(sum+servicetax+vat));
	//out.println(totalamount);
   %>
</td>    
  </tr>
 
</table>
<table align="center">
<tr>
  <td align="center">
   <input type="submit" value="    OK     ">
  </td>
 </tr>
</table>
</form>
</td>
</tr>
</table>

</body>
</html>
