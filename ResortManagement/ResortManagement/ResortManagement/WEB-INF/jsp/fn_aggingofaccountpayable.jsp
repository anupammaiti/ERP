<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center"><span id="successmsg">${successmsg}</span>
<fieldset><legend>Agging Of Account Payble</legend>
<form:form action="sfn_aggingaccounpayble.res" method="post" commandName="aggingaccountpaybleBean">
<table align="center" border="1" class="form_background" >
 
  <tr>
   <td>
    <table align="center" border="1"  width="800">
	 <tr>
	  <td colspan="2">
	     Reporting Period
	  </td>
	  
	  </tr>
	 <tr>
	  <td>
	    From  
	    <form:input path="fromdate"  size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    To 
	    <form:input path="todate" size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	  	Emp Id
	  </td>
	  <td>
	  	<form:select path="empid" id="empid1"></form:select>
	  </td>
	  <td>
	  	Ledger Name
	  </td>
	  <td>
	  	   <form:select path="ledgername" id="ledgerlist"></form:select>
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1"  width="800">
	 <tr>
	  <td colspan="5" align="center">&nbsp;</td><td colspan="4" align="center">
	    Account 
	  </td>
	 </tr>
	 <tr>
	  <td>
	    Date 
	  </td>
	  <td>
	    Invoice# 
	  </td>
	  <td>
	    Account 
	  </td>
	  <td>
	    Account# 
	   </td>
	   <td>
	    Description 
	   </td>
	   
	
	  <td>
	      30 Days 
	   </td>
	   <td>
	     60 Days  
	  </td>
	  <td>
	    90+ Days 
	  </td>
	  <td>
	     Total 
	  </td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date1" size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="invoice1" size="10px"/>
	  </td>
	  <td>
	    <form:input path="account1" size="10px"/>
	  </td>
	  <td>
	   <form:input path="accounta1" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="description1" size="10px"/>
	   </td> 
	   <td>
	     <form:input path="thirtydays1" size="10px"/>
	   </td>
	   <td>
	     <form:input path="sixtydays1" size="10px"/>
	    </td>
		<td>
		  <form:input path="nintydays1" size="10px"/>
		</td>
		<td>
		  <form:input path="total1" size="10px"/>
		</td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date2"size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="invoice2" size="10px"/>
	  </td>
	  <td>
	    <form:input path="account2" size="10px"/>
	  </td>
	  <td>
	    <form:input path="accounta2" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="description2" size="10px"/>
	   </td> 
	   <td>
	     <form:input path="thirtydays2" size="10px"/>
	   </td>
	   <td>
	     <form:input path="sixtydays2" size="10px"/>
	    </td>
		<td>
		  <form:input path="nintydays2" size="10px"/>
		</td>
		<td>
		 <form:input path="total2" size="10px"/>
		</td>
	 </tr>
	  <tr>
	  <td>
	    <form:input path="date3" size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="invoice3" size="10px" />
	  </td>
	  <td>
	    <form:input path="account3" size="10px"/>
	  </td>
	  <td>
	    <form:input path="accounta3" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="description3" size="10px"/>
	   </td> 
	   <td>
	     <form:input path="thirtydays3" size="10px"/>
	   </td>
	   <td>
	    <form:input path="sixtydays3" size="10px"/>
	    </td>
		<td>
		  <form:input path="nintydays3" size="10px"/>
		</td>
		<td>
		  <form:input path="total3" size="10px"/>
		</td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date4" size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="invoice4" size="10px"/>
	  </td>
	  <td>
	    <form:input path="account4" size="10px"/>
	  </td>
	  <td>
	    <form:input path="accounta4" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="description4" size="10px"/>
	   </td> 
	   <td>
	     <form:input path="thirtydays4" size="10px"/>
	   </td>
	   <td>
	    <form:input path="sixtydays4" size="10px"/>
	    </td>
		<td>
		  <form:input path="nintydays4" size="10px"/>
		</td>
		<td>
		 <form:input path="total4" size="10px"/>
		</td>
	 </tr>	
	 <tr>
	  <td>
	    <form:input path="date5" size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="invoice5" size="10px"/>
	  </td>
	  <td>
	    <form:input path="account5" size="10px"/>
	  </td>
	  <td>
	    <form:input path="accounta5" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="description5" size="10px"/>
	   </td> 
	   <td>
	     <form:input path="thirtydays5" size="10px"/>
	   </td>
	   <td>
	     <form:input path="sixtydays5" size="10px"/>
	    </td>
		<td>
		  <form:input path="nintydays5" size="10px"/>
		</td>
		<td>
		  <form:input path="total5" size="10px"/>
		</td>
	 </tr>
	 <tr>
	  <td colspan="9" align="center"><%-- <input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/> --%>
	  <input type="image" src="images/submit_button.jpg" id="button1"></td>
	  </tr>
	</table>
   </td>
   </tr>
   
</table></form:form>
</fieldset>

	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>
