<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">




<table align="center" width="800"bgcolor="#FFD3A2" background="images/bg.jpg">
<tr>
<td>
<%

if(request.getParameter("username").equals("hr_admin") && request.getParameter("password").equals("hr_admin"))
 {
   session.setAttribute("user_name" , "hr_admin");
   session.setAttribute("pwd" , "hr_admin");
    
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
 <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="44" align="center"><font color="#573801" size="3"><strong><font face="verdana">Welcome To Human Resources Department</font></strong></font><font size="3" face="verdana"><strong>
      <!--<img src="images/after_main.jpg">-->
    </strong></font>	</td>
  </tr>
</table>
  <center> 
  </center>  <h4 align="right"> <font color="#573801" size="2" face="verdana"><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>
<table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="search.jsp" method="post">
   <tr>
    
	<td>
	  <strong><font color="#573801" size="2" face="Verdana">Start Date</font>
	  </strong><font color="#006600" size="4">
	  <input type="text" name="startdate" value="yyyy\mm\dd" size="16"></font>
	<!-- <select name="searchbasedon">
	  <option>Start & End Date</option>
	  <option>Gender</option>
	  <option>Qualification</option>
	 </select>-->
	</td>
	<td>
	 <font color="#006600" size="4"><strong><font color="#573801" size="2" face="Verdana">End Date</font></strong>
	 <input type="text" name="enddate" value="yyyy\mm\dd" size="16"></font>
	 </td>
	 
	  <td>
	   <input type="submit" value="Search">
	  </td>
    </tr>
  </form>
</table>
<h3 align="center"> <font color="#573801" size="4">Or</font></h3>
	 <table width="473" border="1" align="center" bordercolor="#F0B269" bgcolor="#FADFC3">
	 <form action="search2.jsp" method="post">
	 <tr>
	 <td width="162" align="center">
	   <font face="Verdana"><strong><font color="#573801" size="2">Gender</font></strong></font><font color="#006600" size="4">
	   <select name="gender">
	    <option>Male</option>
		<option>Female</option>
	    </select>
	  </font>
	 </td>
	 <td width="233" align="center">
	  <font face="Verdana"><strong><font color="#573801" size="2">Qualification</font></strong></font><font color="#006600" size="4">
	  <select name="qualification">
	    <option>Doctorates</option>
		<option>Professionals</option>
		<option>Post Graduates</option>
		<option>Technical</option>
		<option>Graduates</option>
		<option>Under Graduates</option>
	   </select>
	  </font>
	 </td>
	 <td width="56">
	  <input type="submit" value="Search">
	 </td>
   </tr>
   </form>
</table>

	 <h4><strong><font color="#573801" face="verdana">Reports:</font></strong></h4>
 <table width="199" align="center" bgcolor="#FFD3A2" background="images/bg.jpg">
 <tr>
  <td width="191">
  <form action="employeeinformationform1.jsp">
     <input type="hidden" name="username" value="hr_admin">
	 <input type="hidden" name="password" value="hr_admin">  
       <input type="image" src="images/emp_info_report.jpg">
   
   </form>
   </td>
   </tr>
   <tr>
   <td width="191">
   <form action="interviewevaluationform1.jsp">
     <input type="hidden" name="username" value="hr_admin">
	 <input type="hidden" name="password" value="hr_admin">
	 <input type="image" src="images/interview_report.jpg">
   </form>
   
    
   </td>
   </tr>
   <tr>
   <td width="191">
   <form action="leaveapplication1.jsp">
     <input type="hidden" name="username" value="hr_admin">
	 <input type="hidden" name="password" value="hr_admin">
	 <input type="image" src="images/leave_application_report.jpg">
   </form>
   
    
   </td>
    
   </tr>
   <tr>
   <td width="191">
   <form action="employeerequsitionreport.jsp">
     <input type="hidden" name="username" value="hr_admin">
	 <input type="hidden" name="password" value="hr_admin">
	 <input type="image" src="images/employee_requi_report.jpg">
   </form>
   
    
   </td>
   </tr>
   <tr>
   <td width="191">
   <form action="headcount.jsp">
     <input type="hidden" name="username" value="hr_admin">
	 <input type="hidden" name="password" value="hr_admin">
	 <input type="image" src="images/employee_head_count.jpg">
   </form>
   
    
   </td>
   </tr>
</table>
   
  
 
  
 <%
 
  
 }

