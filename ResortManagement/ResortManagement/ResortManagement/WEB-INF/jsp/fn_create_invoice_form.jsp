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
<script type="text/javascript" src="js/form_validation.js"></script>
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
			<fieldset>
				<legend>
					Invoice Form
				</legend><span id="successmsg">${successmsg }</span>
<table align="center" class="form_table">
	<tr>
	<td>
		<form:form action="fn_created_invoice_form.res" method="post" commandName="invoiceFormBean" id="invoice_form"> 
		<table align="center" cellpadding="2px" cellspacing="0" >
		<tr>
  			<td>
    			Customer Name & Address
  			</td>
  			<td>
  				<form:textarea path="custname" id="getdata1"/>
			</td>
  	  </tr>
  	  <tr>
  			<td>
    			ID
  			</td>
  			<td>
   				<form:input path="invoiceid" id="incid"/>
   		    </td>
  	  </tr> 
  	  <tr>
  			<td>
    			Invoice NO.
  			</td>
  			<td>
			  <input type="text" name="invoiceno" id="incno">
			  
  			</td>
  	</tr>
  	<tr>
  			<td>
    			Date
  
   			<td>
   				<form:input path="today" id="gendate1" onfocus="showCalendarControl(this);" readonly="true"/>
   
  			</td>
 	</tr>
 	<tr>
  			<td>Reference No.
  			<td>
   				<form:input path="referenceno" id="refno"/>
   			</td>
 	</tr>
 	<tr>
  			<td>Department
  			<td>
  				<form:select path="department" id="dept">
  					
  				</form:select>
   
  			</td>
 	</tr>
</table>
<br/>
<table align="center"  cellspacing="0" cellpadding="0">
   <tr>
    <td>
	  Srl.Part Number
	</td>
	<td>
	  Name
	</td>
	<td>
	  Unit Price
	</td>
	<td>
	  Number of Items 
   </tr>
   <tr>
    <td>
	
	 <form:input path="srlno" onblur="return numeric(this.value);"/>
	 </td>
	 <td>
	  
	  <form:input path="name" onblur="return alphabetic(this.value);"/>
	 </td>
	 <td>
	  
	  <form:input path="unitprice" id="price" onblur="return numeric(this.value);"/>
	 </td>
	 <td>
	    <form:input path="quantity" id="quantity"/>
	 </td>
	 
   </tr>
   <tr>
   	<td height="10px">	
   	</td>
   </tr>
   <tr>
   <td>Total Amount</td>
   	<td>
   		Service Tax
   	</td>
   	<td>
   		VAT 
   	</td>
   	<td>
   		
   		Net Amount
   	
   	</td>
   </tr>
   <tr>
   	<td>
   		<form:input path="totalamount" readonly="true" id="totalamount"/>
   	</td>
   	<td>
   		<form:input path="servicetax" readonly="true" id="servicetax"/>
   	</td>
   	<td>
   		<form:input path="vat" readonly="true" id="vat"/>
   	</td>
   	<td>
   		<form:input path="netamount" readonly="true" id="net"/>
   	</td>
   </tr>
   <tr>
   	<td height="10px">	
   	</td>
   </tr>
   
   
   
 </table>
 <table width="256" align="center">
  <tr>
   <td width="248" align="center">
     <p>Service Tax @12%</p>
     <p>VAT @ 12.5%</p>
     <p>Edu. Cess On services Tax @3%</p>
     <p>
     <input type="image" src="images/submit_button.jpg" id="button1"/>
     </p></td>
  </tr>
  <tr>
	<td>
			<%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="dept1" id="dept1"/>
	</td>
</tr>
</table>

</form:form>

</td></tr>

</table></fieldset>


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