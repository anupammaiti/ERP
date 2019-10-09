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
<link rel="stylesheet" href="css/finance_style.css"/>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
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
<fieldset><legend>DailyCashReport</legend>
<form:form action="sfn_dailycashreport.fin" method="post" commandName="dailycashreportBean">
<table align="center" border="1" class="form_background">
 
  <tr>
   <td>
    <table align="center" border="1"  width="800">
	 <tr>
	  <td>
	    Date
	    <form:input path="dates"  size="10px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1"  width="800">
	 
	 <tr>

	  <td>
	    Cash Recorded Form
	  </td>
	  <td>
	    Amount 
	  </td>
	  <td>
	    Cash Paid Out To
	   </td>
	   <td>
	    Amount
	   </td>
	   
	
	 </tr>
	 <tr>
	  
	  <td>
	    <form:input path="cashrecordedform1" size="10px"/>
	  </td>
	  <td>
	    <form:input path="amount1" size="10px"/>
	  </td>
	  <td>
	   <form:input path="cashpaidoutto1" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="amounts1" size="10px"/>
	   </td> 
	  
	 </tr>
	 <tr>
	  
	  <td>
	    <form:input path="cashrecordedform2" size="10px"/>
	  </td>
	  <td>
	    <form:input path="amount2" size="10px"/>
	  </td>
	  <td>
	   <form:input path="cashpaidoutto2" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="amounts2" size="10px"/>
	   </td> 
	  
	 </tr>
	 
	<tr>
	  
	  <td>
	    <form:input path="cashrecordedform3" size="10px"/>
	  </td>
	  <td>
	    <form:input path="amount3" size="10px"/>
	  </td>
	  <td>
	   <form:input path="cashpaidoutto3" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="amounts3" size="10px"/>
	   </td> 
	  
	 </tr>
	 
	 <tr>
	  
	  <td>
	    <form:input path="cashrecordedform4" size="10px"/>
	  </td>
	  <td>
	    <form:input path="amount4" size="10px"/>
	  </td>
	  <td>
	   <form:input path="cashpaidoutto4" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="amounts4" size="10px"/>
	   </td> 
	  
	 </tr>
	 
	 <tr>
	  
	  <td>
	    <form:input path="cashrecordedform5" size="10px"/>
	  </td>
	  <td>
	    <form:input path="amount5" size="10px"/>
	  </td>
	  <td>
	   <form:input path="cashpaidoutto5" size="10px"/>
	  </td>
	   <td>
 	   <form:input path="amounts5" size="10px"/>
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
	<div class="footer"> <%session.removeAttribute("successmsg");%>
	
	<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	</div>
<% }
else
{
response.sendRedirect("login.fin");
}%>
</body>

</html>