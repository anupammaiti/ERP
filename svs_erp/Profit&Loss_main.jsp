<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   Statement st=con.createStatement();
   %>
   
<HTML>
 <HEAD>
 
  <title>SVS</title>
  
  <script type="text/javascript">

  function f()
  {
	  window.history.go(-1);
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

<table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Profit & Loss A/C  Details</font></strong>
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
<input align ="right" type="image" src="images/back.jpg" onClick="f();"/>

</td>

</tr>
</table>

 

 <%
					String t = "gfsd";
					double dr_gr_tot=0.0;
					double open_stk_b=0.0;
					
					DecimalFormat df = new DecimalFormat("#.##");
					
					////
					
					
					String ps=" select sum(balance) from current_assets where  under='PurchaseAccounts'  ";
				ResultSet prs=st.executeQuery(ps);
				prs.next();
				
				double purchase_b=prs.getDouble(1);
				
				
				
				/////
				
				String dpys=" select sum(balance) from current_assets where  under='DirectExpenses' ";
				ResultSet dpyrs=st.executeQuery(dpys);
				dpyrs.next();
				
				double dir_exp_b=0.0;
				
				dir_exp_b = dpyrs.getDouble(1);
				////
				
				String pys=" select sum(balance) from current_assets where under='IndirectExpenses' ";
				ResultSet pyrs=st.executeQuery(pys);
				pyrs.next();
				
				double indir_exp_b=0;
				indir_exp_b = pyrs.getDouble(1);
				
				//String pys1=" select particulars from voucher_payment ,ledgersdata where ledgername=particulars and under='IndirectExpenses' ";
				//ResultSet pyrs1=st.executeQuery(pys1);
				//while(pyrs1.next())
				//{
					//out.println(pyrs1.getString(1));
				//session.setAttribute("parti",pyrs1.getString(1));
				//}
				
				
				/////
				
				
				String ss=" select sum(balance) from current_assets where  under='SalesAccounts'  ";
				ResultSet srs=st.executeQuery(ss);
				srs.next();
				
				double sales_b = 0;
				sales_b = srs.getDouble(1);
				
				
				/////
				
				
				String sdin=" select sum(balance) from current_assets where  under='DirectIncomes'  ";
				ResultSet sdinrs=st.executeQuery(sdin);
				sdinrs.next();
				
				double dir_income_b=0.0;
				dir_income_b = sdinrs.getDouble(1);
				
				////
				
				
				
				
				
				String sindin=" select sum(balance) from current_assets where  under='IndirectIncomes'  ";
				ResultSet sindinrs=st.executeQuery(sindin);
				sindinrs.next();
				
				double indir_income_b=0.0;
				indir_income_b = sindinrs.getDouble(1);
				
				
				/////
				
				String cs=" select sum(balance) from closing_stock";
				ResultSet crs=st.executeQuery(cs);
				crs.next();
				
				double cl_stk_b=0;
				cl_stk_b = crs.getDouble(1);
				
				////
				
				
					dr_gr_tot = purchase_b + dir_exp_b + open_stk_b;
					
					double cr_grs_tot = 0.0;
					
					cr_grs_tot = sales_b + dir_income_b + cl_stk_b  ;
					
					double tot = 0.0;
					
					double gross_prf_b = 0.00;
					double gross_prf_c = 0.00;
				
				if( dr_gr_tot < cr_grs_tot)
				{
					gross_prf_c = cr_grs_tot - dr_gr_tot ;
					t = "dr";
					tot = cr_grs_tot;
				}
				else
				{
					gross_prf_b = dr_gr_tot - cr_grs_tot ;
					t = "cr"; 
					tot = dr_gr_tot;
				}
				//out.println("greater :" + t);
				
				///////
				
				double net_loss = 0.0;
				double net_profit = 0.0;
				double net_tot = 0.0;
				double dr_net = 0.0;
				double cr_net = 0.0;
				
				dr_net =  indir_exp_b + gross_prf_b;
				cr_net = gross_prf_c + indir_income_b;
				
				session.setAttribute("netpr" , net_profit);
				session.setAttribute("netls" , net_loss);
				String net = null;
				if(dr_net < cr_net)
				{
					net_profit = cr_net - dr_net;
					net_tot = cr_net;
					net="pr";
					session.setAttribute("netpr" , net_profit);
					//out.println(net_profit);
				}
				else
				{
					net_loss = dr_net - cr_net;
					net_tot = dr_net;
					net="ls";
					session.setAttribute("netls" , net_loss);
					//out.println(net_loss);
					
				}
				
				 
				
				
				
				
				
				
				
				
				
				
%>
 



<table width="800"   align="center" >

<tr>

<td>
	<table width="800" align="center" height="400"  border="1"  bgcolor="#FADFC3" bordercolor="#F0B269" >
	<tr>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">DR </font></strong></td> <td width="350"><strong> <font   face="Times New Roman, Times, serif"> Particulars</font></strong></td></tr></table></td>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">CR </font></strong></td> <td width="350"><strong> <font   face="Times New Roman, Times, serif"> Particulars</font></strong></td></tr></table></td>
	</tr>
	<tr>
	<td>
		<table width="400"  border="0" height="397" bgcolor="#FADFC3" bordercolor="#F0B269" cellpadding="0"  cellspacing="0">	
			<tr ><td witdh="250"><a href="#"><strong> <font   face="Times New Roman, Times, serif">Opening Stock</font></strong></a></td> <td align="right" width="300">
			<% out.print(open_stk_b); %>
				
			</td></tr> 
			<tr ><td witdh="250"><a href="purchase_accounts.jsp"><strong> <font   face="Times New Roman, Times, serif">Purchase&nbsp;Accounts</font></strong></a></td> <td align="right" width="300">
			<%
				
				out.print(purchase_b);
			%>
			</td></tr>
			
			
			<tr >
			  <td witdh="250"><a href="direct_expenses.jsp"><strong> <font   face="Times New Roman, Times, serif">Direct&nbsp;Expenses</font></strong></a></td> 
			  <td align="right" width="300">
				<%	
					
					out.print(dir_exp_b);
				%>
			</td></tr>
			<% 
				if(t.equals("dr"))
				{
			 %>
			<tr ><td witdh="250"><strong> <font  color="#4B5BEF" face="Times New Roman, Times, serif">Gross&nbsp;Profit&nbsp;c/o</font></strong></td> <td align="right" width="300"><font  color="#4B5BEF">
				<%
					
					
					out.print(df.format(gross_prf_c));
				%></font>
			</td></tr>
			<% } %>
			
			<tr ><td witdh="250"><strong> <font   face="Times New Roman, Times, serif"> </font></strong></td> <td align="right" width="300">
			<%
				
				out.print("---------------");
			%>
			</td></tr>
			
			
			<tr ><td witdh="250"><strong> <font   face="Times New Roman, Times, serif">Total </font></strong></td> <td align="right" width="300">
			<%
				
				out.print(df.format(tot));
			%>
			</td></tr>
			
			<tr ><td witdh="250"><strong> <font   face="Times New Roman, Times, serif"> </font></strong></td> <td align="right" width="300">
			<%
				
				out.print("---------------");
			%>
			</td></tr>
			
			<tr ><td  height="50"></td> </tr> 
			
			
			
			
			<% 
				if(t.equals("cr"))
				{
			 %>
			<tr >
			  <td witdh="250"><strong> <font   color="#4B5BEF" face="Times New Roman, Times, serif">Gross&nbsp;Loss&nbsp;b/f</font></strong></td> 
			  <td align="right" width="300"><font   color="#4B5BEF">
				<%
					//double gross_prf_c = cr_grs_tot - dr_gr_tot ;
					
					out.print(df.format(gross_prf_b));
				%></font>
			</td></tr>
			<% } %>
			
			<tr ><td witdh="250"><a href="indirect_expenses.jsp"><strong> <font   face="Times New Roman, Times, serif">Indirect&nbsp;Expenses</font></strong></a></td> <td align="right" width="300">
			<%
				
				out.print(indir_exp_b);
			%>
			</td></tr>
			
			<tr ><td  height="50"></td> </tr> 
			
			<%
				if(net.equals("pr"))
				{
			%>
			
			<tr ><td witdh="250"><strong> <font   color="#009349" face="Times New Roman, Times, serif">Net Profit</font></strong></td> <td align="right" width="300"><font   color="#009349"><%out.print(df.format(net_profit));%></font></td></tr>
			<% } %>
			
			
			
		</table>
	</td>
	<td>
		<table width="400" border="0" height="397" bgcolor="#FADFC3" bordercolor="#F0B269" cellpadding="0" cellspacing="0" >
			<tr >
			  <td witdh="250"><a href="sales_accounts.jsp"><strong> <font   face="Times New Roman, Times, serif">Sales&nbsp;Accounts</font></strong></a></td> 
			  <td align="right" width="300">
			<%
				
				out.print(sales_b);
			%></td>
			</tr>
			<tr ><td witdh="250"><a href="#"><strong> <font   face="Times New Roman, Times, serif">Direct&nbsp;Income</font></strong></a></td> <td align="right" width="300">
				<%
					
					out.print(dir_income_b);
				%>
			</td></tr>
			<tr ><td witdh="250"><a href="closing_stock.jsp"><strong> <font   face="Times New Roman, Times, serif">Closing&nbsp;Stock</font></strong></a></td> <td align="right" width="300">
			<%
				
				out.print(cl_stk_b);
			%></td>
			</tr>
			
			
			
			<% 
						 
			if(t.equals("cr"))
			{
			%>
			<tr >
			  <td witdh="250"><strong> <font   color="#4B5BEF" face="Times New Roman, Times, serif">Gross&nbsp;Loss&nbsp;c/o</font></strong></td> 
			  <td align="right" width="300"><font   color="#4B5BEF" >
				<%
					out.print(gross_prf_b);
				%></font>
			</td></tr>
			<% } %>
			
			<tr ><td witdh="250"><strong> <font   face="Times New Roman, Times, serif"> </font></strong></td> <td align="right" width="300">
			<%
				
				out.print("---------------");
			%>
			</td></tr>
			
			
			<tr ><td witdh="250"><strong> <font   face="Times New Roman, Times, serif">Total </font></strong></td> <td align="right" width="300">
				<%
					
					out.print(df.format(tot));
				%>
			</td></tr>
			<tr ><td witdh="250"><strong> <font   face="Times New Roman, Times, serif"> </font></strong></td> <td align="right" width="300">
			<%
				
				out.print("---------------");
			%>
			</td></tr>
			
			<tr ><td  height="50"></td> </tr> 
			
			<% 
						 
			if(t.equals("dr"))
			{
			%>
			<tr ><td witdh="250"><strong> <font   color="#4B5BEF" face="Times New Roman, Times, serif">Gross&nbsp;Profit&nbsp;b/f</font></strong></td> <td align="right" width="300"><font  color="#4B5BEF">
				<%
					out.print(df.format(gross_prf_c));
				%></font>
			</td></tr>
			<% } %>
			
			<tr ><td witdh="250"><a href="#"><strong> <font   face="Times New Roman, Times, serif">Indirect&nbsp;Income</font></strong></a></td> <td align="right" width="300">
			<%
				
				out.print(indir_income_b);
			%></td>
			</tr>
			
			
			<tr ><td  height="50"></td> </tr> 
			
			<%
				if(net.equals("ls"))
				{
			%>
			
			<tr ><td witdh="250"><strong> <font    color="#F4362D" face="Times New Roman, Times, serif">Net Loss</font></strong></td> <td align="right" width="300"  ><font color="F4362D"><%out.print(df.format(net_loss));%></font></td></tr>
			<%  } %>
			
			
			 
		</table>
	</td>
	</tr>
	
	
	
	<tr>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">Total</font></strong></td> <td width="350" align="right"><strong> <font   face="Times New Roman, Times, serif"> <% out.println(df.format(net_tot)); %></font></strong></td></tr></table></td>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">Total</font></strong></td>  <td width="350" align="right"><strong> <font   face="Times New Roman, Times, serif"> <% out.println(df.format(net_tot)); %></font></strong></td></tr></table></td>
	</tr>
	
	</table>

</td>
</tr>
</table>


<% } %>

 </BODY>
</HTML>
