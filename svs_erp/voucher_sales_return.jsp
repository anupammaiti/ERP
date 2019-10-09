<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   Statement st = conn.createStatement();
   %>
<HTML>
 <HEAD>
  <title>SVS</title>


<script type="text/javascript">


///////////////////

function validations()
{
	with(document.form1){

		if(acname.selectedIndex == 0) 
		{
			alert("Please Select Party A/c !");			
			acname.focus();
			return false;
		}	
		
		if(nameofitem.selectedIndex == 0) 
		{
			alert("Please Select Name Of Item!");			
			nameofitem.focus();
			return false;
		}	
						
		
		//var q = /(^([0-9]*\.[0-9]*)$)/
		var q = /(^([0-9]*)$)/
		if (trim(qty.value) == ""){
			alert("Please Enter Quantity");
			qty.focus();
			return false;
		} 
		
		else if( (!q.test(trim(qty.value)))  )
		{
			alert("Please Enter valid  Quantity");
			qty.select();
			qty.focus();
			return false;
		}
		
		
		
		if(units.selectedIndex == 0) 
		{
			alert("Please Select Units !");			
			units.focus();
			return false;
		}	
		
		var r = /(^([0-9]*)$)/
		if (trim(rate.value) == ""){
			alert("Please Enter Rate");
			rate.focus();
			return false;
		} 
		
		else if( (!r.test(trim(rate.value)))  )
		{
			alert("Please Enter valid Rate");
			rate.select();
			rate.focus();
			return false;
		}
		
		
	}//with close
}//validations close
//////////////

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



	
		

////////////////////////////

	// JavaScript Document
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


function f()
{
var x=document.getElementById("iqty").value;
var y=document.getElementById("irate").value;
var z=x*y;
//document.getElementById("fname").value=x.toUpperCase();
document.getElementById("iamount").value=z;
}


	function qtyf()
	{
		var h=document.getElementById("qt").value;
		var q=document.getElementById("iqty").value;
		if(q>h)
		{
			//qty.focus();
			alert(" Please select Below or Equal to : "+h);
		}		
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
 <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Sales Returns Details</font></strong>
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


<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 
 <form action="voucher_sales_return_submit.jsp"   name="form1" onSubmit="return validations();">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">

	
  <%
	
	  String str2="select no from voucher_sales ";
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
 <td><font color="#573801" face="verdana" size="2">
    Ref:
   </font></td>
 <td> <input type="text" name="ref"> </td>
 </tr>

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
    Party's A/c Name
   </font>
   </td>
   <td>
    <%
	  String str="select ledgername from ledgersdata where under='CurrentAsset' or under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c' or under='SundryCreditors' or under='SundryDebtors' ";
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery(str);
	 %>
	 
	 <select name=acname onChange="showCustomer(this.value);" >
	 <option  value=<%=00%> ></option>
	 
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
   Sales Ledger
   </font>
  </td>
  <td>

   <%
	  String str1="select ledgername from ledgersdata where under='salesAccounts' ";
	  Statement stmt1=conn.createStatement();
	  ResultSet rs1=stmt1.executeQuery(str1);
	  out.println("<select name=pur_ledg>");
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
  Name of Item</font>
  </td>
	<td>

   <%
	  String sstr1="select name from stockitems  ";
	  Statement sstmt1=conn.createStatement();
	  ResultSet srs1=sstmt1.executeQuery(sstr1);
	  %>
	  
	  <select name=nameofitem  >
	 <option  value=<%=00%> ></option>
	 
	 <%
	  while(srs1.next())
	  {
	  %>
	  
	    <option  value="<%=srs1.getString(1)%>" >
		<% out.println(srs1.getString(1)); %>
		</option>
		
	<% } %>
	
	</select>
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   
   
    <% 
   		String qts="select sum(quantity) from voucher_sales" ;
		ResultSet qtrs = st.executeQuery(qts);
		qtrs.next();
		int qt = qtrs.getInt(1);
		
  %>
  <input type="hidden"  name="qt"  id="qt" value="<% out.println(qtrs.getInt(1)); %>" />
  
   <td>
    <input type="text" name="qty" id="iqty" onBlur="qtyf();" >
   </td>
  </tr>


  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Units
   </font>
  </td>
  <td >

  <%
	  String sstr12="select symbol from unitsofmeasure  ";
	  Statement sstmt12=conn.createStatement();
	  ResultSet srs12=sstmt12.executeQuery(sstr12);
	 %>
	 <select name=units  >
        <option  value=<%=00%> ></option>
        <% while(srs12.next())
	  {
	    %>
        <option  value="<%=srs12.getString(1)%>" >
        <% out.println(srs12.getString(1)); %>
        </option>
        <% } %>
      </select>
   
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
