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
                    <jsp:include page="invoice_header.jsp" flush="true"/> 	 
            </div>
		</div>
        
       
        <div class="Content">
<form:form action="soutofstock.erp" method="post" commandName="outOfStockNoticeBean" id="outstock">
<fieldset>
<legend>Out of Stock</legend>
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">

 <tr>
  <td>
   <table align="center" bgcolor="#FADFC3" border="1" bordercolor="#F0B269" width="800">
   
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Order No#</font>
	 </td>
	 <td>
	<form:input path="orderno"/>	 
	  
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Date</font>
	 </td>
	 <td>
	  <form:input path="date" id="gendate1"/>
	  
	 </td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">Customer</font>
	   </td>
	   <td>
	  	<form:input path="custname"/>
	    
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
	   <font color="#573801" face="verdana" size="2">Address</font>
	  </td>
      <td>
	   <form:input path="address"/>
	   
	  </td>
      <td>
	    <font color="#573801" face="verdana" size="2">City</font>
	   </td>
	   <td>
	   <form:input path="city"/>
	    
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">State</font>
	  </td>
	  <td>
	   <form:input path="state"/>
	   
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Zip</font>
	  </td>
	  <td>
	   <form:input path="zip"/>
	   
	   </td>
	 </tr>
	 
	 
   </table> 

  
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800"bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td width="259">
	  <font color="#573801" face="verdana" size="2">Qty</font>
	 </td>
	 <td width="259">
	  <font color="#573801" face="verdana" size="2">Item/Description</font>
	 </td>
	 <td width="260">
	  <font color="#573801" face="verdana" size="2">Estimated Shipping Date</font>
 	 </td>
	</tr>
	<tr>
	 <td>
	  <form:input path="qnty"/>
	  
	 </td>
	 <td>
	  <form:input path="item"/>
	  
	  
	 </td>
     <td>
	  
	  <form:input path="esdate"/>
	 </td>
	</tr>
	 
   </table>
  </td>
 </tr>
 <tr>
  <td align="center">
   <font color="#573801" face="verdana" size="2">We cannot fill your order at this time.<br>The items listed above are temporarily out of stock.
We apologize for the inconvenience.</font>
  </td>
 </tr>
 <tr>
  <td align="center">
  <form:button>submit</form:button>
   
  </td>
 </tr>
 
</table>
</fieldset>
</form:form>
</div></div>
<% }
else
{
response.sendRedirect("login.erp");
}%>	
</body>
</html>
