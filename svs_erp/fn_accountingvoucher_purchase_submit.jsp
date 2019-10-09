<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%

 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
%>
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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Purchases Voucher </font></h4>
<%
  int amount=Integer.parseInt(request.getParameter("rate"))*Integer.parseInt(request.getParameter("quantity"));
  //out.println(amount);
 
  
 /* String str="insert into fn_accvoucher_sales (refno, date1, partyaccname,salesledger,nameofitem,quantity,rate,units,amount,id) values(?,?,?,?,?,?,?,?,?,?)";
  PreparedStatement pstmt=conn.preraredStatement(str);
  pstmt.setString(1,request.getParameter("refno"));
  pstmt.setString(2,request.getParameter("date1"));
  pstmt.setString(3,request.getParameter("account"));
  pstmt.setString(4,request.getParameter("salesaccount"));
  pstmt.setString(5,request.getParameter("stockitem"));
  pstmt.setString(6,request.getParameter("quantity"));
  pstmt.setString(7,request.getParameter("rate"));
  pstmt.setString(8,request.getParameter("units"));
  pstmt.setString(9,request.getParameter("date1"));
  pstmt.setString(10,request.getParameter("date1"));
  */
%>
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  
    <tr>
      <td width="392" align="right"><font color="#573801" face="verdana" size="2"> No. </font> </td>
      <td width="392" colspan="2">
	  <%
	    out.println("<font color=#573801 face=verdana size=2>");
 		out.println(request.getParameter("no"));
		out.println("</font>");
		 %>     </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Date </font> </td>
      <td colspan="2"><%
	  out.println("<font color=#573801 face=verdana size=2>");
	  out.println(request.getParameter("date1"));
	  out.println("</font>");
	   %>
      </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Ref No. </font> </td>
      <td colspan="2">
	  <%
	  out.println("<font color=#573801 face=verdana size=2>");
	  out.println(request.getParameter("refno"));
	  out.println("</font>");
	   %>
      </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Party Account </font> </td>
      <td colspan="2"><%
	  out.println("<font color=#573801 face=verdana size=2>");
	  out.println(request.getParameter("account"));
	  out.println("</font>");
	  %>
      </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Sales Ledger </font> </td>
      <td><%
	  out.println("<font color=#573801 face=verdana size=2>");
	  out.println(request.getParameter("salesaccount"));
	  out.println("</font>");
	  %>    </td>
      
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Name of Item </font> </td>
      <td ><%
	  out.println("<font color=#573801 face=verdana size=2>");
	  out.println(request.getParameter("stockitem"));
	  out.println("</font>");
	  %></td>
	  
    </tr>
	<tr>
	 <td align="right">
	  <font color="#573801" face="verdana" size="2">
	   Quantity
	  </font>
	  </td>
	  <td colspan="2">
	    <%
		 out.println("<font color=#573801 face=verdana size=2>");
		out.println(request.getParameter("quantity"));
		out.println("</font>");
		%>
	  </td>
	</tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Rate Per </font> </td>
      <td colspan="2"><%
	   out.println("<font color=#573801 face=verdana size=2>");
	  out.println(request.getParameter("rate"));
	  out.println("</font>");
	  %>
       
      </td>
    </tr>
	<tr>
	 <td align="right">
	  <font color="#573801" face="verdana" size="2">
	   Units
	  </font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   <%
	    out.println("<font color=#573801 face=verdana size=2>");
	   out.println(request.getParameter("units"));
	   out.println("</font>");
	   %>
	  </font>
	 </td>
	</tr>
	<tr>
	 <td align="right">
	  <font color="#573801" face="verdana" size="2">
	   Amount
	  </font>
     </td>
	 <td>
	  <%
	   out.println("<font color=#573801 face=verdana size=2>");
	  out.println(amount);
	  out.println("</font>");
	  %>
	 </td>
	</tr>
	<tr>
	<td colspan="3" align="center">
	<%
	 out.println("<form action=fn_accountingvoucher_purchase_submit1.jsp>");
  out.println("<input type=hidden name=refno value='"+request.getParameter("refno")+"'>");
  out.println("<input type=hidden name=date1 value='"+request.getParameter("date1")+"'>");
  out.println("<input type=hidden name=account value='"+request.getParameter("account")+"'>"); 
  out.println("<input type=hidden name=salesaccount value='"+request.getParameter("salesaccount")+"'>"); 
  out.println("<input type=hidden name=stockitem value='"+request.getParameter("stockitem")+"'>"); 
  out.println("<input type=hidden name=quantity value='"+request.getParameter("quantity")+"'>"); 
  out.println("<input type=hidden name=rate value='"+request.getParameter("rate")+"'>"); 
  out.println("<input type=hidden name=units value='"+request.getParameter("units")+"'>"); 
  out.println("<input type=hidden name=no value='"+request.getParameter("no")+"'>"); 
  out.println("<input type=hidden name=amount value='"+request.getParameter("amount")+"'>"); 
  out.println("<input type=image src=images/submit.jpg>");
  session.setAttribute("amount",amount);
  %>
  
	<%  
  out.println("</form>");
	
	%>
	</td>
   </tr> 
	
 
</table>
</body>
</html>
