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
  
  <script type="text/javascript">

	// JavaScript Document
	
function validations()
{
	with(document.form1){

		if (trim(name.value) == ""){
			alert("Please Enter Name");
			name.focus();
			return false;
		} 
		
		if(under.selectedIndex == 0) 
		{
			alert("Please Select Under!");			
			under.focus();
			return false;
		}	
		
	}
}

function trim(a){
    return(lTrim(rTrim(a)));
}

function lTrim(tmp){
    for(i=0;i<tmp.length;i++){
        if(tmp.charAt(i) != " ")
            break;
    }
    return tmp.substring(i,tmp.length)
}

function rTrim(tmp){
    for(i=tmp.length-1;i>=0;i--){
        if(tmp.charAt(i) != " ")
            break;
    }
    return tmp.substring(0,i+1)
}
		
</script>
  
 </HEAD>


<% 
boolean admin_check = false;
boolean fn_check = false;
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
{
	fn_check = true;
}
%>

<%
if(admin_check || fn_check)
{

 %>

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
 <td ><strong> <font  face = "verdana" color = "#573801" size="3">Stock Item Alter</font></strong>
</td>
</tr>
</table>

<table>
<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(fn_check){ %>
<form action="account_operator.jsp" method="post">
<% } %>

<tr>
<td width="300"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="stock_items_main.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>

</tr>
</table>


<form action="dummy_stock_item_alter.jsp" method = "post" >


<% 
	String ser=request.getParameter("groupname");
	Statement st2=con.createStatement();
	 String q2="select * from stockitems where name=? ";
	 PreparedStatement p = con.prepareStatement(q2);
	 p.setString(1,ser);
	 	
	 ResultSet rs2=p.executeQuery();
	 
	  rs2.next();
	  
	   String dd= rs2.getString(1);
	    session.setAttribute("dummy",dd); 
%>
		 
	 
	 





<table  border = "1" align="center" width= "800"  bgcolor="#FADFC3" bordercolor="#F0B269">


<tr>
<td width="392">
<font color="#573801" face="verdana" size="2">Name</font>
</td>
<td width="392">
<input type="text" name="name" size="15"  value=<%out.println(rs2.getString(1));%> />
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">(Alias)  </font>
</td>
<td>
<input type="text" name="alias" size="15" value=<%out.println(rs2.getString(2));%> >
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Under  </font>
</td>
<td>

	 <input type="text" name="under" size="15" value=<%out.println(rs2.getString(3));%> >

</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Units </font>
</td>
<td>

		  
 <input type="text" name="units" size="15" value=<%out.println(rs2.getString(4));%> >

</td>
</tr>




<tr>
<td>
<font color="#573801" face="verdana" size="2">Tax Information (Rate of Duty)  </font>
</td>
<td>
<input type="text" name="tax_rate" size="15"   value=<%out.println(rs2.getString(5));%> />
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Tax Information (Traffic Classification)  </font>
</td>
<td>
<input type="text" name="tax_classif" size="15"  value=<%out.println(rs2.getString(6));%>  />
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
