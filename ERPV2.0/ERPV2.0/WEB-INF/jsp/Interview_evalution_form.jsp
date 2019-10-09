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
<fieldset><legend>Interview Evalution</legend>
<table align="center">
 <tr>
 
 <td width="245">
   
 </td>
  </tr>
</table>
<table align="center">

<form:form action="s_interview_evalution.erp" method="post" commandName="interviewEvalutionBean" id="interviewevalutionform">
 <tr>
  <td>
    <table width="493" align="center" bgcolor="#FADFC3">
     <tr>
	  <td width="110">
	    <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">CandidateName:</font>
	  </td>
	   <td width="145">
	     <font face="Verdana, Arial, Helvetica, sans-serif">
	     <form:input path="candidatename" id="candidatename"/>
	     
	     </font></td>
		<td width="63">
		  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Date</font>
		</td>
		 <td width="155">
		   <font face="Verdana, Arial, Helvetica, sans-serif">
		   <form:input path="date" id="gendate1"/>
		   
		   </font></td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Position</font>
	  </td>
	  <td>
	    <font face="Verdana, Arial, Helvetica, sans-serif">
	    <form:input path="position" id="position"/>
	    
	    </font></td>
	  <td>
	    <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Company</font>
	  </td>
	  <td>
	    <font face="Verdana, Arial, Helvetica, sans-serif">
	    <form:input path="company" id="company"/>
	    
	    </font></td>
	 </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" bordercolor="#F0B269"  border="1" bgcolor="#FADFC3">
    
	<tr>
	 <th width="134">
	   <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Traits</font>
	 </th>
	 <th width="66">
	   <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Excellent</font>
	 </th>
	 <th width="77">
	   <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Very Good</font>
	 </th>
	 <th width="40">
	   <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Good</font>
	 </th>
	 <th width="61">
	   <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Average</font>
	 </th>
	   <th width="70">
	     <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Poor</font>
	 </th>
	</tr>
	<tr>
	 <td>
	   <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Appearance</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="apperence" value="Excellent"/>
	   
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="apperence" value="VeryGood"/>
	    
	   </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="apperence" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="apperence" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="apperence" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Qualification</font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="qualification" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="qualification" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="qualification" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="qualification" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="qualification" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Experience</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 	<form:radiobutton path="experience" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="experience" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="experience" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   
	   <form:radiobutton path="experience" value="Average"/>
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="experience" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Stability</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 	<form:radiobutton path="jobstability" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   
	   <form:radiobutton path="jobstability" value="VeryGood"/>
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="jobstability" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 	<form:radiobutton path="jobstability" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="jobstability" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Attitude</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="attitude" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="attitude" value="VeryGood"/>
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="attitude" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="attitude" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="attitude" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Communication Skills</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="communicationskills" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="communicationskills" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="communicationskills" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="communicationskills" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="communicationskills" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Knowledge</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="jobknowledge" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobknowledge" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobknowledge" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobknowledge" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobknowledge" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Skills</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobskills" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobskills" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobskills" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobskills" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobskills" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Potential</font>
	 
	  </td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="jobpotential" value="Excellent"/>
	    
	  </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:radiobutton path="jobpotential" value="VeryGood"/>
	    
	  </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:radiobutton path="jobpotential" value="Good"/>
	     
	    </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	    <form:radiobutton path="jobpotential" value="Average"/>
	    
	  </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	    <form:radiobutton path="jobpotential" value="Poor"/>
	    
	  </font></td>
	</tr>
	 <tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Career Achievements</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	<form:radiobutton path="carrierachivements" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="carrierachivements" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="carrierachivements" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="carrierachivements" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="carrierachivements" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Work Dedication</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="workdeduction" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="workdeduction" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="workdeduction" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="workdeduction" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="workdeduction" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Ability to Learn</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="abilitytolearn" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="abilitytolearn" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="abilitytolearn" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="abilitytolearn" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="abilitytolearn" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Open Mindness</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="openmindness" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="openmindness" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="openmindness" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="openmindness" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="openmindness" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Maturity Level</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="maturitylevel" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:radiobutton path="maturitylevel" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="maturitylevel" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="maturitylevel" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="maturitylevel" value="Poor"/>
	   
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Overall Suitability</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="overallstability" value="Excellent"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="overallstability" value="VeryGood"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="overallstability" value="Good"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="overallstability" value="Average"/>
	   
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <form:radiobutton path="overallstability" value="Poor"/>
	   
	 </font></td>
	</tr>
	
	
 
   </table>
  </td>
 </tr>
 <tr>
  <td>
  <table width="329" align="center">
  <tr>
  <td width="148">
    <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
    Final Assessment   
    </font>
   </td>
   <td width="169">
     <font face="Verdana, Arial, Helvetica, sans-serif">
     <form:select path="finalassesment" id="finalassesment">
     <form:option value=""></form:option>
     <form:option value="Selected">Selected</form:option>
     <form:option value="Rejected">Rejected</form:option>
     <form:option value="Hold">Hold</form:option>
     </form:select>
     
     </font></td>
   </tr>
   <tr>
    <td>
	  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
	  Other Comments  
	  </font>
	</td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	 <form:textarea path="othercomments" id="othercomments"/>
	  
	  </font></td>
   </tr>
   <tr>
    <td>
	  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
	  Interviewed By:
	  </font>
	</td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:input path="interviewedby" id="interviewedby"/>
	  
	  </font></td>
    </tr>
	<tr>
	 <td>
	  </td>
	 <td>
	   <font face="Verdana, Arial, Helvetica, sans-serif">
	  
	   <input type="hidden" name="executivename" value="pranam" >
	   </font></td>
	 </tr>
	 <tr>
    <td>
	  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
	  Present Salary:
	  </font>
	</td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:input path="presentsalary" id="presentsalary"/>
	  
	  </font></td>
    </tr>
	<tr>
    <td>
	  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2" >
	  Excepted Salary:
	  </font>
	</td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:input path="expetedsalary" id="expectedsalary"/>
	  
	  </font></td>
    </tr>
	<tr>
    <td>	 <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Salary Offred
	  </font></td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:input path="salaryoffered" id="salaryoffered"/>
	  
	  </font></td>
    </tr>
	<tr>
    <td>
	  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
	  Joining Time Required:
	  </font>
	</td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:input path="joingtime" id="joingtime"/>
	  
	  </font></td>
    </tr>
	<tr>
    <td>
	  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
	  Department:
	  </font>
	</td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	  <form:input path="department" id="department"/>
	  
	  </font></td>
    </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align="center">
    <font face="Verdana, Arial, Helvetica, sans-serif">
    <form:button  value="submit">Submit</form:button>
    
    </font></td>
 </tr>
</form:form>
</table>

</fieldset>
</div>
</div>

<% }
else
{
response.sendRedirect("login.erp");
}%>	
</body>
</html>
