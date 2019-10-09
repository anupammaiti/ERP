<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%--<%@ page import="voucher_reciept.jsp" %>--%>


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

<table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Balance Sheet </font></strong>
</td>
</tr>

</table>

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

<td width="600"></td>
<td>
<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(admin){ %>
<form action="account1_admin.jsp" method="post">
<% } %>

<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>

</tr>
</table>
<%@ include file="dummy.jsp" %>

 <% 
 	
 	
	String netpr = session.getAttribute("netpr").toString();
	double net_pr = Double.parseDouble(netpr);
	//out.println("pr: " +net_pr);
	
	String netls = session.getAttribute("netls").toString();
	double net_ls = Double.parseDouble(netls);
	//out.println("ls: " +net_ls);
	
	//String ss = session.getAttribute("ss").toString();
	//out.println("ls: " +ss);
	
 
  %>

 <% 
 		String sca = "select sum(balance) from current_assets where  under='CapitalAccount' "; //,ledgersdata where particulars=ledgername and under='CapitalAccount' ";
		ResultSet rca = st.executeQuery(sca);
		double ca = 0.0;
		while(rca.next())
		{
		
		ca = rca.getDouble(1);
		}
		//////////
		
		double crn_lia = 0.0;
		
		String scrnl = "select sum(balance) from current_assets where  under='SundryCreditors' "; //,ledgersdata where particulars=ledgername and under='CapitalAccount' ";
		ResultSet rcrnl = st.executeQuery(scrnl);
		
		while(rcrnl.next())
		{
		
		crn_lia = rcrnl.getDouble(1);
		
		}
		crn_lia = -crn_lia;
		
		////////////////
				
		double cra1 = 0.0;
		String scra="select sum(balance) from current_assets where ( under='BankAccounts') | (  under='Cash-in-hand' ) | (  under='SundryDebtors' ) | (  under='CurrentAssets' )";

		ResultSet rcra=st.executeQuery(scra);
	   
		while(rcra.next())
		{
			cra1 = rcra.getDouble(1);
		}
		
		////////////
		//String scra = "select sum(amount) from voucher_receipt,ledgersdata where particulars=ledgername and (under='CurrentAssets' | under='BankAccounts' | under='Cash-in-Hand' ) ";
		//ResultSet rcra = st.executeQuery(scra);
		
		//double cra1 = 0.0;
		
		//while(rcra.next())
		//{
		//cra1 = rcra.getDouble(1);
 		//}
		
		//////////////
		String scs = "select sum(balance) from closing_stock ";
		ResultSet rcs = st.executeQuery(scs);
		
		double cs1 = 0.0;
		
		while(rcs.next())
		{
		cs1 = rcs.getDouble(1);
 		}
		
		
		
		double cra = cra1 + cs1;
		
		//////////
		
		String sl = "select sum(balance) from current_assets where under='Loans(Liability)' "; //"select sum(amount) from voucher_receipt,ledgersdata where particulars=ledgername and under='Loans(Liability)' ";
		ResultSet rl = st.executeQuery(sl);
		
		double loans = 0.0;
		
		while(rl.next())
		{
		loans = rl.getDouble(1);
 		}
		
		
		
		
		
 
  %>
 
<% 

	double tot_lia = 0.0;
	double tot_ass = 0.0;
	
	tot_lia = ca + loans + net_pr + crn_lia;
	tot_ass = cra +net_ls ;
	
	
	
 %>


<table width="800" align="center" height="300"  >

<tr>

<td>
	<table width="800" height="300"  border="1"  bgcolor="#FADFC3" bordercolor="#F0B269" >
	<tr>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif"> </font></strong></td> <td width="350"><strong> <font   face="Times New Roman, Times, serif"> Liabilities</font></strong></td></tr></table></td>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif"></font></strong></td> <td width="350"><strong> <font   face="Times New Roman, Times, serif"> Assets</font></strong></td></tr></table></td>
	</tr>
	<tr>
	<td>
		<table width="400"  border="0" height="300" bgcolor="#FADFC3" bordercolor="#F0B269" cellpadding="0"  cellspacing="0">	
			<tr ><td witdh="250"><a href="capital_account.jsp"><strong> <font   face="Times New Roman, Times, serif">Capital&nbsp;Account</font></strong></a></td> <td align="right" width="300">
			<% out.print(ca); %>
				
			</td></tr> 
			<tr ><td witdh="250"><a href="loans_liability.jsp"><strong> <font   face="Times New Roman, Times, serif">Loans&nbsp;(Liability)</font></strong></a></td> <td align="right" width="300">
			<%
				
				out.print(loans);
			%>
			</td></tr>
			
			
			<tr ><td witdh="250"><a href="current_liabilities.jsp"><strong> <font   face="Times New Roman, Times, serif">Current&nbsp;Liabilities</font></strong></a></td> <td align="right" width="300">
				<%	
					
					out.print(crn_lia);
				%>
			</td></tr>
			
			<% 
			if(net_pr!=0)
			{ 
			%>
			
			<tr ><td witdh="250"><a href="Profit&Loss_main.jsp"><strong> <font   face="Times New Roman, Times, serif">Profit&nbsp;&&nbsp;Loss&nbsp;A/c</font></strong></a></td> <td align="right" width="300">
				<%	
					
					out.print(df.format(net_pr));
				%>
			</td></tr>
			<% 
			}
			 %>
			
			
			
			
			<tr ><td  height="100"></td> </tr> 
			
			
			
			
			
			
			
			
		</table>
	</td>
	<td>
		<table width="400" border="0" height="300" bgcolor="#FADFC3" bordercolor="#F0B269" cellpadding="0" cellspacing="0" >
			<tr ><td witdh="250"><a href="current_assets.jsp"><strong> <font   face="Times New Roman, Times, serif">Current&nbsp;Assets</font></strong></a></td> <td align="right" width="300">
			<%
				
				out.print(cra);
			%></td>
			</tr>
			
			
			<% 
			if(net_ls!=0)
			{ 
			%>
			
			<tr ><td witdh="250"><a href="Profit&Loss_main.jsp"><strong> <font   face="Times New Roman, Times, serif">Profit&nbsp;&&nbsp;Loss&nbsp;A/c</font></strong></a></td> <td align="right" width="300">
				<%	
					
					out.print(df.format(net_ls));
				%>
			</td></tr>
			<% 
			}
			 %>
			
			<tr ><td  height="100"></td> </tr> 
			<tr ><td  height="100"></td> </tr> 
			
			
			 
		</table>
	</td>
	</tr>
	
	
	
	<tr>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">Total</font></strong></td> <td width="350" align="right"><strong> <font   face="Times New Roman, Times, serif"> <% out.println(tot_lia); %></font></strong></td></tr></table></td>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">Total</font></strong></td>  <td width="350" align="right"><strong> <font   face="Times New Roman, Times, serif"> <% out.println(tot_ass); %></font></strong></td></tr></table></td>
	</tr>
	
	
	</table>
	
	
			

</td>
</tr>
</table>






<% } %>



 </BODY>
</HTML>
