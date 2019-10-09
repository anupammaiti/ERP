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
        <legend>Sales Order</legend>
        
<form:form action="ssales_order.erp" method="post" commandName="salesOrderBean">
<table align="center" width="800" bgcolor="#FADFC3" bordercolor="#F0B269" border="1">

 <tr>
  <td>
   <table align="center" border="1" width="800" 	bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td width="363" rowspan="3">
	  <font color="#573801" face="verdana" size="2">To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font> 
	<form:textarea path="toaddress"/>
	   
	 </td>
	 <td width="421">
	  <font color="#573801" face="verdana" size="2">Customer#&nbsp;&nbsp;</font>
	  <form:input path="customer"/>
	  
	 </td>
	 
	 </tr>
     <tr>
	 <td>
	   <font color="#573801" face="verdana" size="2">Terms&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
	  <form:input path="terms"/>
	   
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">SalesPerson</font>
	   <form:input path="salesperson"/>
	   
	  </td>
	
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td width="367">
	  <font color="#573801" face="verdana" size="2">Ship to</font>
	  <form:textarea path="shipto"/>
	  
	 </td>
	 <td width="417">
	  <font color="#573801" face="verdana" size="2">Ship WeekOf</font>
	  <form:input path="shipweek"/>
	  
	  </td>
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269"  bgcolor="#FADFC3" border="1">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Item
	  </font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Quantity Ordered</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Description</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Unit Count</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Unit Price</font>
	</td>
	
	</tr>
	<tr>
	 <td>
	  <form:input path="item"/>
	  
	  </td>
	  <td>
	  <form:input path="quantityordered"/>
	   
	  </td>
	  <td>
	   <form:textarea path="description"/>
	   
	  </td>
	  <td>
	   <form:input path="unitcount"/>
	   
	  </td>
	  <td>
	   <form:input path="unitprice"/>
	   
	  </td>
	  
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td rowspan="3">
	  <font color="#573801" face="verdana" size="2">Special Instructions</font>
	  <p>
	  <form:textarea path="specilainstructions"/>
	   
	  </p>
	 </td>
	 <td rowspan="3">
	  <font color="#573801" face="verdana" size="2">Date</font>
	  <form:input path="date" id="gendate1"/>
	  
	 </td>
	  <td height="36">
	  <font color="#573801" face="verdana" size="2">Approval Name&nbsp;</font>
	  <form:input path="approvalname"/>
	  
	  </td>
	</tr>
	<tr>
	<td height="34">
	 <font color="#573801" face="verdana" size="2">Purchaser Name</font>
	  <form:input path="purchasername"/>
	  
	  </td>
	  
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
	  <form:input path="title"/>
	  
	 </td>
	</tr>
	<tr>
	<td colspan="3" align="center">
	 <form:button>Submit</form:button>
	  
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