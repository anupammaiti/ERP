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
	<legend>Order Form</legend>


<form:form action="sorderform.erp" method="post" commandName="orderFormBean">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td>
   <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Number</font>
	   </strong></td>
	 <td>
	 <form:input path="number"/>
	 
    
    </td>
	</tr>
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
		<form:input path="today" id="gendate1"/>
	  
	
	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Sales Person</font>
	   </strong></td>
	  <td>
	<form:input path="salesperson"/>
	  
	
	  </td> 
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>Sold To</strong></font>
	<form:input path="soldto"/>
	  
	
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2"><strong>Ship To</strong></font>
		<form:input path="shipto"/>
	   
	
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"> <strong>Phone</strong>&nbsp;&nbsp; </font>
		<form:input path="phone"/>
	  
	
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>Ship By</strong></font>
	  
	  
	  <form:input path="shipby"/>
 	 </td>
	 </tr>
   </table>
     </td>
 </tr>
 <tr>
  <td>
  <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
    <td>
	  <strong><font color="" face="verdana" size="2">
	  Quantity
	  </font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	  Item/Description
	  </font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	  Price/Item
	  </font>
	  </strong></td>
	 
   </tr>
   <tr id="fields">
    <td height="30">
	 <form:input path="quantity"/>
	 
	 </td>
	 <td>
	 <form:input path="itemdesc"/>
	  
	 </td>
	 <td>
	  <form:input path="price"/>
	  
	 </td>
	<td>
		<a href="#" id="insert-field">fields</a>
	</td>
	<td>
		<a href="#" id="erase-field">erase</a>
	</td>	
    </tr>
    <tr>
	 <td colspan="4" align="center">
		<form:button>Submit</form:button>
	    	
	 </td>
	 </tr>
	 </table>
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