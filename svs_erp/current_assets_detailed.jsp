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
  <script type="text/javascript">
  	function f1()
	{
		var s=document.getElementById("id1").value;
		var v=2;
		
	}
		
		
  
  </script>
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
<td width="300"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="current_assets.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>

 

 
 <table align="center"    >
   <tr>
     <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Current Assets </font></strong> </td>
   </tr>
 </table>
 <p></p>
 
 <% String a=request.getParameter("hid1"); 
 			//out.println("  "+a); 
		String ps="select * from voucher_purchase where nameofitem='"+a+"' ";
		

		ResultSet prs=st.executeQuery(ps);
		 int i=0;
		
	
 %>



 
 
<table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
<tr>
<td>
 <strong><font   face="Times New Roman, Times, serif">Paricular  : <% out.println("  "+a); %></font></strong>
 
</td>
</tr>
</table>
 
 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <strong><font   face="Times New Roman, Times, serif">Voucher No.</font></strong></td>
		<td align="center" width="160"> <strong><font   face="Times New Roman, Times, serif">Voucher Type</font></strong></td>
		<td align="center" width="160"> <strong><font   face="Times New Roman, Times, serif">Date</font></strong></td>
		<td align="center" width="160"> <strong><font   face="Times New Roman, Times, serif">Particulars</font></strong></td>
		<td align="center" width="160"> <strong><font   face="Times New Roman, Times, serif">Debit    </font></strong></td>
		<td align="center" width="160"> <strong><font   face="Times New Roman, Times, serif">Credit</font></strong></td>
		</tr>
 </table>
 
 <% 
 	double dr_tot = 0.0;
	double cr_tot = 0.0;
 
  %>
  
 <% 
 	String test=null; 
	boolean flag=false;
	
	%>
 <% if(a.equals("Cash-in-hand"))
 
{ //out.println("cach");
	test="Cash";
	flag=true;
	}
	
  %>
  
  
  
  
   <% 
   	int b=0;
   if(a.equals("BankAccounts"))
 
