<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg">
<%
  Vector v=new Vector();
  Vector v1=new Vector();
  int count=0;
  int currentassettotal=0;
  int assettotal=0;
  int currentliabilitytotal=0;
  int liabilitytotal=0;

	    Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
		String str="select * from current_assets";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(str);
		while(rs.next())
		{
		  if(rs.getString(12).equalsIgnoreCase("Dr"))
		  {
		    v.add(rs.getString(3));
			v.add(rs.getString(11));
		  }
		  else
		  {
		   v1.add(rs.getString(3));
		   v1.add(rs.getString(11));
		  }
		}
	  
	  
	  
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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Balance Sheet </font></h4>
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <tr>
  <td width="392" align="center" valign="top">
   <font color="#573801" face="verdana" size="2">Liabilbities</font>
   <table width="392" border="1" align="center" bordercolor="#F0B269">
    <tr>
	 <td width="213">
	 <% //out.println(v);
     for(int i=0;i<v1.size();i++)
	  {
	    if(v1.get(i).toString().equalsIgnoreCase("BankAccounts") || v1.get(i).toString().equalsIgnoreCase("Cash-in-Hand"))
		{
		 /* if(count==0)
		  {
		  count=1;
		 // out.println("currentAssets");
          }*/
		  currentliabilitytotal+=Integer.parseInt(v1.get(i+1).toString());
		 
		// out.println("<br>");
		}
		
		if(v1.get(i).toString().equalsIgnoreCase("currentliabilities") ||v1.get(i).toString().equalsIgnoreCase("capitalaccount"))
		{
		  out.println(v1.get(i));
		  out.println(v1.get(i+1));
		  out.println("<br>");
		  liabilitytotal+=Integer.parseInt(v1.get(i+1).toString());
		}
	   /* for(int j=0;j<v.size();j++)
		{
		  if(v.get(i).toString().equals(v.get(j).toString()))
		  {
		    out.println(v.get(i));
			out.println("<br>");
		  }
		
		}*/
	  }
	 out.println("CurrentLiabilities");
	 out.println(currentassettotal);
	 liabilitytotal+=currentliabilitytotal;
	 
	 %>
	 </td>
	</tr>
	<tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Total:
	   </font>
	   <%
	   out.println(liabilitytotal);%>
	 </td>
	  </tr>
   </table>
  </td>
  <td width="392" align="center" valign="top">
   <font color="#573801" face="verdana" size="2">Assets</font>
   <table width="392" border="1" align="center" bordercolor="#F0B269">
    <tr>
	 <td width="213">
	 <% //out.println(v);
     for(int i=0;i<v.size();i++)
	  {
	    if(v.get(i).toString().equalsIgnoreCase("BankAccounts") || v.get(i).toString().equalsIgnoreCase("Cash-in-Hand"))
		{
		 /* if(count==0)
		  {
		  count=1;
		 // out.println("currentAssets");
          }*/
		  currentassettotal+=Integer.parseInt(v.get(i+1).toString());
		 
		// out.println("<br>");
		}
		
		if(v.get(i).toString().equalsIgnoreCase("currentliabilities") ||v.get(i).toString().equalsIgnoreCase("capitalaccount"))
		{
		  out.println(v.get(i));
		  out.println(v.get(i+1));
		  out.println("<br>");
		  assettotal+=Integer.parseInt(v.get(i+1).toString());
		}
	   /* for(int j=0;j<v.size();j++)
		{
		  if(v.get(i).toString().equals(v.get(j).toString()))
		  {
		    out.println(v.get(i));
			out.println("<br>");
		  }
		
		}*/
	  }
	  out.println("<a href=fn_currentassets.jsp");
	 out.println("CurrentAssets");
	 out.println(currentassettotal);
	 assettotal+=currentassettotal;
	 
	 %>
	 </td>
	</tr>
	<tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    Total
	   </font>
	   <%out.println(assettotal);
	     session.setAttribute("assettotal",assettotal);
	   %>
	 </td>
	  </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
