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

	// JavaScript Document
	
function validations()
{
	with(document.form1){

		if(under.selectedIndex == 0) 
		{
			alert("Please Select Account!");			
			under.focus();
			return false;
		}	
		
		if(particular.selectedIndex == 0) 
		{
			alert("Please Select Particulars!");			
			particular.focus();
			return false;
		}	
		//var ph = /(^([0-9]*)$) | (^([0-9]*\.[0-9]*)$)/
		var ph1 = /(^([0-9]*\.[0-9]*)$)/
		var ph = /(^([0-9]*)$)/
		if (trim(amount.value) == ""){
			alert("Please Enter Balance");
			amount.focus();
			return false;
		} 
		
		else if( (!ph.test(trim(amount.value)))  )
		{
			alert("Please Enter valid  Balance");
			amount.focus();
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
var xmlHttp
var xmlHttp1

function showCustomer(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="receipt_db.jsp";
url=url+"?q="+str;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
}


function stateChanged() 
{ 
if (xmlHttp.readyState==4)
{ 
document.getElementById("txtHint").innerHTML=xmlHttp.responseText;
}
}

//////////////////////////
function showCustomer1(str)
{ 
xmlHttp1=GetXmlHttpObject();
if (xmlHttp1==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="receipt_db.jsp";
url=url+"?q="+str;
url=url+"&sid="+Math.random();
xmlHttp1.onreadystatechange=stateChanged1;
xmlHttp1.open("GET",url,true);
xmlHttp1.send(null);
}


function stateChanged1() 
{ 
if (xmlHttp1.readyState==4)
{ 
document.getElementById("txtHint1").innerHTML=xmlHttp1.responseText;
}
}

/////////////////////////////

function GetXmlHttpObject()
{
var xmlHttp=null;
try
  {
  // Firefox, Opera 8.0+, Safari
  xmlHttp=new XMLHttpRequest();
  }
catch (e)
  {
  // Internet Explorer
  try
    {
    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    }
  catch (e)
    {
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
return xmlHttp;
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

<% if(fn_check){ %>
<form action="account_operator.jsp" method="post">
<% } %>

<tr>
<td width="300"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="accounting_voucher_main.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>

 

 
 <table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana" size = "3" color="#573801">Receipt Details</font></strong>
</td>
</tr>

</table>
&nbsp;
<table>
<tr>
<td width="950"/>
<td>
	<a href="fn_ledger_create.jsp"  > <strong><font color="#573801" face="verdana" size="3">
   Ledger Creation
   </font></strong> </a>
</td>
</tr>
</table>



 <form action="voucher_receipt_submit.jsp" name="form1" onSubmit="return validations();">
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">

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
	%></td>
	<td></td>
 </tr>

 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
   Date
   </font></td> 
 <td>    <% String dt="select curdate()"; 
	  Statement dst=conn.createStatement();
		ResultSet drs = dst.executeQuery(dt);
		String dt1=null;
		while(drs.next())
		{
			dt1=drs.getString(1);
		}


	%>
 <input type="text" name="date1" value="<%out.println(dt1);%>">   </td>
 </tr>

 
 <tr>									
  <td>
   <font color="#573801" face="verdana" size="2">
    account
   </font>
   </td>
   <td>
    <%
	  String str="select ledgername from ledgersdata where  under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c'";
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery(str);
	 %>
	 <select name=under onChange="showCustomer(this.value);" >
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
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   <div id="txtHint"></div>
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
	  String str1="select ledgername from ledgersdata where ledgername!='Cash' ";
	  Statement stmt1=conn.createStatement();
	  ResultSet rs1=stmt1.executeQuery(str1);
	   %>
	 <select name=particular onChange="showCustomer1(this.value);" >
	 <option  value=<%=00%> ></option>
	 
	 <% while(rs1.next())
	  {
	    %>
	  
	    <option  value="<%=rs1.getString(1)%>" >
		<% out.println(rs1.getString(1)); %>
		</option>
		
	<% } %>
	
	</select>
   
  </td>
  </tr>
  
  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   <div id="txtHint1"></div>
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


<% } %>


 </BODY>
</HTML>
