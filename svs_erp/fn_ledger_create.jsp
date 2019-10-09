<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>


<script type="text/javascript">

  function f()
  {
	  window.history.go(-1);
  }
 
	// JavaScript Document
	
function validations()
{
	with(document.form1){
	
	
		//var ln = /(^([0-9]*\.[0-9]*)$)/
		//var ln = /(^([a-z]*[A-Z]*[0-9]*)$)/
		if (trim(ledgername.value) == ""){
			alert("Please Enter Ledger Name");
			ledgername.focus();
			return false;
		} 
		
		
		if(under.selectedIndex == 0) 
		{
			alert("Please Select Account!");			
			under.focus();
			return false;
		}	
					
		
	}//end of with
	
return true;
}//end of validations()


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



	
	
	
///////////////////////////////////////////////////////////////////	

</script>

</head>


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


<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>     </strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3"> Ledger Creation </font></h4>

<table>

<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(fn_check){ %>
<form action="account_operator.jsp" method="post">
<% } %>

<tr>
<td width="100"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>



<td width="1000"/>

<td>
<input align ="right" type="image" src="images/back.jpg" onClick="f();"/>
</td>

</tr>
</table>


<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <form action="fn_ledger_submit.jsp" name="form1" onSubmit="return validations();">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Ledger Name
   </font>
  </td>
  <td width="392">
   <input type="text" name="ledgername">
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Alias
   </font>
  </td>
  <td>
   <input type="text" name="alias">
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Under
   </font>
   </td>
   <td>
    <%
	 Class.forName("com.mysql.jdbc.Driver");
	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
	  String str="select * from groups";
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery(str);
	 %>
	 
	 <select name=under >
	 <option  value="" ></option>
	 
	 <%
	  while(rs.next())
	  {
	  %>
	  
	    <option  value="<%=rs.getString(1)%>" >
		<% out.println(rs.getString(1)); %>
		</option>
		
	<% } %>
	
	</select>
	
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Inventory Values are Effected
   </font>
  </td>
  <td>
   <select name="inventoryvalues">
   	<option>No</option>
    <option>Yes</option>
	
   </select>
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Name
	</font>
   </td>
   <td>
    <input type="text" name="name2">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Address
	</font>
   </td>
   <td>
    <textarea name="address"></textarea>
   </td>
  </tr>
  <tr>
   <td>
   <font color="#573801" face="verdana" size="2">
    State
   </font>
   </td>
   <td>
    <input type="text" name="state">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Pin Code
	</font>
    </td>
	<td>
	 <input type="text" name="pincode">
	</td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 PAN/IT No:
	</font>
   </td>
   <td>
    <input type="text" name="panoritno">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Sales Tax No:
	</font>
	
   </td>
   <td>
    <input type="text" name="salestaxno">
   </td>
   </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  Opening Balance
	 </font>
	 </td>
	 <td>
	  <input type="text" name="openingbalance">
	  <select name="type">
	   <option>Dr</option>
	   <option>Cr</option>
	  </select>
	 </td>
	</tr>
	<tr>
	 <td colspan="2" align="center">
	  <input type="image" src="images/submit.jpg">
	 </td>
	</tr>
	</form>
</table>

<% } %>


</body>
</html>
