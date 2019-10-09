<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/jQuery.Validate.min.js"></script>
<script type="text/javascript" src="js/erp_validations.js"></script>

 </head>
<%
 String username=(String)session.getAttribute("uname");
 String pwd=(String)session.getAttribute("pswd");
 System.out.println("hi"+username);
 System.out.println("hi"+pwd);
 if(pwd!=null)
 { %>
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
            <jsp:include page="header.jsp" flush="true"/> 	 
            </div>
		</div>
        <div class="Content">

<fieldset><legend>Leave Application</legend>
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center" background="images/bg.jpg">
  <tr>
  
  </tr>
    <tr>
   <td>
  

   </td>
  </tr>
  
</table>
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>
<table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form:form action="sleave.erp" method="post" commandName="leaveApplicationBean" id="leave-form">

 <tr>
  <td>
   <h3 align="center"><font color="#573801">Leave Application</font></h3>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" bgcolor="#FADFC3" bordercolor="#F0B269" border="1">
    <tr>
	 <td>
	 <font color="#573801" size="4">1.Name</font>
	  </td>
	  <td>
		<form:input path="name" id="name"/>
	   
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">2.Company</font>
	 </td>
	 <td>
	 <form:input path="company" id="company"/>
	  
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">3.Employee Code</font>
	 </td>
	 <td>
	  <form:input path="employeecode" id="employeecode"/>
	  
	 </td>
	</tr>
	<tr>
	<td>
	 <font color="#573801" size="4">4.Designation</font>
	</td>
	<td>
	<form:input path="designation" id="designation"/>
	 
	</td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">5.Purpose Of Leave</font>
	 </td>
	 <td>
	 <form:input path="purposeofleave" id="purposeofleave"/>
	  
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <font color="#573801" size="4">6.Address While On Leave</font>
	 </td>
	 <td>
	  <form:input path="addressonleave" id="addressonleave"/>
	  
	 </td>
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align="center">
   <table align="center" bordercolor="#F0B269" border="1">
    <tr>
	 <td width="105" align="center">
	   <font color="#573801" size="4">Date</font>
	  </td>
	 <td width="233" align="center">
	   <font color="#573801" size="4">Leave Applied For</font>
	 </td>
	</tr>
	<tr>
	 <td>
	  <table align="center"  bordercolor="#573801">
	   <tr>
	    <td align="center">
		 <font color="#573801" size="3">From</font>
		</td>
		<td align="center">
		 <font color="#573801" size="3">To</font>
		</td>
	   </tr>
	   <tr>
	    <td>
		<form:input path="fromdate" id="fromdate"/>
		 
		</td>
		 <td>
		 <form:input path="todate" id="todate"/>
		 
		 </td>
	   </tr>
	  </table>
	 </td>
	 <td>
	  
	  <table width="232"  align="center" bordercolor="#573801">
	   <tr>
	     <td width="51" align="center">
		  <font color="#573801" size="3">CL</font>
		</td>
		<td width="51" align="center">
		 <font color="#573801" size="3">SL</font>
		</td>
		<td width="51" align="center">
		 <font color="#573801" size="3">EL</font>
		</td>
		<td width="51" align="center">
		 <font color="#573801" size="3">LOP</font>
		</td>
	   </tr>
	   <tr>
	    <td>
		 <form:input path="cl" id="cl"/>
		 
		</td>
		<td>
		 <form:input path="sl" id="sl"/>
		  
		</td>
		<td>
		
		<form:input path="el" id="el"/>
		</td>
		<td>
		<form:input path="lop" id="lop"/>
		 
		</td>
		 
	   </tr>
	  </table>
	 </td>
	</tr>
	
   </table>
  </td>
  </tr>
  <tr>
	 <td align="center">
	  <form:button value="submit">Submit</form:button>
	  
	 </td>
	</tr>
	
	</form:form>
</table>
</td>
</tr>
</table>
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
