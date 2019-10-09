<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset='utf-8'/>
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
		<fieldset><legend>Purchase</legend>
<form:form action="sfn_vocher_purchase.erp" method="post" commandName="vocherPurchaseBean">
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">

	<form:input path="reciptno" id="purchasereciptno"/>

  </td>
 </tr>

 <tr>
 <td> <font color="#573801" face="verdana" size="2">
    Ref:
   </font></td>
 <td> 
	 	<form:input path="refenceno"/> 
</td>
 </tr>

 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
 	<form:input path="date" id="gendate1"/>
 	  
 </td>
 </tr>

 
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Payment Mode
   </font>
   </td>
   <td>
	<form:select path="paymentmode">
		<form:option value=""></form:option>
	</form:select> 
	 
   </td>
 </tr>
<tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   <form:input path="currentbalance"/>
   
  </td>
 </tr>

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
   Purchase Ledger
   </font>
  </td>
  <td>

   <form:input path="purchaseledger" />
   
  </td>
  </tr>

  <tr>
  <td> 
  
 <font color="#573801" face="verdana" size="2">Name of Item
   </font> 
  </td>
	<td>
	<form:input path="nameofitems"/>
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   <td>
    <form:input path="quantity" id="quantity"/>
   </td>
  </tr>


  

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Units
   </font>
  </td>
  <td >

   <form:select path="units">
   	<form:option value=""></form:option>
   </form:select>
	  
	  
   
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Rate(Rupees)
   </font>
  </td>
  <td>
  	<form:input path="rate" id="rate"/>
   
  </td>
 </tr>
  

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Amount
   </font>
  </td>
  <td >
   <form:input path="amount" id="total"/>
   
  </td>
 </tr>
  
  
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
   <form:textarea path="narration"/>
   
  </td>
 </tr>
  <tr>
  	<td>
  	</td>
  	<td>
  		<input type="submit" value="Submit"/>
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