else if(request.getParameter("username").equals("hr_pranam") && request.getParameter("password").equals("hr_pranam"))
 {
   session.setAttribute("user_name" , "hr_pranam");
   session.setAttribute("pwd" , "hr_pranam");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
 <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="45" align="center"><font color="#573801" size="3"><strong><font face="verdana">Welcome To Human Resources Department</font></strong></font><font size="3" face="verdana"><strong> </strong></font>      <!--<img src="images/after_main.jpg">-->
	
	 
	</td>
  </tr>
</table>
  </center>  <h4 align="right"> <font color="#573801" size="2" face="verdana"><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>
  <strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
 <tr>
  <td width="49" height="56">
   <form action="employeeinformationform.jsp">
     <input type="image" src="images/employee_info_form.jpg">
   </form>
   </td>
   </tr>
   <tr>
   <td width="191" height="62">
   <form action="interviewevaluationform.jsp">
  
    <input type="image" src="images/interview_form.jpg">
  
   </form>
   </td>
   </tr>
   <tr>
   <td width="191" height="51">
   <form action="leaveapplication.jsp">
  
    <input type="image" src="images/leave_application_form.jpg">
   
   </form>
   </td>
   </tr>
   <tr>
   <td width="191" height="50">
   <form action="employeerequsitionform.jsp">
   
    <input type="image" src="images/employee_requi_form.jpg">
   
   </form>
   </td>
   </tr>
   <tr>
    <td height="200">
	 
	</td>
   </tr>
</table>
   
  
 <%}
 
 
 else if(request.getParameter("username").equals("sl_pranam") && request.getParameter("password").equals("sl_pranam"))
 {
   
  session.setAttribute("user_name" , "sl_pranam");
   session.setAttribute("pwd" , "sl_pranam");
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Sales Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
 <tr>
  <td width="191" align="center">
   <form action="invoice.jsp">
    <input type="submit" value="                 Invoice Form               ">
   </form>
   
   </td>
   </tr>
  <tr>
  <td width="191" align="center">
   <form action="appraisalform1.jsp">
     <input type="submit" value="             Appraisal Form             ">
   </form>
   
   </td>
   </tr>
   
   <tr>
  <td width="191" align="center">
   <form action="orderform.jsp">
     <input type="submit" value="                  Order Form                ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td width="191" align="center">
   <form action="invoice4workperformed.jsp">
     <input type="submit" value=" Invoice For Work Performed">
   </form>
   
   </td>
   </tr>
   <tr>
  <td width="191" align="center">
   <form action="purchaseorder.jsp">
     <input type="submit" value="               Purchase Order           ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td width="191" align="center">
   <form action="salesorder.jsp">
     <input type="submit" value="                 Sales  Order               ">
   </form>
   
   </td>
   </tr>
    <tr>
  <td width="191" align="center">
   <form action="telephonesalesorder.jsp">
     <input type="submit" value="     Telephone Sales  Order     ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td width="191" align="center">
   <form action="salescalllog.jsp">
     <input type="submit" value="                Sales Call Log             ">
   </form>
   
   </td>
   </tr>
    <tr>
  <td align="center">
	<form action="pettycashjournal.jsp">
	 <input type="submit" value="           Petty Cash Journal         ">
	</form>
	
	</td>
   </tr> 
</table>
   
  
 <%}
 else if(request.getParameter("username").equals("sl_admin") && request.getParameter("password").equals("sl_admin"))
 {
   session.setAttribute("user_name" , "sl_admin");
   session.setAttribute("pwd" , "sl_admin");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Sales Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
 <tr>
  <td>
   <form action="ininvoice.jsp">
     <input type="image" src="images/invoice_report.jpg">
   </form>
   
   </td>
   </tr>
    <tr>
  <td align="center">
   <form action="monthtomonthsalescomparision.jsp">
     <input type="submit" value="  Monthly Sales Comparision  ">
   </form>
   
   </td>
   </tr>
   
   
</table>
   
  
 <%}

 else if(request.getParameter("username").equals("fn_pranam") && request.getParameter("password").equals("fn_pranam"))
 {
   session.setAttribute("user_name" , "fn_pranam");
   session.setAttribute("pwd" , "fn_pranam");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
    <tr>
  <td align="center">
   <form action="kvk_finance_main.jsp">
    <input type="submit" value="            Accounting Package       ">
   </form>
   
   </td>
   </tr>
 <tr>
  <td align="center">
   <form action="invoice.jsp">
    <input type="submit" value="                Invoice Form                  ">
   </form>
   
   </td>
   </tr>
  
  <tr>
  <td align="center">
	<form action="fn_expenses.jsp">
	  <input type="submit" value="                     Expenses                  ">
	</form>
	
	</td>
   </tr>
   
   <tr>
  <td align="center">
	<form action="weeklyexpensereport.jsp">
	 <input type="submit" value="       weekly Expense Form        ">
	</form>
	
	</td>
   </tr> 
    <tr>
  <td align="center">
	<form action="fn_expenses.jsp">
	  <input type="submit" value="        Annual Expense Form        ">
	</form>
	
	</td>
   </tr> 
   
    
  
   
    <tr>
  <td align="center">
	<form action="agingofaccountpayable.jsp">
	 <input type="submit" value="   Aging Of Account Payable   ">
	</form>
	
	</td>
   </tr> 
    <tr>
  <td align="center">
	<form action="agingofaccountreceivable.jsp">
	 <input type="submit" value="Aging Of Account Receivable">
	</form>
	
	</td>
   </tr> 
    <tr>
  <td align="center">
	<form action="cashdisbursementjournal.jsp">
	 <input type="submit" value="  Cash Disbursement Journal ">
	</form>
	
	</td>
   </tr> 
   <tr>
  <td align="center">
	<form action="cashreceiptjournal.jsp">
	 <input type="submit" value="         Cash Receipt Journal      ">
	</form>
	
	</td>
   </tr> 
   <tr>
  <td align="center">
	<form action="dailycashreport.jsp">
	 <input type="submit" value="           Daily  Cash Report         ">
	</form>
	
	</td>
   </tr> 
   <tr>
  <td align="center">
	<form action="pettycashjournal.jsp">
	 <input type="submit" value="           Petty Cash Journal         ">
	</form>
	
	</td>
   </tr> 
    <tr>
  <td align="center">
	<form action="pettycashvoucher.jsp">
	 <input type="submit" value="           Petty Cash voucher         ">
	</form>
	
	</td>
   </tr> 
</table>
   
  <%--///////////////////////////////////Admin accounting////////////////////////////////////--%>
  
  
  <%}

 else if(request.getParameter("username").equals("admin_account") && request.getParameter("password").equals("admin_account"))
 {
   session.setAttribute("user_name" , "admin_account");
   session.setAttribute("pwd" , "admin_account");
   
  
 %>
 


 <table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Accounting Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>


<table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana"  size = "3"  color="#573801" >Admin Accounting Details</font></strong>
</td>
</tr>

</table>


 &nbsp;
 <table width="199" align="center">
 <tr>
  <td align="center">
   <form action="kvk_finance_main.jsp">
    <input type="submit" value="        Accounting Package       ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="department_details.jsp">
    <input type="submit" value="         Department Details         ">
   </form>
   
   </td>
   </tr>
 
   
</table>
   
 
  <%--///////////////////////////////////fn accounting////////////////////////////////////--%>
  
  
  <%}

 else if(request.getParameter("username").equals("fn_account") && request.getParameter("password").equals("fn_account"))
 {
   session.setAttribute("user_name" , "fn_account");
   session.setAttribute("pwd" , "fn_account");
   
  
 %>
 
 <table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Accounting Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>


<table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana"  size = "3"  color="#573801" >Accounting Details</font></strong>
</td>
</tr>

</table>


 &nbsp;
 
 
 <table width="199" align="center">
 <tr>
  <td align="center">
   <form action="account_operator.jsp">
    <input type="submit" value="        Accounting Package       ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="department_details.jsp">
    <input type="submit" value="         Department Details         ">
   </form>
   
   </td>
   </tr>
 
   
</table>
   
 
  
  
  
  
  
  <%--////////////////////////////////////inventory/////////////////////////////////////--%>
  
  
  <%}

 else if(request.getParameter("username").equals("inventory") && request.getParameter("password").equals("inventory"))
 {
   session.setAttribute("user_name" , "inventory");
   session.setAttribute("pwd" , "inventory");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Inventory Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
 <tr>
  <td align="center">
   <form action="in_purchases.jsp">
     <input type="submit" value="         Purchases Entry Form       ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="in_purchase_returns.jsp">
     <input type="submit" value="Purchases Returns Entry Form">
   </form>
   
   </td>
   </tr>
 
   
</table>
   
 
  
  
  
  <%--////////////////////////////////////sales/////////////////////////////////////--%>
  
  
  <%}

 else if(request.getParameter("username").equals("sales") && request.getParameter("password").equals("sales"))
 {
   session.setAttribute("user_name" , "sales");
   session.setAttribute("pwd" , "sales");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Sales Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
 <tr>
  <td align="center">
   <form action="sl_sales.jsp">
     <input type="submit" value="         Sales Entry Form       ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="sl_sales_returns.jsp">
     <input type="submit" value="Sales Returns Entry Form">
   </form>
   
   </td>
   </tr>
 
   
</table>
   
 
  
  
  
  <%--////////////////////////////////////////////////////////////////////////////////////////////--%>
  
   <%--////////////////////////////////////sales_admin/////////////////////////////////////--%>
  
  
  <%}

 else if(request.getParameter("username").equals("sales_admin") && request.getParameter("password").equals("sales_admin"))
 {
   session.setAttribute("user_name" , "sales_admin");
   session.setAttribute("pwd" , "sales_admin");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Sales Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
 <tr>
  <td align="center">
   <form action="sl_sales.jsp">
    <input type="submit" value="         Sales Entry Form       ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="sl_sales_returns.jsp">
    <input type="submit" value="Sales Returns Entry Form">
   </form>
   
   </td>
   </tr>
 
 <tr>
  <td align="center">
   <form action="fn_acc_sl_sales.jsp">
    <input type="submit" value="                   Sales                    ">
   </form>
   
   </td>
   </tr>
   
   <tr>
  <td align="center">
   <form action="fn_acc_sl_sales_returns.jsp">
    <input type="submit" value="            Sales Returns           ">
   </form>
   
   </td>
   </tr>
   
</table>
   
 
  
  
  
  <%--////////////////////////////////////////////////////////////////////////////////////////////--%>
  
  
   <%--////////////////////////////////////purchase_admin/////////////////////////////////////--%>
  
  
  <%}

 else if(request.getParameter("username").equals("inventory_admin") && request.getParameter("password").equals("inventory_admin"))
 {
   
  session.setAttribute("user_name" , "inventory_admin");
   session.setAttribute("pwd" , "inventory_admin");
   
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Inventory Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Forms:</font></strong>
 <table width="199" align="center">
 <tr>
  <td align="center">
   <form action="in_purchases.jsp">
    <input type="submit" value="         Purchases Entry Form       ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="in_purchase_returns.jsp">
     <input type="submit" value="Purchases Returns Entry Form">
   </form>
   
   </td>
   </tr>
 
 <tr>
  <td align="center">
   <form action="fn_acc_in_purchases.jsp">
     <input type="submit" value="                    Purchases                  ">
   </form>
   
   </td>
   </tr>
   
   <tr>
  <td align="center">
   <form action="fn_acc_in_pur_retrn.jsp">
    <input type="submit" value="           Purchases Returns           ">
   </form>
   
   </td>
   </tr>
   
</table>
   
 
  
  
  
  <%--////////////////////////////////////////////////////////////////////////////////////////////--%>
  
  
  
  
  
  
  
 <%}
