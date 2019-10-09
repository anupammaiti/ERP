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
	//out.println(s1);
	String s2=request.getParameter("alias");
	//out.println(s2);
	String s3=request.getParameter("vouchertype");
	//out.println(s3);
	String s4=request.getParameter("Abbr");
	//out.println(s4);
	String s5=request.getParameter("vouchernum");
	//out.println(s5);
	String s6=request.getParameter("effdate");
	//out.println(s6);
	String s7=request.getParameter("optional");
	//out.println(s7);
	String s8=request.getParameter("commnarro");
	//out.println(s8);
	String s9=request.getParameter("narroforentry");
	//out.println(s9);
	String ss=""+s1+"";
	//out.println(ss);
	Statement st=con.createStatement();
	String q1="insert into voucherdetails	values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')";
	
	int i=st.executeUpdate(q1);
	
	if(i==1)
	out.println("success");
	%>

	<form action="vouchercr.jsp" method="post">
<input type="submit" value="Back"/>
</form>

 </BODY>
</HTML>
