<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
alert('Hello!');	
	$.get('viewpurchaseentryname.erp',function(data){
		alert('Hai!');
		$('#nameofitem').html(data);
	});
});

</script>
</head>
<%
 String username=(String)session.getAttribute("uname");
 String pwd=(String)session.getAttribute("pswd");
 System.out.println("hi"+username);
 System.out.println("hi"+pwd);
 if(pwd!=null)
 {%>
<body>
<center><h3>ERP</h3></center><hr/>
	<div class="mainframe">
    	<div class="titleform">
			<div id="logo"></div>
            <div class="title_app">
            	HR 
            </div>
            <div>
                   <span id="loginby">Welcome:&nbsp; <%=username %></span>
                   <jsp:include page="in_header.jsp" flush="true"/>
            </div>
		</div>
        
       
        <div class="Content">
<fieldset>
<legend>Purchase Return</legend>


<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">

<form:form action="spurchasereturnform.erp" method="post" commandName="inPurchaseReturnBean" id="purchasereturn">

 
 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
	  
	 <form:input path="today" id="gendate1"/>  
 </td>
	 
 </tr>

 
 <tr>
  <td> 
  	
 	<font color="#573801" face="verdana" size="2">Party Name
   </font> 
  </td>
	<td>
	<form:input path="partyname"/>
	
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	
 	<font color="#573801" face="verdana" size="2">Quatation No.
   </font> 
  </td>
	<td>
	<form:input path="quantityrequired"/>
	
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	
 	<font color="#573801" face="verdana" size="2">Item Code
   </font> 
  </td>
	<td>
	<form:input path="itemcode"/>
	
    </td>
  </tr>
  <tr>
  <td> 
  
 <font color="#573801" face="verdana" size="2">Name of Item
   </font> 
  </td>
	<td>
	<form:select path="nameofitem" id="nameofitem">
	<form:option value="TV">TV</form:option>
	</form:select>
  </td>
  </tr>
 <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   <td>
   <form:input path="qty"/>
    
   </td>
  </tr>
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Measurement
   </font>
  </td>
  <td >
	
   <form:input path="units"/>
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Rate(Rupees)
   </font>
  </td>
  <td>
  <form:input path="rate" id="irate" onBlur="f();"/>
   
  </td>
 </tr>
  

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Amount
   </font>
  </td>
  <td >
  <form:input path="amount"/>
   
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
		<form:button>Submit</form:button>
		
	</td>
</tr>  
</form:form>   
</table>
</fieldset>
</div>
                </div>
        
	</div>
<% }
else
{
response.sendRedirect("login.erp");
}%>	
</body>
</html>
