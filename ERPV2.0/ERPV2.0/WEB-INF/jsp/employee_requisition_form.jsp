<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
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
	<fieldset><legend>Employee Requisition Form</legend>
 
 <table align="center" border="1" bordercolor="#F0B269" face="Verdana" bgcolor="#FADFC3">
  <form:form action="srequisition.erp" method="post" commandName="employeeRequisitionBean" id="emprequisition"> 

  <tr>
    <td width="342" bgcolor="#003333">
    
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" bgcolor="#FADFC3">
	
	  <tr>
	  <td width="106">
	<!--  <font color="#573801" face="Verdana" face="Verdana" size="4" >Position:</font>-->
	  <table>
	   <tr>
	    <td>
		 <font color="#573801" face="Verdana" size="2">New</font>
		</td>
		 <td>
		 <form:radiobutton path="position" value="new"/>

		</td>
	   </tr>
	   <tr>
	    <td>
		 <font color="#573801" face="Verdana" size="2">Replacement</font>
		 </td>
		 <td>
		 <form:radiobutton path="position" value="on"/>

		 </td>
	   </tr>
	    </table>
	   
	   
	    
	   
	  
	     
	   
	  </td>
	  <td width="484">
	     <table align="center" bgcolor="#FADFC3">
		  <tr>
		   <td>
		    <font color="#573801" face="Verdana" size="2">Company</font>
		    </td>
			<td>
			<form:input path="company" id="comname"/>

			</td>
		  </tr>
		  <tr>
		   <td>
		    <font color="#573801" face="Verdana" size="2">
			 Department
			</font>
		    </td>
			<td>
			<form:input path="department" id="dept"/>

			 </td>
		  </tr>
		  <tr>
		     <td>
		    <font color="#573801" face="Verdana" size="2">Location</font>
		   </td>
		   <td>
		   <form:input path="location"/>

		   </td>
		   </tr>
		   <tr>
		    <td>
			 <font color="#573801" face="Verdana" size="2">
			  Job Level
			  </font>
			 </td>
			 <td>
			 <form:input path="joblevel"/>

			 </td>
		   </tr>
		 </table>
	  </td>
	 </tr>
	 
	   </table>
	  </td>
	 </tr>
	 <tr align="center">
	  <td width="1" bgcolor="#003333" align="center" background="images/bg.jpg">
	    <font color="#FFFFFF" size="4">JobSpecification</font>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <table align="center">
	    <tr>
		 <td width="197">
		  <font color="#573801" face="Verdana" size="3"><b>Job Responsibilites</b></font>
		 </td>
		 <td width="200">
		  <font color="#573801" face="Verdana" size="3"><b>Specific Accountabilities</b></font>
		 </td>
		 <td width="238">
		  <font color="#573801" face="Verdana" size="3"><b>Skills Required</b></font>
		 </td>
		</tr>
		<tr>
		 <td>
		 <form:textarea path="jobresponsibilities"/>

		 </td>
		 <td>
		 <form:textarea path="specificaccountabilities"/>

		  </td>
		  <td>
		  <form:textarea path="skilrequired"/>

		  </td>
		</tr>
	 
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table width="654" align="center">
	 <tr bgcolor="#003333">
	  <td width="189" bgcolor="#003333" align="center" background="images/bg.jpg">
	   <font color="#FFFFFF" size="4">Qualification</font>
	  </td>
	  <td width="189" align="center" background="images/bg.jpg">
	   <font color="#FFFFFF" size="4">Experience</font>
	  </td>
	  <td width="260" align="center" background="images/bg.jpg">
	   <font color="#FFFFFF" size="4">Target Time</font>
	  </td>
	 </tr>
	 <tr>
	  <td align="center">

	   <form:input path="qualification"/>
	  </td>
	  <td align="center">

	   <form:input path="experience"/>
	  </td>
	  <td align="center">

	   <form:input path="targettime"/>
	  </td>
	 </tr>
	 </table>
   </td>
  </tr>
  <tr>
   <td bgcolor="#003333"  background="images/bg.jpg">
    <font color="#FFFFFF" size="4">Preferences</font>
   </td>
  </tr>
  <tr>
   <td>
     <table align="center" border="1"bordercolor="#F0B269" face="Verdana">
	  <tr>
	   <td width="157">
	    <font color="#573801" face="Verdana" size="2">Industry Specific</font>
	   </td>
	   <td width="201">
	    <font color="#573801" face="Verdana" size="2">Age Group:<form:input path="age"/> to<form:input path="ageto"/> Yrs</font>
	   </td>
	   <td width="232">
	    <font color="#573801" face="Verdana" size="2">Personality Traits</font>
	   </td>
	  </tr>
	  <tr>
	   <td>
	    
		<form:select path="industryspecific">
		<form:option value="SameNature"></form:option>
		<form:option value="Similar"></form:option>
		<form:option value="Any Type"></form:option>
		</form:select>
	   </td>
	   <td>
	    <font color="#573801" face="Verdana" size="2">Mobility:</font><font color="#573801" face="Verdana" size="3">
	    <form:input path="mobility"/>
	    
	   </td>
	   <td>
	   <form:input path="personalitytraits"/>
	    
	   </td>
	   </tr>
	   <tr>
	    <td>
		 <font color="#573801" face="Verdana" size="2">Organization Specific</font>
		</td>
		<td>
		 <font color="#573801" face="Verdana" size="2">Computer Literacy</font>
		</td>
		<td>
		 <font  color="#573801" face="Verdana" size="2">LeaderShip Qualities</font>
		</td>
	   </tr>
	   <tr>
	    <td>
		
		 <form:input path="organizationspecific"/>
		</td>
		<td>
		
		 <form:input path="computerliteracy"/>
		</td>
		<td>
		 a.
		 <form:input path="leadershipqualitiesa"/>
		 <p>b.<form:input path="leadershipqualitiesb"/></p>
		 
		 <p>c.<form:input path="leadershipqualitiesc"/></p>
		 
		 <P>d.<form:input path="leadershipqualitiesd"/></p>
		 
		</td>
	   </tr>
	   <tr>
	    <td>
		 <font color="#573801" face="Verdana" size="2">
		  Location Specific
