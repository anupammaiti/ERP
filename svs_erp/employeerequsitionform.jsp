<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="800"><img src="images/banner.jpg" width="800"></td>
  </tr>
  <!--  <tr>
   <td>
  <table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/finance.jpg" width="119"></td>
    <td><img src="images/project-management.jpg" width="119"></td>
    <td><img src="images/inventory.jpg" width="119"></td>
    <td><img src="images/sales.jpg" width="119"></td>
    <td><img src="images/maintenance.jpg" width="119"></td>
    <td><img src="images/power.jpg" width="119"></td>
    <td><img src="images/human-resources.jpg" width="119"></td>
  </tr>
</table>

   </td>
  </tr>-->
  
</table>
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>
<form action="specific.jsp">
 
 <input type="hidden" name="username" value="hr_pranam">
 <input type="hidden" name="password" value="hr_pranam">
  <input type="image" src="images/home.jpg">
 </form> 
 <h3 align="center"> <font color="#573801" face="Verdana" size="3">Employee Requsition Form</font></h3>
 <table align="center" border="1" bordercolor="#F0B269" face="Verdana" bgcolor="#FADFC3">
  <form action="employeerequsition.jsp" method="post">
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
		 <input type="radio" name="position" value="New">
		</td>
	   </tr>
	   <tr>
	    <td>
		 <font color="#573801" face="Verdana" size="2">Replacement</font>
		 </td>
		 <td>
		   <input type="radio" name="position" value="Replacement">
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
			 <input type="text" name="company">
			</td>
		  </tr>
		  <tr>
		   <td>
		    <font color="#573801" face="Verdana" size="2">
			 Department
			</font>
		    </td>
			<td>
			 <input type="text" name="department">
			 </td>
		  </tr>
		  <tr>
		     <td>
		    <font color="#573801" face="Verdana" size="2">Location</font>
		   </td>
		   <td>
		    <input type="text" name="location">
		   </td>
		   </tr>
		   <tr>
		    <td>
			 <font color="#573801" face="Verdana" size="2">
			  Job Level
			  </font>
			 </td>
			 <td>
			  <input type="text" name="joblevel">
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
		  <textarea name="jobresponsibilities"></textarea>
		 </td>
		 <td>
		  <textarea name="specificaccountabilities"></textarea>
		  </td>
		  <td>
		   <textarea name="skillsrequired"></textarea>
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
	   <input type="text" name="qualification">
	  </td>
	  <td align="center">
	   <input type="text" name="experience">
	  </td>
	  <td align="center">
	   <input type="text" name="targettime">
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
	    <font color="#573801" face="Verdana" size="2">Age Group:<input type="text" name="age" size="3"> to<input type="text" name="ageto" size="3"> Yrs</font>
	   </td>
	   <td width="232">
	    <font color="#573801" face="Verdana" size="2">Personality Traits</font>
	   </td>
	  </tr>
	  <tr>
	   <td>
	    <select name="industryspecific">
		 <option>Same Nature</option>
		 <option>Similar</option>
		 <option>Any Type</option>
		</select>
	   </td>
	   <td>
	    <font color="#573801" face="Verdana" size="2">Mobility:</font><font color="#573801" face="Verdana" size="3">
	    <input type="text" name="mobility"></font>
	   </td>
	   <td>
	    <input type="text" name="personalitytraits">
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
		 <input type="text" name="organizationspecific">
		</td>
		<td>
		 <input  type="text" name="computerleteracy">
		</td>
		<td>
		 a.<input type="text" name="leadershipqualitiesa">
		 <p>b.<input type="text" name="leadershipqualitiesb"></p>
		 <p>c.<input type="text" name="leadershipqualitiesc"></p>
		 <P>d.<input type="text" name="leadershipqualitiesd"></P>
		</td>
	   </tr>
	   <tr>
	    <td>
		 <font color="#573801" face="Verdana" size="2">
		  Location Specific
&gt;		 </font>
		</td>
		<td>
		 a.<input type="text" name="locationspecifica">
		 <p>b.<input type="text" name="locationspecificb"></p>
		 <p>c.<input type="text" name="locationspecificc"></p>
		</td>
		<td>
		 <font color="#573801" face="Verdana" size="4">
		   <font size="2">Gender Specific</font>		   
		   <select name="genderspecific">
		    <option>Male</option>
			<option>Female</option>
		   </select>
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
	   <input type="text" name="indentername">
	  </td>
	  
	  <td align="right">
	   <input type="text" name="functionalheadname">
	  </td>
	  <td align="right">
	   <input type="text" name="unitheadname">
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="Verdana" size="3">Date<input type="text" name="date1"></font>
	  </td>
	  <td>
	   <font color="#573801" face="Verdana" size="3">Date<input type="text" name="date2"></font>
	   </td>
	   <td>
	    <font color="#573801" face="Verdana" size="3">Date<input type="text" name="date3"></font>
	   </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td align="center">
    <input type="image" src="images/submit.jpg">
   </td>
  </tr>
  </form>
 </table>
 </td>
 </tr>
</table>
</body>
</html>
