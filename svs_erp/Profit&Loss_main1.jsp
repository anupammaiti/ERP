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
   </HEAD>

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
 <td ><strong> <font  face = "verdana">Profit & Loss A/C  Details</font></strong>
</td>
</tr>

</table>

<table>

<form action="kvk_finance_main.jsp" method="post">
<tr>
<td width="100"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

</tr>
</table>

 

 
 



<table width="1300" height="500"  >

<tr>
<td>
	<table width="100">
		<tr><td></td></tr>
	</table>
</td>
<td>
	<table width="1200" height="500"  border="1"  bgcolor="#FADFC3" bordercolor="#F0B269" >
	<tr>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">DR </font></strong></td> <td width="350"><strong> <font   face="Times New Roman, Times, serif"> Particulars</font></strong></td></tr></table></td>
		<td><table height="50"><tr><td width="250"><strong> <font   face="Times New Roman, Times, serif">CR </font></strong></td> <td width="350"><strong> <font   face="Times New Roman, Times, serif"> Particulars</font></strong></td></tr></table></td>
	</tr>
	<tr>
	<td>
		<table width="600"  border="1" height="497" bgcolor="#FADFC3" bordercolor="#F0B269" >	
			<tr ><td witdh="300"><a href="#"><strong> <font   face="Times New Roman, Times, serif">Opening Stock</font></strong></a></td> <td align="right" width="300">
				<%
					double open_stk_b=0.0;
					out.print(open_stk_b);
				%>
			</td></tr> 
			<tr ><td witdh="300"><a href="purchase_accounts.jsp"><strong> <font   face="Times New Roman, Times, serif">Purchase Accounts</font></strong></a></td> <td align="right" width="300">
			<%
				String ps=" select sum(amount) from voucher_purchase";
				ResultSet prs=st.executeQuery(ps);
				prs.next();
				
				double purchase_b=prs.getDouble(1);
				out.print(purchase_b);
			%>
			</td></tr>
			
			
			<tr ><td witdh="300"><a href="#"><strong> <font   face="Times New Roman, Times, serif">Direct Expenses</font></strong></a></td> <td align="right" width="300">
				<%	
					double dir_exp_b=0.0;
					out.print(dir_exp_b);
				%>
			</td></tr>
			<% 
				String t = null;
				double dr_gr_tot = purchase_b + dir_exp_b + open_stk_b;
				
				
			 %>
			<tr ><td witdh="300"><strong> <font   face="Times New Roman, Times, serif">Gross Profit c/f</font></strong></td> <td align="right" width="300">
				<%
					double gross_prf_c = dr_gr_tot;
					out.print(gross_prf_c);
				%>
			</td></tr>
			<tr ><td  height="100"></td> </tr> 
			<tr ><td witdh="300"><a href="indirect_expenses.jsp"><strong> <font   face="Times New Roman, Times, serif">Indirect Expenses</font></strong></a></td> <td align="right" width="300">
			<%
				String pys=" select sum(amount) from voucher_payment";
				ResultSet pyrs=st.executeQuery(pys);
				pyrs.next();
				
				double indir_exp_b=pyrs.getDouble(1);
				out.print(indir_exp_b);
			%>
				</td></tr>
			<tr ><td witdh="300"><strong> <font   face="Times New Roman, Times, serif">Net Profit</font></strong></td> <td align="right" width="300"><%out.print("0000");%></td></tr>
			
			
		</table>
	</td>
	<td>
		<table width="600" border="1" height="497" bgcolor="#FADFC3" bordercolor="#F0B269" >
			<tr ><td witdh="300"><a href="sales_accounts.jsp"><strong> <font   face="Times New Roman, Times, serif">Sales Accounts</font></strong></a></td> <td align="right" width="300">
			<%
				String ss=" select sum(amount) from voucher_sales";
				ResultSet srs=st.executeQuery(ss);
				srs.next();
				
				double sales_b=srs.getDouble(1);
				out.print(sales_b);
			%></td>
			</tr>
			<tr ><td witdh="300"><a href="#"><strong> <font   face="Times New Roman, Times, serif">Direct Incomes</font></strong></a></td> <td align="right" width="300">
				<%
					double dir_income_b=0.0;
					out.print(dir_income_b);
				%>
			</td></tr>
			<tr ><td witdh="300"><a href="closing_stock.jsp"><strong> <font   face="Times New Roman, Times, serif">Closing Stock</font></strong></a></td> <td align="right" width="300">
			<%
				String cs=" select sum(balance) from closing_stock";
				ResultSet crs=st.executeQuery(cs);
				crs.next();
				
				double cl_stk_b=crs.getDouble(1);
				out.print(cl_stk_b);
			%></td>
			</tr>
			
			<% 
				double cr_grs_tot = sales_b + dir_income_b + cl_stk_b;

			 %>
			
			<tr ><td  height="100"></td> </tr> 
			<tr ><td witdh="300"><strong> <font   face="Times New Roman, Times, serif">Gross Profit b/f</font></strong></td> <td align="right" width="300">
				<%
					double gross_prf_b = cr_grs_tot;
					out.print(gross_prf_b);
				%>
			</td></tr>
			<tr ><td witdh="300"><strong> <font   face="Times New Roman, Times, serif">Net Loss</font></strong></td> <td align="right" width="300"><%out.print("0000");%></td></tr>
			
			 
		</table>
	</td>
	</tr>
	</table>

</td>
</tr>
</table>




<table>

<form action="kvk_finance_main.jsp" method="post">
<tr>
<td width="1100"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>




 </BODY>
</HTML>
