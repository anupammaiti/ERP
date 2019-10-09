<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<script type="text/javascript" src="js/jQuery.Validate.min.js"></script>
<script type="text/javascript" src="js/erp_validations.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.get('gendpurchaseid.erp',function(data){
		
		$('#sno').val(data).attr("readonly",true);
	});
});
</script>
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
	<legend>
		Purchase Requisition
	</legend>

<form:form action="spurchase.erp" method="post" commandName="purchaseRequisitionBean" id="pr-form">

<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>


<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">

<tr>
 <td width="120">
   <font color="#573801" size="4">Sr No.</font>
   
 </td>
 <td width="120">
  <font color="#573801" size="4">Name of Item</font>
 </td>
 <td width="90">
  <font color="#573801" size="4">ItemCode</font>
 </td>
 <td width="120">
  <font color="#573801" size="4">Internal Code</font>
 </td>
 <td width="120">
  <font color="#573801" size="4">Qty Required</font>
 </td>
 <td width="175">
 
 <font color="#573801" size="4">Remarks</font>
 </td>
</tr>
<tr>
<td>
<form:input path="sno" id="sno"/>
</td>
<td>
<form:input path="itemname"/>
</td>
<td>
<form:input path="itemcode"/>
</td>
<td>
<form:input path="internalcode"/>
</td>
<td>
<form:input path="qntyrequired"/>

</td>
<td>
<form:textarea path="remarks"/>

</td>
</tr>

</table>
<table align="center">
 <tr>
 <td align="center">
  <input type="submit" value="Submit"/>
 </td>
 </tr>
</table>

 </td></tr></table></form:form></fieldset></div></div>
<% }
else
{
response.sendRedirect("login.erp");
}%>	
</body>
</html>
