<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="ledger" scope="application" class="com.Ledgerconnect" />
<jsp:useBean id="stockitem" scope="application" class="com.Stockitemsconnect" />
<jsp:useBean id="units" scope="application" class="com.Unitofmeasureconnect" />


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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Sales Vouchers </font></h4>
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <form action="fn_accountingvoucher_sales_submit.jsp">
    <tr>
      <td width="392" align="right"><font color="#573801" face="verdana" size="2"> No. </font> </td>
      <td width="392" colspan="2"><%
     int count=0;
	 int count1=0;
	 String str="select * from fn_accvoucher_sales";
	 Statement stmt=conn.createStatement();
	 ResultSet rs=stmt.executeQuery(str);
	 
	 while(rs.next())
	 {
	    count=1;
		count1++;
	 }
	 if(count==1)
	 {
	  int no=count1+1;
	 out.println("<input type=check name=no value='"+no+"'>");
	 }
     else
	 {
	 
	   out.println("<input type=check name=no value=1>");
	 }
	
   %>
      </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Date </font> </td>
      <td colspan="2"><input type="text" name="date1" value="yyyy/mm/dd">
      </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Ref No. </font> </td>
      <td colspan="2"><input type="text" name="refno">
      </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Party Account </font> </td>
      <td colspan="2"><%
    
	ResultSet rs2=ledger.connection();
	out.println("<select name=account>");
	 out.println(count);
	 out.println("ajay");
	while(rs2.next())
	  {
	   
	  
	  if(rs2.getString(3).equalsIgnoreCase("BankAccounts") || rs2.getString(3).equalsIgnoreCase("Cash-in-hand"))
	  {
	   out.println("<option>");
	   out.println(rs2.getString(1));
	   out.println("</option>");
	   
	
	  }
	
	}
   %>
      </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Sales Ledger </font> </td>
      <td><%
    
	ResultSet rs1=ledger.connection();
	out.println("<select name=salesaccount>");
	 out.println(count);
	 out.println("ajay");
	while(rs1.next())
	  {
	   
	  
	  if(rs1.getString(3).equalsIgnoreCase("salesaccounts"))
	  {
	   out.println("<option>");
	   out.println(rs1.getString(1));
	   out.println("</option>");
	   
	
	  }
	
	}
   %>
      </td>
      <td><a href="fn_ledger_create.jsp"><font size="2" face="verdana" color="#573801">Create Ledger</font></a> </td>
    </tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Name of Item </font> </td>
      <td ><select name="stockitem">
          <%
	  ResultSet rs3=stockitem.connection();
	  while(rs3.next())
	  {
        out.println("<option>");
		out.println(rs3.getString(1));
		out.println("</option>");	  
	  }
	%>
        </select>
      </td>
	  <td>
	   <a href="in_stock_items_create.jsp"><font face="verdana" size="2" color="#573801">Create Ledger</font></a>
	  </td>
    </tr>
	<tr>
	 <td align="right">
	  <font color="#573801" face="verdana" size="2">
	   Quantity
	  </font>
	  </td>
	  <td colspan="2">
	   <input type="text" name="quantity">
	  </td>
	</tr>
    <tr>
      <td align="right"><font color="#573801" face="verdana" size="2"> Rate Per </font> </td>
      <td colspan="2"><input type="text" name="rate" size="10">
          <select name="units">
            <%
	   ResultSet rs4=units.connection();
	   while(rs4.next())
	   {
	     out.println("<option>");
		 out.println(rs4.getString(1));
		 out.println("</option>");
	    
	   }
	 %>
          </select>
      </td>
    </tr>
    <tr>
      <td colspan="3" align="center"><input type="image" src="images/submit.jpg">
      </td>
    </tr>
  </form>
</table>
<div align="right">
 <form action="fn_accountingvouchers.jsp">
  <input type="image" src="images/back.jpg">
 </form>
</div>
</body>
</html>