&gt;		 </font>
		</td>
		<td>
		 a.<form:input path="locationspecifica"/>
		 
		 <p>b.<form:input path="locationspecificb"/></p>
		 
		 <p>c.<form:input path="locationspecificc"/></p>
		 
		</td>
		<td>
		 <font color="#573801" face="Verdana" size="4">
		   <font size="2">Gender Specific</font>		   
		 
		   <form:select path="genderspecific">
		   <form:option value="Male">Male</form:option>
		   <form:option value="Female">Female</form:option>
		   </form:select>
		 </font>
		</td>
	   </tr>
	</table>
   </td>
  </tr>
  <tr align="center">
   <td width="1" bgcolor="#003333" align="center" background="images/bg.jpg"> 
   
     <font color="#FFFFFF" size="4">IndentApproval</font>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center">
	 <TR>
	  <td>
	   <font color="#573801" face="Verdana" size="2">Indenter Name</font>
	  </td>
	  <td>
	   <font color="#573801" face="Verdana" size="2">Functional Head Name</font>
	  </td>
	  <td>
	   <font color="#573801" face="Verdana" size="2">Unit Head/Doreactor Approval</font>
	   </td>
	 </TR>
	 <tr>
	  <td align="right">
	
	   <form:input path="indentername"/>
	  </td>
	  
	  <td align="right">
	  <form:input path="functionalheadname"/>
	   
	  </td>
	  <td align="right">
	  <form:input path="unithead"/>
	   
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="Verdana" size="3">Date<form:input path="date1"/> </font>
	  </td>
	  <td>
	   <font color="#573801" face="Verdana" size="3">Date<form:input path="date2"/> </font>
	   </td>
	   <td>
	    <font color="#573801" face="Verdana" size="3">Date<form:input path="date3"/>  </font>
	   </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td align="center">
    
    <form:button value="Submit">Submit</form:button>
   </td>
  </tr>
  
  </form:form>
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
