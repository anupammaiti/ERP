<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   Statement st=con.createStatement();
   %>
<HTML>
 <HEAD>
  <title>SVS</title>
   </HEAD>
   
   <% 
boolean admin_check = false;
boolean admin = false;
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
{
	admin = true;
}
%>

<%
if(admin_check || admin)
{

 %>




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

<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(admin){ %>
<form action="account1_admin.jsp" method="post">
<% } %>

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
 <td ><strong> <font  face = "verdana" size = "3"  color="#573801" >Purchase Alter</font></strong>
</td>
</tr>

</table>
<%


String is=request.getParameter("hid1");
//out.println("hid :   "+is);
int a= Integer.parseInt(request.getParameter("hid1"));
//out.println("a :   "+a);
String s= "select * from voucher_purchase where no="+a+" ";
ResultSet rs=st.executeQuery(s);
rs.next();

	

%>

<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <form action="purchase_alter_submit.jsp">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">

	<input type="text" name ="no" value=<% out.println(rs.getInt(1)); %> >
 
  </td>
 </tr>

 <tr>
 <td> <font color="#573801" face="verdana" size="2">Ref: </font></td>
 <td> 
 <input type="text" name ="ref" value=<% out.println(rs.getString(2)); %> ></td>
 </tr>

 <tr> 
 <td><font color="#573801" face="verdana" size="2">
 Date </font></td> 
 <td>   
	
 <input type="text" name ="date" value=<% out.println(rs.getString(3)); %> >
 </td>
 </tr>

 
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Party's A/c Name
   </font>
   </td>
   
   <td>
   <input type="text" name ="partyname" value=<% out.println(rs.getString(5)); %> >
    
   </td>
 </tr>
<tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   000
  </td>
 </tr>

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
   Purchase Ledger
   </font>
  </td>
  
  <td>
<input type="text" name ="purchasename" value=<% out.println(rs.getString(6)); %> >
   
   
  </td>
  </tr>

  <tr>
  <td> 
  <font color="#573801" face="verdana" size="2">
  Name of Item</font>
  </td>
	<td>

   <input type="text" name ="nameofitem" value=<% out.println(rs.getString(7)); %> >
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   <td>
    <input type="text" name ="qty" value=<% out.println(rs.getInt(8)); %> >
   </td>
  </tr>


  

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Units
   </font>
  </td>
  
  <td >

  <input type="text" name ="units" value=<% out.println(rs.getString(10)); %> >
   
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Rate(Rupees)
   </font>
  </td>
  <td>
  <input type="text" name ="rate" value=<% out.println(rs.getDouble(9)); %> >
  </td>
 </tr>
  

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Amount
   </font>
  </td>
  <td >
   <input type="text" name ="amount" value=<% out.println(rs.getString(11)); %> >
  </td>
 </tr>
  
  
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
   <textarea   name="narration" rows="3" cols="30"   value=<% out.println(rs.getString(12)); %> ></textarea>
  </td>
 </tr>
  
  
   
   
	
</table>


<br></br>
<center>
<input type="image" src="images/submit.jpg">
</center>

</form>
<table>

<form action="purchase_accounts.jsp" method="post">
<tr>
<td width="1100"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>

<% } %>


 </BODY>
</HTML>
