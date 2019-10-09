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
<div class="content" align="left"><span id="successmsg">${successmsg}</span>
	<fieldset>
		<legend>Petty Cash Journal</legend>
	<form:form action="save_sl_petty_cash_journal.res" method="post" commandName="pettyCashBean">
	<table align="center" border="1">
   <tr>
   <td>
    <table align="left" border="0"  width="800">
	 
	 <tr>
	  
	 
	  <td width="416">
	   <strong>Dept</strong>
<form:select path="department">
<form:option value="sales">sales</form:option>
<form:option value="finance">finance</form:option>
<form:option value="account">account</form:option>
</form:select>
	   
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="0"  width="800">
	
	 <tr>
	  <td width="82">
	    <strong>Date </strong></td>
	  <td width="95">
	    <strong>Voucher#
	    </strong></td>
	 
	   <td width="114">
	     <strong>Payee
	     </strong></td>
	   
	
	  <td width="112">
	     <strong>Approved By 
	     </strong></td>
	   <td width="77">
	     <strong>Total 
	     </strong></td>
	   <td width="80">
	     <strong>Balance
	     </strong></td>
	  
	 </tr>
	 <tr>
	  <td>
	  <form:input path="date" id="gendate1"/>
	   
	  </td>
	  <td>
	   <form:input path="vocher"/>
	   
	  </td>
	  <td>
	   <form:input path="payee"/>
	   
	  </td>
	  
	   <td>
	  <form:input path="approvedby"/>
	    
	   </td>
	   <td>
	    <form:input path="total"/>
	    
	    </td>
		<td>
		<form:input path="balance"/>
		 
		</td>
		
	 </tr>
	<tr>
	 <td><strong>Audited By</strong></td>
	 <td colspan="2">
	   <form:input path="auditedby"/>
	   
	 </td>
	 <td>
	   <strong>Approved By
	   </strong></td>
	 <td colspan="4">
	 <form:input path="approvedby1"/>
	 
	 </td>
	 </tr>
	 <tr>
	  <td colspan="9" align="center">
	  <%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="depar1" id="dept1"/>
	  	<input type="image" src="images/submit_button.jpg" id="button1"/>
	  </td>
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
	<%session.removeAttribute("successmsg"); %>
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>