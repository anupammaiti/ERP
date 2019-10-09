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
	<legend>Invoice Work Performed</legend>

<form:form action="sinvoice_work_performed.erp" method="post" commandName="invoiceWorkPerformBean">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Labour</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	 
	</tr>
	<tr id="fields">
	  <td>
		<form:input path="lb_date" id="gendate1"/>
	   
	   </td>
	   <td>
	   	<form:input path="lb_quantity"/>
	    
	   </td>
	   <td>
	    <form:input path="lb_description"/>
	    
	   </td>
	   <td>
	    <form:input path="lb_price"/>
	    
	   </td>
	   <td>
		<a href="#" id="insert-field">fields</a>
		</td>	  
	</tr>
	
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Materials</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	
	</tr>
	<tr id="fields">
	  <td>
		<form:input path="mat_date" id="gendate2"/>

	   </td>
	   <td>
		<form:input path="mat_quantity"/>
	    
	   </td>
	   <td>
	    <form:input path="mat_description"/>
	    
	   </td>
	   <td>
	    <form:input path="mat_price"/>
	    
	   </td>
	  <td>
	  	<a href="#" id="insert-field">feilds</a>
	  </td>
	</tr>
	</table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td colspan="5">
	  <font color="#573801" face="verdana" size="2"><strong>Travel & Miscellaneous</strong></font>
	  
	 </td>
	 </tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Quantity</font>
	   </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Description</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Price</font>
	   </strong></td>
	 
	</tr>
	<tr>
	  <td>
		<form:input path="misc_date" id="gendate3"/>
	   
	   </td>
	   <td>
	   	<form:input path="mis_quantity"/>
	    
	   </td>
	   <td>
	    <form:input path="mis_description"/>	
	    
	   </td>
	   <td>
	    <form:input path="mis_price"/>
	    
	   </td>
	   
	</tr>
	</table>
  </td>
 </tr>
 <tr>
  <td align="center">
  <input type="submit" value="Submit"/>
   
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