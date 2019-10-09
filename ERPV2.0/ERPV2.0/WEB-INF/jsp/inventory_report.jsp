 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
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
<fieldset>
<legend class="text1"><b>Inventory Report</b></legend>

<form:form action="sinrep.erp" method="post" commandName="inventoryReportBean" id="in-report">
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
  <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3"bordercolor="#F0B269">
    <tr>
	 <td>
	   <font color="#573801" face="verdana" size="2">Date</font>
	  </td>
	  <td>
	  <form:input path="today" id="gendate1"/>
	   
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Item</font>
	  </td>
	  <td>
	  <form:input path="itemname"/>
	   
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Dept/Location</font>
	   </td>
	   <td>
	   <form:input path="deptlocation"/>
	    
	    </td>
	 </tr>
    </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr><td colspan="4" align="center">
	  <font color="#573801" face="verdana" size="2">Received</font>
	  </td><td colspan="4" align="center">
	  <font color="#573801" face="verdana" size="2">Shipped</font>
	 </td>
    </tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Date IN</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">P.O.#</font>
 	 </td>
	 <td>
		  <font color="#573801" face="verdana" size="2">Amount</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Received By</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Date Out</font>
	   </td>
	   <td>
	    <font color="#573801" face="verdana" size="2">Invoice</font>
	   </td>
	   <td>
	    <font color="#573801" face="verdana" size="2">Amount</font>
	    </td>
		<td>
		 <font color="#573801" face="verdana" size="2">StockLeft</font>
		</td>
	</tr>
	<tr>
	 <td>
	 <form:input path="datein"/>
	  
	 </td>
	 <td>
	 <form:input path="po"/>
	  
	 </td>
	 <td>
	  <form:input path="amount1"/>
	  
	 </td>
	 <td>
	 <form:input path="recivedby"/>
	  
	 </td>
	 <td>
	 <form:input path="dateout"/>
	 
	 </td>
	 <td>
	 <form:input path="invoice"/>
	  
	  </td>
	  <td>
	  <form:input path="amount1"/>
	  </td>
	  <td>
	   <form:input path="Stockleft"/>
	  </td>
	  
	 </tr>
	<tr><td colspan="8" align="center">
	<input type="submit" value="Submit"/>
	  
	  </td>
    </tr>
    </table>
  </td>
   </tr>
</table>
</form:form>
</fieldset>
</div></div>
<% }
else
{
response.sendRedirect("login.erp");
}%>	
</body>
</html>
