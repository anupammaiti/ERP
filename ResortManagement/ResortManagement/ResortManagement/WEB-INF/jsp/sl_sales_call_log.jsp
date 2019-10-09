<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/adding_rows.js"></script>
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
			<jsp:include page="sl_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>Sales Call Log</legend><span id="successmsg">${successmsg}</span>
<form:form action="save_sl_sales_call_log.res" method="post" commandName="salesCallLog">
<table align="center" width="800"  border="1">

 <tr>
  <td>
   Number
   </td>
   <td>
   <form:input path="number" required="true"/>
    
   </td>
   <td>
    Date
   </td>
   <td>
    <form:input path="today" id="gendate1"/>
    
   </td>
   
 </tr>
 <tr>
  <td>
   Name OF Company
  </td>
  <td>
   <form:input path="companyname" required="true"/>
   
   </td>
 </tr>
 <tr>
  <td>
   Contact
   </td>
   <td>
   	<form:input path="contactno" required="true"/>
    
    </td>
	<td>
	 Phone
	 
	</td>
	<td>
	<form:input path="phone" required="true"/>
	 
	</td>
  </tr>
  <tr>
   <td>
   Type Of Call
    </td>
	<td>
	 Customer
		<form:radiobutton path="calltype" required="true"/>
	  
	 
	 </td>
	 <td>
	  Prospect
	  </td>
	  <td>
	  <form:radiobutton path="calltype" required="true"/>
	   
	   </td>
	
  </tr>
  <tr>
  <td>
   Comments
   </td>
   <td colspan="3">
    <form:textarea path="comments" required="true"/>
    
   
  </td>
  </tr>
  <tr>
   <td>
    Purpose Of Call
	</td>
   <td colspan="3">
	 
	<form:textarea path="purposeofcall" required="true"/>
   </td>
  </tr>
  <tr>
  <td>
   Opening Conversation
    </td>
   <td colspan="3">
	 <form:textarea path="openconvesation" required="true"/>    
  </td>
  </tr>
   <tr>
    <td>
	 Sales Story
	 </td>
   <td colspan="3">
   <form:textarea path="salesstory" required="true"/>
	 </td>
   </tr>
   <tr>
    <td>
	 
	  Benefits Of Customer
	 
	</td>
   <td colspan="3">
	<form:textarea path="benfitsofcustomer" required="true"/>
	</td>
   </tr>
   <tr>
    <td>
	 Objections
	</td>
   <td colspan="3">
	<form:textarea path="objection" required="true"/>
	  
	
	 </td>
    </tr>
	<tr>
	 <td>
	  Closing Conversation
	 </td>
   <td colspan="3">
	  <form:textarea path="closingconversation" required="true"/>
	   
	 
	  </td>
	</tr>
	<tr>
	 <td>
	  When To Follow
	</td>
   <td colspan="3">
	   <form:textarea path="whentoflow" required="true"/>
	   
	 
	  </td>
	</tr>
	<tr>
	 <td colspan="4" align="center">
	  <%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
	  <input type="image" src="images/submit_button.jpg" id="button1"/>
	  
	 </td>
	</tr>
	
</table>
		</form:form>		
			</fieldset>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<%session.removeAttribute("successmsg"); %>	
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>