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
		<div class="content" align="center">
		<fieldset>
			<legend>
				Create Voucher
			</legend>
<form:form action="created_fn_voucher.res" method="post" commandName="vocherDetailsBean" id="vocher-form">
<table align="center" border="0">

 
 <tr>
  <td>
  
     Name
  
   </td>
   <td>
   <form:input path="name"/>
    
    </td>
 </tr>
 <tr>
  <td>
  
    Type of Voucher
  
  </td>
  
  <td>
  
   
	<form:select path="typeofvocher" id="vochertypedata">
	 	
	</form:select>
  
  </td>
 </tr>
 <tr>
  <td>
  
    Abbr
  
  </td>
  
  <td>
  
   <form:input path="abbr"/>
   
  
  </td>
 </tr>

 <tr>
  <td>
  
    Method Of  Voucher Numbering 
  
  </td>
  <td>
   <form:select path="vochernumbering">
   <form:option value="Automatic">Automatic</form:option>
   <form:option value="Manual">Manual</form:option>
   <form:option value="None">None</form:option>
   </form:select>
   
  
  </td>
  
 </tr>
 <tr>
  <td>
     Use Advanced Configuration
  
  </td>
  <td>
   <form:input path="advconfiguration" value="No"/>
   
  </td>
 </tr>
 <tr>
  <td>
  
    Use Effective Dates
  
  </td>
  <td>
  <form:input path="useeffectivedates" value="No"/>
   
  </td>
 </tr>
 <tr>
  <td>
  
    Use common Narration
  
   </td>
   <td>
   <form:input path="usecommonnarration" value="Yes"/>
    
   </td>
 </tr>
 <tr>
  <td>
  
    Narrations for Each Entry
  
  </td>
   <td>
   <form:input path="narrationsforeachentry" value="No"/>
   
  </td>
  </tr>
  <tr>
  <td>
  
   Name of Class
  
   </td>
   <td>
   <form:input path="nameofclass" value="None"/>
    
   </td>
 </tr>
 <tr>
  <td colspan="2" align="center">
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
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>
	