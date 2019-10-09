<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   %>
<HTML>
 <HEAD>
<title>SVS</title>
  
 </HEAD>

 <BODY background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
  <table width="800"  border = "0" cellspacing = "0" cellpadding = "0" align ="center">
 <tr>
 <td>
	<img src = "images/banner.jpg" width = "800"></td>
 </tr>
 </table>

 

 

 <table width = "800" border = "0" cellspacing = "0" cellpadding = "0" align = "center">
 <tr>
 <td background = "images/after_main.jpg" height = "41" align = "center" >
	<strong> <font color = "#573801" size = "3" face = "verdana"> Welcome To Finance Department</font></strong>
 </td>
 </tr>
 </table>


<p>&nbsp;</p> 





<table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana" color = "#573801" size="3">Stock Items Creation</font></strong>
</td>
</tr>
</table>


<form action="dummy_stock_items_creation.jsp" method = "post" >



<%String unit=request.getParameter("units");%>
<table  border = "1" align="center" width= "800"  bgcolor="#FADFC3" bordercolor="#F0B269">


<tr>
<td width="392">
<font color="#573801" face="verdana" size="2">Name</font>
</td>
<td width="392">
<%out.println(request.getParameter("name"));%>
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">(Alias)  </font>
</td>
<td>
<%out.println(request.getParameter("alias"));%>
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Under  </font>
</td>
<td>
<%out.println(request.getParameter("under"));%>

</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Units </font>
</td>
<td>
<%out.println(unit);%>

</td>
</tr>




<tr>
<td>
<font color="#573801" face="verdana" size="2">Tax Information (Rate of Duty)  </font>
</td>
<td>
<%out.println(request.getParameter("tax_rate"));%>
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Tax Information (Traffic Classification)  </font>
</td>
<td>
<%out.println(request.getParameter("tax_classif"));%>
</td>
</tr>



</table>
<% if(unit.equals("Not Applicable"))
	{}
	else
	{
%>

<table  border = "1" align="center" width= "800"  bgcolor="#FADFC3" bordercolor="#F0B269">
<tr>
<td></td><td>Quantity</td> <td>Rate</td> <td>Per</td> <td>Value</td>
</tr>
<tr>
<td>Opening Balance:</td>  
<td><input type="text" name="qty" size="15"    /><%out.println(unit);%></td> 
<td><input type="text" name="rate" size="15"    /></td>
<td><%out.println(unit);%></td>
<td><%out.println("00.00");%></td>
</tr></table>
<% } %>

<%
	String s1=request.getParameter("name");
	session.setAttribute("name",s1);
	String s2=request.getParameter("alias");
	session.setAttribute("alias",s2);
	String s3=request.getParameter("under");
	session.setAttribute("under",s3);
	String s4=request.getParameter("units");
	session.setAttribute("units",s4);
	String s5=request.getParameter("tax_rate");
	session.setAttribute("tax_rate",s5);
	String s6=request.getParameter("tax_classif");
	session.setAttribute("tax_classif",s6);
%>
<br></br>
<center>
<input type="image" src="images/submit.jpg">
</center>
</form>

<table>

<form action="stock_items_main.jsp" method="post">
<tr>
<td width="1100"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>
 </BODY>
</HTML>
