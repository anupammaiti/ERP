<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 %>
<HTML>
 <BODY>
  <%

	String s1=request.getParameter("name");
	String s2=request.getParameter("alias");
	String s3=request.getParameter("vouchertype");
	String s4=request.getParameter("Abbr");
	String s5=request.getParameter("vouchernum");
	String s6=request.getParameter("effdate");
	String s7=request.getParameter("optional");
	String s8=request.getParameter("commnarro");
	String s9=request.getParameter("narroforentry");
	String ss=""+s1+"";
	String n1 = (session.getAttribute("dummy")).toString();
	
	Statement st=con.createStatement();
	String q1="update voucherdetails set name= '"+s1+"' , alias='"+s2+"', typeofvoucher='"+s3+"', abbr= '"+s4+"', methofvouchnum='"+s5+"', effdates='"+s6+"', optional='"+s7+"', commnarro = '"+s8+"', narroforentry ='"+s9+"' where name='"+n1+"' ";

	
	String q2="update vouch set name='"+s1+"' where name='"+n1+"' ";
	
	int i=st.executeUpdate(q1);
	int j=st.executeUpdate(q2);
	if(i==1 && j==1)
	out.println("success");
%>
<form action="vouchercr.jsp" method="post">
<input type="submit" value="Back"/>
</form>
</BODY>
</HTML>
