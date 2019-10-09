
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>

<style type="text/css">
<!--
  .style{
    color:#573801;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font:verdana;
	font-style:italic;
	richness:inherit;
	}
	.style1{
	    color:#573801;
		background:background-color:#D1965A;
		}
-->
</style>
</head>

<body background="images/bg.jpg">
<%

 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
%>
 <h3 class="style" align="center">
  Org Name
 </h3>

<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
<form action="vijjidocsubmit1.jsp">
 
  
 <tr>
  <td width="392" align="right">
   <font color="#573801" face="verdana" size="2">
    No.
   </font>
  </td>
  <td width="392">
    <%
     int count=0;
	 int count1=0;
	 String str="select * from bill_generate1";
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
  <td align="right">
    <font color="#573801" face="verdana" size="2">
	 Date
	</font>
  </td>
  <td>
    
	<%
	 java.util.Date dt=new java.util.Date();
	 out.println("<font color=#573801 face=verdana size=2>");
	 String str1=dt.toString();
	 StringTokenizer st=new StringTokenizer(str1);
	 String date1="";
	 int  count2=0;
	 while(st.hasMoreTokens())
	 {
	  count2++;
	  if(count2==5)
	  {
	  st.nextToken();
	  }
	  else
	  {
	  date1+=st.nextToken();
	 // out.println(count1);
	  if(count2==6)
	  {}
	  else
	  date1+="-";
	  }
	  
	 }
	// out.println(dt);
	session.setAttribute("date",date1);
	 out.println(date1);
	 out.println("</font>");
	%>
  </td>
 </tr>
 <tr>
  <td align="right">
   <font color="#573801" face="verdana" size="2">
    Name of Customer:
   </font>
  </td>
  <td>
   <input type="text" name="customer">
  </td>
 </tr>
 <tr>
  <td align="right">
   <font color="#573801" face="verdana" size="2">
    Price of Commodity
    </font>
  </td>
  <td>
   <input type="text" name="price">
  </td>
 </tr>
 <tr>
  <td colspan="2" align="center">
    <input type="submit" value=" Submit " class="style1">
</td>
 </tr>
  
 </form>
</table>
</body>
</html>