else if(request.getParameter("username").equals("fn_admin") && request.getParameter("password").equals("fn_admin"))
 {
   session.setAttribute("user_name" , "fn_admin");
   session.setAttribute("pwd" , "fn_admin");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table><h4 align="right"> <font color="#573801"><a href="index.jsp"></a><a href="index.jsp"><font color="#573801" size="2" face="verdana">Logout</font></a></font></h4>

<strong><font color="#573801" size="3" face="verdana">Reports:</font></strong>
 <table width="199" align="center">
 <tr>
  <td >
   <form action="invoice1.jsp">
   <input type="image" src="images/invoice_report.jpg">
   
   </form>
   
   </td>
   </tr>
    <tr>
  <td>
   <form action="salaryreport1.jsp">
    <input type="image" src="images/salary_report.JPG">
   </form>
   
   </td>
   </tr>
  <tr>
  <td align="center">
   <form action="weeklyexpensesreportsubmit2.jsp">
   <input type="submit" value="Weekly Expenses Report">
   </form>
   
   </td>
   </tr>
    <tr>
  <td align="center">
   <form action="accountpayables.jsp">
   <input type="submit" value="        Account Payables      ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="pettycashjournal1.jsp">
   <input type="submit" value="       Petty Cash Journal      ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="fn_balancesheet.jsp">
   <input type="submit" value="          Balance Sheet           ">
   </form>
   
   </td>
   </tr>
   
</table>
   
  
 <%}

 else if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("admin"))
 {
   session.setAttribute("user_name" , "admin");
   session.setAttribute("pwd" , "admin");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="44" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome Administrator</font></strong>      <!--<img src="images/after_main.jpg">-->
	
	 
	</td>
  </tr>
</table>  <h4 align="right"> <font face="verdana"><strong><a href="index.jsp"><font color="#573801" size="2">Logout</font></a></strong></font></h4>
<strong><font color="#573801" size="3" face="verdana">Departments:</font></strong>
 <table width="192" align="center">
 <tr>
  <td width="184" >
   <form action="account_admin.jsp">
    <input type="image" src="images/finance.jpg">
   </form>
   
   </td>
   </tr>
  <!-- <tr>
  <td width="184">
  <form action="#">
    
       <img src="images/project-management.jpg">
   
   </form>
   </td>
   </tr>-->
   <tr>
   <td width="184">
   <form action="inventery1.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <input type="image" src="images/inventory.jpg">
   </form>
   
    
   </td>
   </tr>
   <tr>
   <td width="184">
   <form action="sales2.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <input type="image" src="images/sales.jpg">
   </form>
   
    
   </td>
    
   </tr>
   <!--<tr>
   <td width="184">
   <form action="#">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <img src="images/maintenance.jpg">
	    </form>
   
    
   </td>
   </tr>-->
   <tr>
   <td width="184">
   <form action="humanresource1.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <input type="image" src="images/human-resources.jpg">
   </form>
   
    
   </td>
   </tr>
   <tr>
    <td height="3"></td>
   </tr>
   
   
</table>
   
  
 <%}
 else if(request.getParameter("username").equals("in_pranam") && request.getParameter("password").equals("in_pranam"))
 {
    session.setAttribute("user_name" , "in_pranam");
   session.setAttribute("pwd" , "in_pranam");
  
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="45" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Inventery Department</font></strong>      <!--<img src="images/after_main.jpg">-->
	
	 
	</td>
  </tr>
</table><h4 align="right"> <font face="verdana"><a href="index.jsp"><font color="#573801" size="2">Logout</font></a></font></h4>
<font color="#573801" size="3" face="verdana"><strong>Forms:</strong>
</font> 
<table align="center">
 <tr>
  <td  align="center">
  <form action="purchaserequsitionform.jsp">
   <input type="submit" value="    Purchase Requsition Form    ">
  </form>
   
   </td>
   </tr>
   <tr>
  <td  align="center">
  <form action="inventoryreport.jsp">
   <input type="submit" value="               Inventory Report             ">
  </form>
   
   </td>
   </tr>
 
  <tr>
  <td width="191" align="center">
  <form action="outofstocknotice.jsp">
   <input type="submit" value="             Out Of Stock Notice          ">
  </form>
   
   </td>
   </tr> 
    <tr>
  <td align="center">
  <form action="physicalinventorycountsheet.jsp">
   <input type="submit" value="Physical Inventory Count Sheet">
  </form>
   
   </td>
   </tr> 
    <tr>
  <td align="center">
	<form action="pettycashjournal.jsp">
	 <input type="submit" value="             Petty Cash Journal          ">
	</form>
	
	</td>
   </tr> 
    <tr>
  <td align="center">
	<form action="in_stock_details.jsp">
	 <input type="submit" value="                   Stock Details               ">
	</form>
	
	</td>
   </tr> 
</table>
   
  
 <%}
else if(request.getParameter("username").equals("in_admin") && request.getParameter("password").equals("in_admin"))
 {
    session.setAttribute("user_name" , "in_admin");
   session.setAttribute("pwd" , "in_admin");
  
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="45" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Inventery Department</font></strong>      <!--<img src="images/after_main.jpg">-->
	
	 
	</td>
  </tr>
</table><h4 align="right"> <font face="verdana"><a href="index.jsp"><font color="#573801" size="2">Logout</font></a></font></h4>
<font color="#573801" size="3" face="verdana"><strong>Reports:</strong>
</font> 
<table width="199" align="center">
 <tr>
  <td width="191">
  <form action="pupurchaserequsition.jsp">
   <input type="image" src="images/purchase_requisition.jpg">
  </form>
   
   </td>
   </tr>
   <tr>
    <td height="100"></td>
   </tr>
   
   
</table>
   
  
 <%}

 else 
  {%>
   <font size="2" face="verdana">invalid Userid/Password</font>   <%@include file="index.jsp"%>
   <%
   }
   
 
%>

</td>
</tr>
</table>
</body>
</html>
