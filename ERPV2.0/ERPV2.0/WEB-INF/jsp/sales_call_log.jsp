<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<link rel="shortcut" href="images/logo.jpg"/> 
<script type="text/javascript" src="js/jQuery.Validate.min.js"></script>
<script type="text/javascript" src="js/erp_validations.js"></script>
 </head>
<%
 String username=(String)session.getAttribute("uname");
 String pwd=(String)session.getAttribute("pswd");
 System.out.println("hi"+username);
 System.out.println("hi"+pwd);
 if(pwd!=null)
 {
	 %>

<body>


<center><h3>ERP</h3></center><hr/>
	<div class="mainframe">
    	<div class="titleform">
			<div id="logo">
            		
            </div>
            <div class="title_app">
            	HR 
            </div>
            <div>
           
            <span id="loginby">Welcome:&nbsp; <%=username %></span>
 			<jsp:include page="sl_header.jsp" flush="true"/>
            </div>
		</div>

       
        <div class="Content">

<fieldset>
	<legend>Sales Call Log</legend>
<form:form action="ssales_call_log.erp" commandName="salesCallLog" method="post">
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Number</font>
   </td>
   <td>
   <form:input path="number"/>
    
   </td>
   <td>
    <font color="#573801" face="verdana" size="2">Date</font>
   </td>
   <td>
    <form:input path="today" id="gendate1"/>
    
   </td>
   
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Name OF Company</font>
  </td>
  <td>
   <form:input path="companyname"/>
   
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Contact</font>
   </td>
   <td>
   	<form:input path="contactno"/>
    
    </td>
	<td>
	 <font color="#573801" face="verdana" size="2">Phone</font>
	 
	</td>
	<td>
	<form:input path="phone"/>
	 
	</td>
  </tr>
  <tr>
   <td>
   <font color="#573801" face="verdana" size="2">Type Of Call</font>
    </td>
	<td>
	 <font color="#573801" face="verdana" size="2">Customer</font>
		<form:radiobutton path="calltype"/>
	  
	 
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Prospect</font>
	  </td>
	  <td>
	  <form:radiobutton path="calltype"/>
	   
	   </td>
	
  </tr>
  <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Comments</font>
   </td>
   <td colspan="3">
    <form:textarea path="comments"/>
    
   
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">Purpose Of Call</font>
	</td>
   <td colspan="3">
	 
	<form:textarea path="purposeofcall"/>
   </td>
  </tr>
  <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Opening Conversation</font>
    </td>
   <td colspan="3">
	 <form:textarea path="openconvesation"/>    
  </td>
  </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">Sales Story</font>
	 </td>
   <td colspan="3">
   <form:textarea path="salesstory"/>
	 </td>
   </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  Benefits Of Customer
	 </font>
	</td>
   <td colspan="3">
	<form:textarea path="benfitsofcustomer"/>
	</td>
   </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">Objections</font>
	</td>
   <td colspan="3">
	<form:textarea path="objection"/>
	  
	
	 </td>
    </tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Closing Conversation</font>
	 </td>
   <td colspan="3">
	  <form:textarea path="closingconversation"/>
	   
	 
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">When To Follow</font>
	</td>
   <td colspan="3">
	   <form:textarea path="whentoflow"/>
	   
	 
	  </td>
	</tr>
	<tr>
	 <td colspan="4" align="center">
	  <form:button>Submit</form:button>
	  
	 </td>
	</tr>
	
</table>
</form:form>
</fieldset>
</div>
                </div>
        <div class="bodyframe">
        
        </div>
	</div>
<% }
else
{
response.sendRedirect("login.erp");
}%>	
</body>
</html>