{ 	//out.println("cach");//test="BankAccounts";//flag=true;

	b=1;
	
	%>
	<% /////////////////////// contra%>
  
  <% 
 	
  String sc = "select v.* from voucher_contra v , ledgersdata l where (l.ledgername=v.particulars and l.under='"+a+"') | (l.ledgername=v.account and l.under='"+a+"') ";   //"select * from voucher_contra where (particulars='"+test+"') | (account= '"+test+"') ";
  ResultSet crs = st.executeQuery(sc);
  while(crs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(crs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(crs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(crs.getString(2)); %></td>
		<td align="center" width="160"> <% out.println(crs.getString(5)); %></td>
		<td align="right" width="160"> <%  out.println(crs.getDouble(6)); dr_tot = dr_tot + crs.getDouble(6);  %></td>
		<td align="right" width="160"> <% out.println("");%>   </td>
		</tr>
		
		<% } %>
 </table>
 
 
<% //////////////////////////////// purchase%>
 
 <% 
 	
  String sp = "select v.* from voucher_purchase v , ledgersdata l where l.ledgername=v.partyaccname and l.under='"+a+"' ";   //"select * from voucher_purchase where partyaccname='"+test+"' ";
  ResultSet sprs = st.executeQuery(sp);
  while(sprs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(sprs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(sprs.getString(4)); %></td>
		<td align="center" width="160"> <% out.println(sprs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(sprs.getString(6)); %><</td>
		<td align="right" width="160"> <% out.println(""); %>   </td>
		<td align="right" width="160"> <% out.println(sprs.getDouble(11)); cr_tot = cr_tot + sprs.getDouble(11);  %></td>
		</tr>
		
		<% } %>
 </table>
 <% ////////////////////////////////sales%>
 
 <% 
 	
  String ss = "select v.* from voucher_sales v , ledgersdata l where l.ledgername=v.partyaccname and l.under='"+a+"' ";   //"select * from voucher_sales where partyaccname='"+test+"' ";
  ResultSet ssrs = st.executeQuery(ss);
  while(ssrs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(ssrs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(ssrs.getString(4)); %>></td>
		<td align="center" width="160"> <% out.println(ssrs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(ssrs.getString(6)); %></td>
		<td align="right" width="160"> <% out.println(ssrs.getDouble(11)); dr_tot = dr_tot + ssrs.getDouble(11); %>   </td>
		<td align="right" width="160"> <% out.println("");  %></td>
		</tr>
		
		<% } %>
 </table>
 
 

   <% } %>
   
   
   
<%    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// %> 


  
  
  <% if(b==0)
  {
 	
	%>
	
	<% /////////////////////// receipt%>
	
<%	

  String sr = "select v.* from voucher_receipt v , ledgersdata l where l.ledgername=v.account and l.under='"+a+"' ";  //"select * from voucher_receipt where account='"+test+"' ";
  
  ResultSet rrs = st.executeQuery(sr);
  while(rrs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(rrs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(rrs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(rrs.getString(2)); %></td>
		<td align="center" width="160"> <% out.println(rrs.getString(5)); %></td>
		<td align="right" width="160"> <% out.println(rrs.getDouble(6)); dr_tot = dr_tot + rrs.getDouble(6); %>  </td>
		<td align="right" width="160"> <% out.println("");  %></td>
		</tr>
		
		<% } %>
 </table>
 
 <% /////////////////////// receipt for sundryDebtors%>
  
  <% 
 	if(a.equals("SundryDebtors"))
	{
  String srd = "select v.* from voucher_receipt v , ledgersdata l where l.ledgername=v.particulars and l.under='SundryDebtors' ";
  
  ResultSet rdrs = st.executeQuery(srd);
  while(rdrs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(rdrs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(rdrs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(rdrs.getString(2)); %></td>
		<td align="center" width="160"> <% out.println(rdrs.getString(5)); %></td>
		<td align="right" width="160"> <% out.println("");  %></font></strong></td>
		<td align="right" width="160"> <% out.println(rdrs.getDouble(6)); cr_tot = cr_tot + rdrs.getDouble(6); %>   </td>
		
		</tr>
		
		<% } %>
 </table>
 
 
 <% } %>
 
 <% /////////////////////// contra%>
  
  <% 
 	
  String sc = "select v.* from voucher_contra v , ledgersdata l where (l.ledgername=v.particulars and l.under='"+a+"') | (l.ledgername=v.account and l.under='"+a+"') ";   //"select * from voucher_contra where (particulars='"+test+"') | (account= '"+test+"') ";
  ResultSet crs = st.executeQuery(sc);
  while(crs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(crs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(crs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(crs.getString(2)); %></td>
		<td align="center" width="160"> <% out.println(crs.getString(5)); %></td>
		<td align="right" width="160"> <% out.println("");%>   </td>
		<td align="right" width="160"> <%  out.println(crs.getDouble(6)); cr_tot = cr_tot + crs.getDouble(6);  %></td>
		</tr>
		
		<% } %>
 </table>
 
 
 
 
 <% /////////////////////// payment%>
  
  <% 
 	
  String spy = "select v.* from voucher_payment v , ledgersdata l where l.ledgername=v.account and l.under='"+a+"' ";   //"select * from voucher_payment where account='"+test+"' ";
  ResultSet pyrs = st.executeQuery(spy);
  while(pyrs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(pyrs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(pyrs.getString(3)); %>></td>
		<td align="center" width="160"> <% out.println(pyrs.getString(2)); %>></td>
		<td align="center" width="160"> <% out.println(pyrs.getString(5)); %></td>
		<td align="right" width="160"> <% out.println(""); %>   </font></strong></td>
		<td align="right" width="160"> <% out.println(pyrs.getDouble(6)); cr_tot = cr_tot + pyrs.getDouble(6);  %></td>
		</tr>
		
		<% } %>
 </table>
 
 
 
 
 <% //////////////////////////////// purchase%>
 
 <% 
 	
  String sp = "select v.* from voucher_purchase v , ledgersdata l where l.ledgername=v.partyaccname and l.under='"+a+"' ";   //"select * from voucher_purchase where partyaccname='"+test+"' ";
  ResultSet sprs = st.executeQuery(sp);
  while(sprs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(sprs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(sprs.getString(4)); %></td>
		<td align="center" width="160"> <% out.println(sprs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(sprs.getString(6)); %></td>
		<td align="right" width="160"> <% out.println(""); %>   </td>
		<td align="right" width="160"> <% out.println(sprs.getDouble(11)); cr_tot = cr_tot + sprs.getDouble(11);  %></td>
		</tr>
		
		<% } %>
 </table>
 <% ////////////////////////////////sales%>
 
 <% 
 	
  String ss = "select v.* from voucher_sales v , ledgersdata l where l.ledgername=v.partyaccname and l.under='"+a+"' ";   //"select * from voucher_sales where partyaccname='"+test+"' ";
  ResultSet ssrs = st.executeQuery(ss);
  while(ssrs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(ssrs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(ssrs.getString(4)); %></td>
		<td align="center" width="160"> <% out.println(ssrs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(ssrs.getString(6)); %></td>
		<td align="right" width="160"> <% out.println(ssrs.getDouble(11)); dr_tot = dr_tot + ssrs.getDouble(11); %>   </td>
		<td align="right" width="160"> <% out.println("");  %></td>
		</tr>
		
		<% } %>
 </table>
 
 
 <% ////////////////////////////////journal%>
 
 <% 
 	if(a.equals("SundryDebtors"))
	{
  String sj = "select v.* from voucher_journal v , ledgersdata l where l.ledgername=v.by_parti and l.under='IndirectExpenses' ";   //"select * from voucher_sales where partyaccname='"+test+"' ";
  ResultSet sjrs = st.executeQuery(sj);
  while(sjrs.next())
  {
  
  %>
  
  <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="160"> <% out.println(sjrs.getInt(1)); %></td>
		<td align="center" width="160"> <% out.println(sjrs.getString(3)); %></td>
		<td align="center" width="160"> <% out.println(sjrs.getString(2)); %></td>
		<td align="center" width="160"> <% out.println(sjrs.getString(4)); %></td>
		<td align="right" width="160"> <% out.println("");  %></font></strong></td>
		<td align="right" width="160"> <% out.println(sjrs.getDouble(11)); cr_tot = cr_tot + sjrs.getDouble(11); %>   </td>
		
		</tr>
		
		<% } %>
 </table>
 
 <% } %>
 
 
 
 
 
 
 <% ///////////////////////// %>
 
 
 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="750"> <strong><font   face="Times New Roman, Times, serif">Totals   </font></strong></td>
		<td align="right" width="160"> <strong><font   face="Times New Roman, Times, serif"><% out.println(dr_tot);  %></font></strong></td>
		<td align="right" width="160"> <strong><font   face="Times New Roman, Times, serif"><% out.println(cr_tot);  %></font></strong></td>
		</tr>

 </table>
 
 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td></td>
	</tr>
	<tr>
		<td></td>
	</tr>
	</table>
 
 <% }/////////if(b==0) close %>
 
 <% if(dr_tot > cr_tot)
 	{
	
 	double net_tot = dr_tot-cr_tot;
	
  %>
 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="700"> <strong><font   face="Times New Roman, Times, serif">Closing  Balance </font></strong></td>
		<td align="right" width="160"> <strong><font   face="Times New Roman, Times, serif"><% out.println(net_tot);  %></font></strong></td>
		<td align="right" width="160"> <strong><font   face="Times New Roman, Times, serif"><% out.println("");  %></font></strong></td>
   </tr>
				
 </table>
		<% }
		
		else
		{
			double net_tot = cr_tot-dr_tot;
	
 
		
		 %>
		 
		 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="700"> <strong><font   face="Times New Roman, Times, serif">Closing  Balance </font></strong></td>
		<td align="right" width="160"> <strong><font   face="Times New Roman, Times, serif"><% out.println("");  %></font></strong></td>
		<td align="right" width="160"> <strong><font   face="Times New Roman, Times, serif"><% out.println(net_tot);  %></font></strong></td>
   </tr>
				
 </table>
		<% } %>
	
 <% ////////////////////////////////////////////////////////////////////////////////////////////////////// %>
 
 
 
 <p>&nbsp;</p>
 

<% } %>


 </BODY>
</HTML>
