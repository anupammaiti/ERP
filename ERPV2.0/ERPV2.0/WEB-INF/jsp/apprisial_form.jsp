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
	<legend>Apprisial Form</legend>
<!-- sapprisial_form.erp -->
<form:form action="apprisial_form.erp" method="post" commandName="apprisialFormBean" id="app-form">
<table align="center" bordercolor="#F0B269" bordercolor="#F0B269" width="800">
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269"bgcolor="#FADFC3">
    <tr>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   We have carefully and thoroughly examined the article(s) listed below belonging to:</font>
	  </td><br>
      <td>
	   <font color="#573801" face="verdana" size="2">Name:</font>
		<form:input path="name"/>
	   
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Address:</font>
	   <form:textarea path="address"/>
	   
	  </td>
	</tr>
	<tr>
    <td colspan="3">
	  <font color="#573801" face="verdana" size="2">
	  This estimation is based on the current retail value and is not intended to include any applicable state or federal tax. In the event of any damage to the item(s) described below, the Appraiser is not responsible for the cost of the replacement of said item(s).
	  </font>	 </td>
 	 </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" bordercolor="#F0B269" bgcolor="#FADFC3" border="1" width="800">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Item</font>
	   </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Description</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Appraised Value</font>
	    </strong></td>
	</tr>
	<tr id="fields">
	 <td>
	 	<a href="#" id="insert-field">insert</a>
	 </td>
	 <td>
	 	<a href="#" id="erase-field">delete</a>
	 </td>
	 <td>
	 </td>
	</tr>
	
	<tr>
	 <td colspan="3">
	  <font color="#573801" face="verdana" size="2">The Appraiser assumes no liability for any action taken based on this appraisal</font>
	 </td>
	 </tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Appraisal Name</font>
	 </td>
	 <td>
	  <input type="text" name="appraisalname" id="apname">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Date</font>
	  <input type="text" name="gendate" id="gendate1">
	  </td>
	</tr>
	 <tr>
	  <td colspan="3" align="center">	  
	  <input type="submit" value="submit"/>
	  
	  </td>
	  </tr>
	  <tr>
	  	<td> 
	  		<input type="text" id="text1"/>
	  	</td>
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
