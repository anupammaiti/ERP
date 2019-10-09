<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<HTML>
</HEAD>

<% 
if(session.getAttribute("user_name").toString().equals("sales") & "sales".equals(session.getAttribute("pwd").toString()) )
{

 %>

 <BODY background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
 
 <%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 %>

 <table width="800"  border = "0" cellspacing = "0" cellpadding = "0" align ="center">
 <tr>
 <td>
	<img src = "images/banner.jpg" width = "800"></td>
 </tr>
 </table>

 

 

 <table width = "800" border = "0" cellspacing = "0" cellpadding = "0" align = "center">
 <tr>
 <td background = "images/after_main.jpg" height = "41" align = "center" >
	<strong> <font color = "#573801" size = "3" face = "verdana"> Welcome To Inventory Department</font></strong>
 </td>
 </tr>
 </table>


<p>&nbsp;</p>
 

 <%
	
	String dt1=request.getParameter("date1");
	
	String sp=request.getParameter("partyname");
	
	String sq=request.getParameter("quat_no");
	
	String si=request.getParameter("item_code");
	
	String s1=request.getParameter("nameofitem");
	//out.println(s4);
	String s2=request.getParameter("qty");
	//out.println(s5);
	
	String s3=request.getParameter("units");
	//out.println(s7);
	String s4=request.getParameter("rate");
	//out.println(s6);
	String s5=request.getParameter("amount");
	//out.println(s8);
	
	String sc=request.getParameter("chk_no");
	String sb=request.getParameter("bank");
	
	
	String s6=request.getParameter("narration");
	//out.println(s9);
	
	
	
	Integer ii=Integer.parseInt(s2);
	//out.println("i1 : "+ ii);

	Double d1 = Double.parseDouble(s4);
	//out.println("d1 : "+ d1);

	Double d2 = Double.parseDouble(s5);
	//out.println("d2 : "+ d2);


	Statement st=con.createStatement();

	String q1="insert into sl_sales_returns  values('"+dt1+"' , '"+sp+"' ,'"+sq+"' ,'"+si+"' ,'"+s1+"', "+ii+" ,'"+s3+"' ,"+d1+","+d2+", '"+sc+"' ,'"+sb+"','"+s6+"')";

	
	int k=st.executeUpdate(q1);
	
	if(k==1 )
	out.println("success");

	
	
%>

<center>

<strong> <font color = "#573801" size = "3" face = "verdana">Successfully Inserted</font></strong>
</center>

<table>


<tr>
<td width="100"/>

<td>


<form action="specific.jsp" method="post">
 
 <% if(sl){ %>
 <input type="hidden" name="username" value="sales">
 <input type="hidden" name="password" value="sales">
 <% } %>
 
 <% if(sl_ad){ %>
 <input type="hidden" name="username" value="sales_admin">
 <input type="hidden" name="password" value="sales_admin">
 <% } %>
 
  <input type="image" src="images/home.jpg">
 </form> 
</td>



</tr>
</table>



<% } %>
 </BODY>
</HTML>
