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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Acount Payables </font></h4>
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
  <form action="specific.jsp">
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 <tr>
	  <td colspan="4">
	     <font color="#573801" face="verdana" size="2"><strong>Reporting Period</strong></font>
	  </td>
	  </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2"><strong>From</strong> </font>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("fromdate"));%></font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2"><strong>To</strong></font>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("todate"));%></font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2"><strong>Dept</strong></font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">
	    <% out.println(request.getParameter("dept"));%>
	   </font>
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 
	 <tr>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Invoice#</font>
	    </strong></td>
	  
	   <td>
	     <strong><font class="#573801" face="verdana" size="2">Dept</font>
	     </strong></td>
	   
	
	  
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Total</font>
	    </strong></td>
	 </tr>
	 
	 
	 <%
	 Class.forName("com.mysql.jdbc.Driver");
	   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
       String query="select * from invoice where dept=? and date between ? and ?";
 	   PreparedStatement pstmt=conn.prepareStatement(query);
       pstmt.setString(1,request.getParameter("dept"));
	   pstmt.setString(2,request.getParameter("fromdate"));
	   pstmt.setString(3,request.getParameter("todate"));
	   ResultSet rs=pstmt.executeQuery();	
	 while(rs.next())
	   {
	      out.println("<tr>");
		  out.println("<td>");
	     out.println("<font color=#573801 face=verdana size=2>");
		 out.println(rs.getString(4));  
		 out.println("</font>");
		
		
		%>
	  
	   
	  </td>
	  
	  
	  <td>
	    <font color="#573801" face="verdana" size="2">
	   <%
	      out.println(rs.getString(3));
	   %>
	   </font>
	  </td>
	   <td>
 	   <font color="#573801" face="verdana" size="2">
	   <%
	      out.println(rs.getString(14));
	   %>
	   </font>
	   </td> 
	   
		<td>
		  <font color="#573801" face="verdana" size="2">
	   <%
	      out.println(rs.getString(12));
	   %>
	   </font>
		</td>
	 </tr>
	<%

}
%> 
	 
	 <tr>
	  <td colspan="9" align="center"><input type="image" src="images/home.jpg"></td>
	  </tr>




	</table>
   </td>
   </tr>
   <input type="hidden" name="username" value="fn_admin">
   <input type="hidden" name="password" value="fn_admin">
  </form>
</table>
</body>
</html>
