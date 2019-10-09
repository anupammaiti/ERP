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
<body onload="">
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
			<legend>Appraisal Form</legend><span id="successmsg">${successmsg}</span>
			<form:form action="save_sl_appraisal_form.res" method="post" commandName="apprisialFormBean">
			<table align="center" width="800" border="1">

 <tr>
  <td>
   <table align="center" width="800" >
    <tr>
	 <td>
	   
	   We have carefully and thoroughly examined the article(s) listed below belonging to:
	  </td><br>
      <td>
	   Name:
	   
	   <form:input path="name" onblur="return alphabetic(this.value);" class="number"/>
	  </td>
	  <td>
	   Address:
	   
	   <form:textarea path="address"/>
	  </td>
	</tr>
	<tr>
    <td colspan="3">
	  
	  This estimation is based on the current retail value and is not intended to include any applicable state or federal tax. In the event of any damage to the item(s) described below, the Appraiser is not responsible for the cost of the replacement of said item(s).
	  	 </td>
 	 </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800">
    <tr>
	 <td>
	   <strong>Item
	   </strong></td>
	  <td>
	    <strong>Description
	    </strong></td>
	  <td>
	    <strong>Appraised Value
	    </strong></td>
	</tr>
	<tr>
	 <td>
	 
	  <form:input path="item1" onblur="return alphabetic(this.value);" class="name" required="true"/>
	 </td>
	 <td>
	  <form:input path="description" onblur="return alphabetic(this.value);" class="name" required="true"/>
	 
	 </td>
	 <td>
	 <form:input path="apprisedvalue" onblur="return numeric(this.value);" class="number" required="true"/>
	  
	 </td>
	 
	</tr>
	
	<tr>
	 <td colspan="3">
	  The Appraiser assumes no liability for any action taken based on this appraisal
	 </td>
	 </tr>
	<tr>
	 <td>
	  Appraisal Name
	 </td>
	 <td>
	  
	  <form:input path="appraisalname" onblur="return alphabetic(this.value);" class="name" required="true"/>
	 </td>
	 <td>
	  Date
	  
	  <form:input path="today" id="gendate1"/>
	  </td>
	</tr>
		
	
	 <tr>
	 	
	 
	 	
	  <td colspan="3" align="center">
	  	<%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
	   <input type="image" src="images/submit_button.jpg" id="button1"></td>
	  </tr>
   </table>
  </td>
 </tr>
</table>
</form:form>			
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
