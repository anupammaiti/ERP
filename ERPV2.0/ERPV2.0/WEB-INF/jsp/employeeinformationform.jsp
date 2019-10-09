<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<!--  <script type="text/javascript" src="js/jQuery.Validate.min.js"></script>-->
<script type="text/javascript" src="js/erp_validations.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
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
        <a href="staticjasperreport.erp">report</a>
<fieldset>
<legend class="text1">Employee Form</legend>
<form:form action="semployee.erp" commandName="employeeBean" method="post" id="employeeform">



<table align="center" class="text1" >

 
 
 <tr>
   <td >Company name
    
   </td>
    <td>
   <form:input path="companyname" id="cname"/>
    
   </td>
  </tr>
 <tr>
  <td>Emp No.
    </td>
  <td>
   <form:input path="empno"/>
   
  </td>
 </tr>
 <tr>
  <td>Name in Full
   
  </td>
  <td>
   
   <form:input path="name" id="name"/>
  </td>
 </tr>
 <tr>
  <td>Name to be appeaning in HRIS
   
  </td>
  <td>
   
   <form:input path="nameinhris" id="nameinhris"/>
  </td>
 </tr>
 <tr>
  <td>Father's name
   
  </td>
  <td>
   
   <form:input path="fathername" id="fathername"/>
  </td>
 </tr>
  
  <tr>
  <td>Date of Birth
   
  </td>
  <td>
   
   <form:input path="dob" id="dob"/>
  </td>
 </tr>
 <tr>
  <td>Sex
   
  </td>
  <td>
   <form:select path="sex" id="gender">
   <form:option value=""></form:option>
   <form:option value="m">male</form:option>
   <form:option value="fm">female</form:option>
   </form:select>
  </td>
 </tr>
 <tr>
  <td>Joining Date
   
  </td>
  <td>
   
   <form:input path="joiningdate" id="joiningdate"/>
  </td>
 </tr>
 <tr>
  <td>Designation
   
  </td>
  <td>
   
   <form:input path="designation" id="designation"/>
  </td>
 </tr>
 <tr>
  <td>Department
   
  </td>
  <td>
   
   <form:input path="department" id="department"/>
  </td>
  </tr>
  <tr>
   <td>Reporting to
    
   </td>
   <td>
    
    <form:input path="reportingto" id="reportingto"/>
   </td>
  </tr>
  <tr>
   <td>Job Level
    
   </td>
   <td>
    
    <form:input path="joblevel" id="joblevel"/>
   </td>
  </tr>
  <tr>
   <td>Location
    
   </td>
   <td>
    
    <form:input path="location" id="location"/>
    </td>
  </tr>
  <tr>
   <td>Manner of Entry
    
   </td>
   <td>
    
	<form:select path="entrymanner" id="entrymanner">
	<form:option value=""></form:option>
	<form:option value="placement">Placement</form:option>
	<form:option value="direct">Direct</form:option>
	<form:option value="campus">Campus</form:option>
	<form:option value="Refferal">Refferal</form:option>
	<form:option value="advt">Advt</form:option>
	<form:option value="consultant">consultant</form:option>
	</form:select>
   </td>
  </tr>
   <tr>
   <td>Nomination
    
   </td>
   <td>
    
    <form:input path="nomination" id="nomination"/>
   </td>
  </tr>
  <tr>
   <td>Birth Place
    
   </td>
   <td>
    
    <form:input path="birthplace" id="birthplace"/>
   </td>
  </tr>
  <tr>
   <td>Marital Status
    
   </td>
    <td>
    
    
    <form:select path="maritalstatus" id="matirnity">
    	<form:option value=""></form:option>
    	<form:option value="Yes">Yes</form:option>
    	<form:option value="No">No</form:option>	
    </form:select>
   </td>
  </tr>
  <tr >
   <td>Marriage Date
     
   </td>
   <td>
    
    <form:input path="marriagedate" id="maternityresult"/>
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Religion</font>
    
   </td>
   <td>
    
    <form:input path="religion" id="religion"/>
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >PAN Number</font>
    
   </td>
   <td>
    
    <form:input path="pannumber" id="pannumber"/>
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Passport Number</font>
    
   </td>
   <td>
    
    <form:input path="passportnumber" id="passportnumber"/>
   </td>
  </tr>
  <tr>
  	<td>
  		<font color="#573801"face="Verdana" size="2" >Bank Account</font>
  	</td>
  	<td>
  		<form:input path="bankaccount" id="bankaccount"/>
  	</td>
  </tr>
  <tr>
  	<td>
  		<font color="#573801"face="Verdana" size="2" >Pf No</font>
  	</td>
  	<td>
  		<form:input path="pfno"  id="pfno"/>
  		
  		
  	</td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Issued Date & Place</font>
    
   </td>
   <td>
    
    <form:input path="issueddateandplace" id="issueddate"/>
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Validity</font>
    
   </td>
   <td>
    
    <form:input path="validity" id="valid"/>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Qualification</font>
   </td>
   <td>
	<form:select path="qualification" id="qual">
		<form:option value=""></form:option>
		<form:option value="Doctorities">Doctorities</form:option>
		<form:option value="Professionals">Professionals</form:option>
		<form:option value="PG">PG</form:option>
		<form:option value="Technical">Technical</form:option>
		<form:option value="Graduates">Graduates</form:option>
		<form:option value="UnderGraduates">UnderGraduates</form:option>
	</form:select>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Present Salary</font>
   </td>
   <td>
    
    <form:input path="presentsalary" id="presentsalary"/>
   </td>
  </tr>
 
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Joining time Required</font>
   </td>
   <td>
    
    <form:input path="join_time_req" id="join_time"/>
   </td>
  </tr>
  <tr>
  	<td>
  		UserName
  	</td>
  	<td>
  		<form:input path="username" id="username"/>
  	</td>
  </tr>
  <tr>
  	<td>
  		Password
  	</td>
  	<td>
  		<form:password path="password" id="pswd"/>
  	</td>
  </tr>
  <tr>
   <td>
   </td>
    <td align="center">
	 
	 <form:button>Submit</form:button>
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
