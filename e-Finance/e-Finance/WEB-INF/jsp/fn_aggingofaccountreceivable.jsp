<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
// System.out.println("hi"+username);
// System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project"><%=comp%></div><div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
<fieldset><legend>Agging Of Account Receivable</legend>
<form:form action="sfn_aggingaccounreceivable.fin" method="post" commandName="aggingaccountreceivableBean">
<table align="center" border="1" class="form_background">
 
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
	  <td colspan="9" align="center"><input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
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
	</div>
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>
