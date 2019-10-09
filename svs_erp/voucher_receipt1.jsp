<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   %>
<HTML>
 <HEAD>
 <title>SVS</title>


  <script type="text/javascript">
function f()
{
//var x=document.getElementById("fname").value;
//document.getElementById("fname").value=x.toUpperCase();
document.getElementById("text2").value+=x;
}
</script>


   </HEAD>

 <BODY background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
  <table width="800"  border = "0" cellspacing = "0" cellpadding = "0" align ="center">
 <tr>
 	<td><img src = "images/banner.jpg" width = "800"></td>
 </tr>
 </table>

 <table width = "800" border = "0" cellspacing = "0" cellpadding = "0" align = "center">
 <tr>
 <td background = "images/after_main.jpg" height = "41" align = "center" ><strong> <font color = "#573801" size = "3" 
 face = "verdana"> Welcome To Finance Department</font></strong> </td>
 </tr>
 </table>
<p>&nbsp;</p>

<table>

<form action="kvk_finance_main.jsp" method="post">
<tr>
<td width="100"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>
</tr>
</table>

 

 
 <table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana">Receipt Details</font></strong>
</td>
</tr>

</table>

&nbsp;

<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <form action="voucher_receipt_submit.jsp">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">

	
  <%
	
	  String str2="select no from voucher_receipt ";
	  Statement stmt2=conn.createStatement();
	  ResultSet rs2=stmt2.executeQuery(str2);
	  int no=0;
	  while(rs2.next())
	  {
		no=rs2.getInt(1);
		
	  }
	  if(no==0)
	  out.println("1");
	  else
	  out.println(no+1);
	%>
  </td>
 </tr>
 
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    account
   </font>
   </td>
   <td>
    <%
	  String str="select ledgername from ledgersdata where under='CapitalAccount' or under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c'";
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery(str);
	  out.println("<select name=under>");
	  while(rs.next())
	  {
	    out.println("<option>");
		out.println(rs.getString(1));
		out.println("</option>");
	  }
	%>
   </td>
 </tr>
<tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   <%
	  String str3="select ledgername from ledgersdata ";
	  Statement stmt3=conn.createStatement();
	  ResultSet rs3=stmt3.executeQuery(str3);
	  out.println("<select name=particular>");
	  while(rs3.next())
	  {
	    out.println("<option>");
		out.println(rs3.getString(1));
		out.println("</option>");
	  }
	%>
  </td>
 </tr>

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
   Particulars
   </font>
  </td>
  <td>

   <%
	  String str1="select ledgername from ledgersdata where ledgername!='Cash'";
	  Statement stmt1=conn.createStatement();
	  ResultSet rs1=stmt1.executeQuery(str1);
	  out.println("<select name=particular>");
	  while(rs1.next())
	  {
	    out.println("<option>");
		out.println(rs1.getString(1));
		out.println("</option>");
	  }
	%>
   
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Amount
	</font>
   </td>
   <td>
    <input type="text" name="amount">
   </td>
  </tr>


  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   00000
  </td>
 </tr>
  
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
   <textarea   name="naration" rows="3" cols="30"></textarea>
  </td>
 </tr>
  
  
   
   
	
</table>




<br></br>
<center>
<input type="image" src="images/submit.jpg">
</center>

</form>
<table>

<form action="accounting_voucher_main.jsp" method="post">
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
