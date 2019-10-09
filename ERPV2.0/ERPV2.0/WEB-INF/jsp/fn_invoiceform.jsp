<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>

</head>

<body>
<center>ERP</center>
<a href="fn_main.erp">Back</a>
<hr/>
<fieldset>
<legend>Invoice Form</legend>


<table align="center">
<tr>
<td>
<form:form action="sinvoice.erp" method="post" commandName="invoiceFormBean"> 
<table align="center" bordercolor="#F0B269" border="1" bgcolor="#FADFC3">

 <tr>
  <td>
    <strong><font color="#573801"   size="2" face="Verdana" >Customer Name & Address</font></strong>
  </td>
  <td>
  <form:textarea path="custname"/>
   
  </td>
  </tr>
  <tr>
  <td>
    <strong><font color="#573801" size="2" face="Verdana" >ID</font></strong>
  </td>
  <td>
   <form:input path="invoiceid"/>
   
  </td>
  </tr>
  <tr>
  <td>
    <strong><font color="#573801" size="2" face="Verdana" >Invoice NO.</font></strong>
  </td>
  <td>
   
   <input type="text" name="invoiceno">
  </td>
  </tr>
  <tr>
  <td>
    <strong><font color="#573801" size="2" face="Verdana" >Date</font></strong></td>
  
   <td>
   <form:input path="today" id="gendate"/>
   
  </td>
 </tr>
 <tr>
  <td><font color="#573801" size="2" face="Verdana"><strong>Refference No.</strong> </font></td>
  <td>
   <form:input path="referenceno"/>
   
  </td>
 </tr>
 <tr>
  <td><font color="#573801" size="2" face="Verdana"><strong>Dept</strong> </font></td>
  <td>
  <form:select path="department">
  	<form:option value="sales">Sales</form:option>
  	<form:option value="finance">Finance</form:option>
  	<form:option value="accounts">Accounts</form:option>
  </form:select>
   
  </td>
 </tr>
</table>
 <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
    <td>
	  <strong><font color="#573801" size="2" face="Verdana" >Srl.Part Number</font></strong>
	</td>
	<td>
	  <strong><font color="#573801" size="2" face="Verdana" >Name</font></strong>
	</td>
	<td>
	  <strong><font color="#573801" size="2" face="Verdana" >Unit Price</font></strong>
	</td>
	<td>
	  <strong><font color="#573801" size="2" face="Verdana" >Number of Items </font></strong></td>
   </tr>
   <tr>
    <td>
	
	 <input type="text" name="srlno">
	 </td>
	 <td>
	  <input type="text" name="name">
	 </td>
	 <td>
	  <input type="text" name="unitprice">
	 </td>
	 <td>
	  <input type="text" name="price">
	 </td>
	 
   </tr>
 </table>
 <table width="256" align="center">
  <tr>
   <td width="248" align="center">
     <p><font color="#573801" size="2" face="Verdana" >Service Tax @12%</font></p>
     <p><font color="#573801" size="2" face="Verdana" >VAT @ 12.5%</font></p>
     <p><font color="#573801" size="2" face="Verdana" >Edu. Cess On services Tax @3%</font>
</p>
     <p>
     <form:button>Submit</form:button>
     </p></td>
  </tr>
</table>

</form:form>
</fieldset>
</body>
</html>
