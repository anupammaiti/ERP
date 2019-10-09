<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<HTML>
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
	<strong> <font color = "#573801" size = "3" face = "verdana"> Welcome To Finance Department</font></strong>
 </td>
 </tr>
 </table>


<p>&nbsp;</p>
 

 <%
	String s1=request.getParameter("under");
	//out.println(s1);
	String s2=request.getParameter("particular");
	//out.println(s2);
	String s3=request.getParameter("amount");
	//out.println(s3);
	String s4=request.getParameter("narration");
	//out.println(s4);
	String d1=request.getParameter("date1");
	//out.println(d1);

	Double d = Double.parseDouble(s3);
	//out.println("d : "+ d);

	Statement st=con.createStatement();

	String q1="insert into voucher_contra (v_date,vouchertype,account,particulars,amount,narration)	values ('"+d1+"','Contra' , '"+s1+"','"+s2+"',"+s3+" ,'"+s4+"')";
	
	int k=st.executeUpdate(q1);
	
	


String sq1= "select balance from current_assets where ledgername='"+s1+"' ";
	ResultSet brs1= st.executeQuery(sq1);
	double b1=0.0;
	while(brs1.next())
	{
		b1=brs1.getDouble(1);
	}
	//out.println("b1 : "+b1 );

	
String sq2= "select balance from current_assets where ledgername='"+s2+"' ";
	ResultSet brs2= st.executeQuery(sq2);
	double b2=0.0;
	while(brs2.next())
	{
		b2=brs2.getDouble(1);
	}
	//out.println(" b2: "+ b2);

	double b3=0.0;
	b1=b1+d;
	b2=b2-d;
	//out.println("b1 : "+b1 );
	//out.println(" b2: "+ b2);


String qq="select * from current_assets  ";
	boolean flag=false;

	ResultSet rs = st.executeQuery(qq);
	while(rs.next())
	{
		if(s1.equals(rs.getString(1)))
		flag=true;

		
	}	


	////////////
	
	String ld1="select under from ledgersdata where ledgername='"+s1+"' ";

	ResultSet rld1 = st.executeQuery(ld1);
	String und1=null;
	rld1.next();
	und1 = rld1.getString(1);
	
	
	/////////////////
	
	
	if(flag)
	{

	String uq1="update current_assets set balance="+b1+" where ledgername='"+s1+"' ";
	 int i1=st.executeUpdate(uq1);
	}
	else
	{
		String iq1="insert into current_assets values('"+s1+"', "+d+" , '"+und1+"')";
		int i2=st.executeUpdate(iq1);
	}





	String uq2="update current_assets set balance="+b2+" where ledgername='"+s2+"' ";
	 int j1=st.executeUpdate(uq2);


	


	%>

<center>

<strong> <font color = "#573801" size = "3" face = "verdana">Successfully Inserted</font></strong>
</center>
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



<% } %>
 </BODY>
</HTML>
