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
	<legend>Purchase Entry Form</legend>
	<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
<form:form action="spurchaseentryform.erp" method="post" commandName="purchaseEntryFormBean" id="purchaseentry"> 
 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
 <form:input path="today" id="gendate1"/>
 
 </tr>

 
 
  <tr>
  <td> 
 
 	<font color="#573801" face="verdana" size="2">Party Name
   </font> 
  </td>
	<td>
	<form:input path="partname"/>
	
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	
 	<font color="#573801" face="verdana" size="2">Quatation No.
   </font> 
  </td>
	<td>
	<form:input path="qutationno"/>
	
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
	<form:input path="nameofitem"/>
	
    </td>
  </tr>
  
  
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   <td>
    <form:input path="qnty" id="iqty"/>	
    
   </td>
  </tr>


  

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Measurment
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
   <form:input path="amount" id="iamount"/>

  </td>
 </tr>
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
	<form:textarea path="narration" />
   
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
