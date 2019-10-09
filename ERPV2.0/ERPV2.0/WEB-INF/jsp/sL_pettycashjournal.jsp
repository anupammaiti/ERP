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
	<legend>Petty Cash Journal</legend>

<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <form:form action="spettycashjournal.erp" method="post" commandName="pettyCastBean">
  
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 
	 <tr>
	  
	 
	  <td width="416">
	   <font color="#573801" face="verdana" size="2"><strong>Dept</strong></font>
<form:select path="department">
<form:option value="sales">sales</form:option>
<form:option value="finance">finance</form:option>
<form:option value="account">account</form:option>
</form:select>
	   
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	
	 <tr>
	  <td width="82">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  <td width="95">
	    <strong><font color="#573801" face="verdana" size="2">Voucher#</font>
	    </strong></td>
	 
	   <td width="114">
	     <strong><font class="#573801" face="verdana" size="2">Payee</font>
	     </strong></td>
	   
	
	  <td width="112">
	     <strong><font color="#573801" face="verdana" size="2">Approved By </font>
	     </strong></td>
	   <td width="77">
	     <strong><font color="#573801" face="verdana" size="2">Total</font> 
	     </strong></td>
	   <td width="80">
	     <strong><font color="#573801" face="verdana" size="2">Balance</font>
	     </strong></td>
	  
	 </tr>
	 <tr>
	  <td>
	  <form:input path="date" id="gendate1"/>
	   
	  </td>
	  <td>
	   <form:input path="vocher"/>
	   
	  </td>
	  <td>
	   <form:input path="payee"/>
	   
	  </td>
	  
	   <td>
	  <form:input path="approvedby"/>
	    
	   </td>
	   <td>
	    <form:input path="total"/>
	    
	    </td>
		<td>
		<form:input path="balance"/>
		 
		</td>
		
	 </tr>
	<tr>
	 <td><strong><font color="#573801" face="verdana" size="2">Audited By</font></strong></td>
	 <td colspan="2">
	   <form:input path="auditedby"/>
	   
	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Approved By</font>
	   </strong></td>
	 <td colspan="4">
	 <form:input path="approvedby1"/>
	 
	 </td>
	 </tr>
	 <tr>
	  <td colspan="9" align="center">
	  	<form:button>Submit</form:button>
	  	
	  </td>
	  </tr>




	</table>
   </td>
  </tr>
  
  </form:form>
</table>
</fieldset></div>
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