<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   Statement st=conn.createStatement();
   %>
<HTML>

 <HEAD>
<title>SVS</title>
  
  
  <script type="text/javascript">
  
  	
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
		
		else if( (!ph1.test(trim(amount.value)))  )
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


function f()
{
var x=document.getElementById("iqty").value;
var y=document.getElementById("irate").value;
var z=x*y;
//document.getElementById("fname").value=x.toUpperCase();
document.getElementById("iamount").value=z;
}


function f1()
{
var x1=document.getElementById("iamount").value;
//var y=document.getElementById("irate").value;
//var z=x*y;
//document.getElementById("fname").value=x.toUpperCase();
document.getElementById("toamount").value=x1;
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
 <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Journal Details</font></strong>
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
 
 
 <form action="voucher_journal_submit.jsp"  name="form1" onSubmit="return validations();">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">

	
  <%
	
	  String str2="select no from voucher_purchase ";
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
    Particulars &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        By
   </font>
   </td>
   <td>
    <%
	  String str="select ledgername from ledgersdata where  ledgername!='Cash' and under!='BankAccounts' and under!='BankOCC-A/c' and under!='BankOD-A/c'";
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery(str);
	  out.println("<select name=by_under>");
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
   000
  </td>
 </tr>

  
  
  <tr>
  <td> 
  <font color="#573801" face="verdana" size="2">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name of Item</font>
  </td>
	<td>

   <%
	  String sstr1="select name from stockitems  ";
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
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity
	</font>
   </td>
   <td>
    <input type="text" name="qty" id="iqty">
   </td>
  </tr>


  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Units
   </font>
  </td>
  <td >

  <%
	  String sstr12="select symbol from unitsofmeasure  ";
	  Statement sstmt12=conn.createStatement();
	  ResultSet srs12=sstmt12.executeQuery(sstr12);
	  out.println("<select name=units>");
	  while(srs12.next())
	  {
	    out.println("<option>");
		out.println(srs12.getString(1));
		out.println("</option>");
	  }
	%>
   
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rate(Rupees)
   </font>
  </td>
  <td>
   <input type="text" name="rate" id="irate" onBlur="f();">
  </td>
 </tr>

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount
   </font>
  </td>
  <td >
   <input type="text" name="amount" id="iamount"> 
   Dr 
  </td>
 </tr>
  
  
  <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Particulars &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        To
   </font>
   </td>
   <td>
    <%
	  String str1="select ledgername from ledgersdata where  ledgername!='Cash' and under!='BankAccounts' and under!='BankOCC-A/c' and under!='BankOD-A/c'";
	  Statement stmt1=conn.createStatement();
	  ResultSet rs1=stmt1.executeQuery(str1);
	  out.println("<select name=to_under>");
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
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount
	</font>
   </td>
   <td>
    <input type="text" name="to_amount" id="toamount" onFocus="f1();"> 
    Cr 
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
 <center>
<input type="image" src="images/submit.jpg">
</center>

</form>


<% } %>



 </BODY>
</HTML>
