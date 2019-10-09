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
var x=document.getElementById("iqty").value;
var y=document.getElementById("irate").value;
var z=x*y;
//document.getElementById("fname").value=x.toUpperCase();
document.getElementById("iamount").value=z;
}
</script>


   </HEAD>
   
  <% 
   boolean sl = false;
   boolean sl_ad = false;
if(session.getAttribute("user_name").toString().equals("sales") & "sales".equals(session.getAttribute("pwd").toString()) )
sl=true;

if(session.getAttribute("user_name").toString().equals("sales_admin") & "sales_admin".equals(session.getAttribute("pwd").toString()) )
sl_ad=true;

if(sl || sl_ad)
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
 face = "verdana"> Welcome To Inventory Department</font></strong> </td>
 </tr>
 </table>
<p>&nbsp;</p>


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


 

 
 <table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana">Sales Returns Details</font></strong>
</td>
</tr>

</table>

&nbsp;

<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <form action="sl_sales_returns_submit.jsp">
 
 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
	<% String dt="select curdate()"; 
	  Statement dst=conn.createStatement();
		ResultSet drs = dst.executeQuery(dt);
		String dt1=null;
		while(drs.next())
		{
			dt1=drs.getString(1);
		}


	%>
 <input type="text" name="date1" value="<%out.println(dt1);%>">  </td>
 </tr>

 
 
 <tr>
  <td> 
  	<font color="#573801" face="verdana" size="2">
 	<font color="#573801" face="verdana" size="2">Party Name
   </font> 
  </td>
	<td>
	<input type="text" name="partyname" >
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	<font color="#573801" face="verdana" size="2">
 	<font color="#573801" face="verdana" size="2">Quotation No.
   </font> 
  </td>
	<td>
	<input type="text" name="quat_no" >
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	<font color="#573801" face="verdana" size="2">
 	<font color="#573801" face="verdana" size="2">Item Code
   </font> 
  </td>
	<td>
	<input type="text" name="item_code" >
    </td>
  </tr>
  
  

 


  <tr>
  <td> 
  <font color="#573801" face="verdana" size="2">
 <font color="#573801" face="verdana" size="2">Name of Item
   </font> 
  </td>
	<td>
	<%
	  String sstr1="select nameofitem from sl_sales ";
	  Statement sstmt1=conn.createStatement();
	  ResultSet srs1=sstmt1.executeQuery(sstr1);
	  out.println("<select name=nameofitem>");
	  while(srs1.next())
	  {
	    out.println("<option>");
		out.println(srs1.getString(1));
		out.println("</option>");
	  }
	%>
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   <td>
    <input type="text" name="qty" id="iqty">
   </td>
  </tr>


  

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
   Measurments
   </font>
  </td>
  <td >
	<input type="text" name="units" >
   
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Rate(Rupees)
   </font>
  </td>
  <td>
   <input type="text" name="rate" id="irate" onBlur="f();">
  </td>
 </tr>
  

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Amount
   </font>
  </td>
  <td >
   <input type="text" name="amount" id="iamount">
  </td>
 </tr>
  
  
  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Cheque No.
   </font>
  </td>
  <td >
   <input type="text" name="chk_no" >
  </td>
 </tr>
 
  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Bank Name
   </font>
  </td>
  <td >
   <input type="text" name="bank" >
  </td>
 </tr>
  
  
  
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
   <textarea   name="narration" rows="3" cols="30"></textarea>
  </td>
 </tr>
  
  
   
   
	
</table>




<br></br>
<center>
<input type="image" src="images/submit.jpg">
</center>

</form>


<% } %>


 </BODY>
</HTML>
