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
	String s1=request.getParameter("ref");
	//out.println(s1);
	String dt1=request.getParameter("date1");
	//out.println(dt1);
	String s2=request.getParameter("acname");
	//out.println(s2);
	String s3=request.getParameter("pur_ledg");
	//out.println(s3);
	String s4=request.getParameter("nameofitem");
	out.println(s4);
	String s5=request.getParameter("qty");
	//out.println(s5);
	String s6=request.getParameter("rate");
	//out.println(s6);
	String s7=request.getParameter("units");
	//out.println(s7);
	String s8=request.getParameter("amount");
	//out.println(s8);
	String s9=request.getParameter("narration");
	//out.println(s9);
	
	Integer ii=Integer.parseInt(s5);
	//out.println("i1 : "+ ii);

	Double d1 = Double.parseDouble(s6);
	//out.println("d1 : "+ d1);

	Double d2 = Double.parseDouble(s8);
	//out.println("d2 : "+ d2);


	Statement st=con.createStatement();

	String q1="insert into voucher_purchase (refno,v_date,vouchertype,partyaccname,purchaseledger,nameofitem,quantity,rate,units,amount,narration) values('"+s1+"','"+dt1+"','Purchase','"+s2+"','"+s3+"','"+s4+"',"+ii+","+d1+",'"+s7+"',"+d2+",'"+s9+"')";

	
	int k=st.executeUpdate(q1);
	
	

	//////

	String stq="select * from closing_stock";
	ResultSet strs1=st.executeQuery(stq);
	boolean flag2=false;
	while(strs1.next())
	{
		if(s4.equals(strs1.getString(1)))
			flag2=true;
	}

	if(flag2)
	{
		String stqq1= "select * from closing_stock where stock_item = '"+s4+"'";
		ResultSet rsqq1= st.executeQuery(stqq1);
		
		
		String cstock=null;
		int cqty=0;
		String cunits=null;
		double crate=0.0;
		double cbalance=0.0;
		
		double calrate;
		
		while(rsqq1.next())
		{
			cstock=rsqq1.getString(1);
			cqty=rsqq1.getInt(2);
			cstock=rsqq1.getString(3);
			crate=rsqq1.getDouble(4);
			cbalance=rsqq1.getDouble(5);
		}

		cqty=cqty+ii;
		//cbalance=cbalance+d2;
		crate=crate+d1;
		//calrate=cbalance/cqty;
		
		String pstqq1= "select sum(quantity),sum(amount) from voucher_purchase where nameofitem = '"+s4+"'";
		Statement st1 = con.createStatement();
		ResultSet prsqq1= st1.executeQuery(pstqq1);
		int pqty = 0;
		double pbalance = 0.0;
		while(prsqq1.next())
		{
			
			pqty=prsqq1.getInt(1);
			pbalance=prsqq1.getDouble(2);
		}
		calrate =  pbalance / pqty;
		cbalance =  cqty * calrate;
		
		
		
		String stq2="update closing_stock set qty="+cqty+", rate="+calrate+", balance="+cbalance+" where stock_item= '"+s4+"' ";
		int sti2=st.executeUpdate(stq2);

	}
	else
	{

		String stq1= "insert into closing_stock values('"+s4+"',"+ii+",'"+s7+"',"+d1+", "+d2+")";
		int sti= st.executeUpdate(stq1);
	}

	



	///////

	

	
String qq1="select * from current_assets where ledgername='"+s2+"' ";

	ResultSet rs1 = st.executeQuery(qq1);
	double asset=0.0;
	while(rs1.next())
	{
		asset=rs1.getDouble(2);
	}
	
	asset=asset-d2;

	//out.println("asset"+asset);

	String uq1="update current_assets set balance="+asset+" where ledgername='"+s2+"' ";
	int i1=st.executeUpdate(uq1);

	
	

	//////

	String qq="select * from current_assets  ";
	boolean flag1=false;

	ResultSet rs = st.executeQuery(qq);
	while(rs.next())
	{
		
		if(s3.equals(rs.getString(1)))
		flag1=true;
	}
	
	//out.println(flag1);


	int j1=0;
	int j2=0;

	////////////////
	String ld2="select under from ledgersdata where ledgername='"+s3+"' ";

	ResultSet rld2 = st.executeQuery(ld2);
	String und2=null;
	rld2.next();
	und2 = rld2.getString(1);
	
	////////////
	
	
	if(flag1)
	{
		

String qq2="select * from current_assets where ledgername='"+s3+"' ";

	ResultSet rs2 = st.executeQuery(qq2);
	String lname1=null;
	double asset2=0.0;
	while(rs2.next())
	{
		lname1=rs2.getString(1);
		asset2=rs2.getDouble(2);
	}
	
	asset2=asset2+ d2;
	//out.println("lname1"+lname1);
	//out.println("asset2"+asset2);
String uq2="update current_assets set balance="+asset2+" where ledgername='"+s3+"' ";
	 j1=st.executeUpdate(uq2);

	

	} //if
	else
	{
String iq2="insert into current_assets values('"+s3+"', "+d2+",'"+und2+"')";
		j2=st.executeUpdate(iq2);
		
	}


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
