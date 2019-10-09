<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center" background="images/bg.jpg">
  <tr>
    <td width="800"><font face="Verdana, Arial, Helvetica, sans-serif"><img src="images/banner.jpg" width="800"></font></td>
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

<table align="center" width="800" bgcolor="#FFD3A2" background="images/bg.jpg">
<tr>
<td>

 <form action="specific.jsp">
   <font face="Verdana, Arial, Helvetica, sans-serif">
 <input type="hidden" name="username" value="hr_pranam">
 <input type="hidden" name="password" value="hr_pranam">
  <input type="image" src="images/home.jpg">
   </font>
 </form> 
<table align="center">
 <tr>
 
 <td width="245">
   <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="3"><b>Interview Evaluation Form</b></font>
 </td>
  </tr>
</table>
<table align="center">
<form action="interviewevaluationinsert.jsp" method="post">
 <tr>
  <td>
    <table width="493" align="center" bgcolor="#FADFC3">
     <tr>
	  <td width="110">
	    <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">CandidateName:</font>
	  </td>
	   <td width="145">
	     <font face="Verdana, Arial, Helvetica, sans-serif">
	     <input type="text" name="candidatename">
	     </font></td>
		<td width="63">
		  <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Date</font>
		</td>
		 <td width="155">
		   <font face="Verdana, Arial, Helvetica, sans-serif">
		   <input name="date" type="text" value="yyyy\mm\dd">
		   </font></td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Position</font>
	  </td>
	  <td>
	    <font face="Verdana, Arial, Helvetica, sans-serif">
	    <input type="text" name="position">
	    </font></td>
	  <td>
	    <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Company</font>
	  </td>
	  <td>
	    <font face="Verdana, Arial, Helvetica, sans-serif">
	    <input type="text" name="company">
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
	   <INPUT TYPE=RADIO NAME="appearance" VALUE="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <INPUT TYPE=RADIO name="appearance" VALUE="VeryGood"> 
	   </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <INPUT TYPE=RADIO name="appearance" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <INPUT TYPE=RADIO name="appearance" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <INPUT TYPE=RADIO name="appearance" value="Poor">
	 </font></td>
	</tr>
	<tr>
	
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Qualification</font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="qualification" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="qualification" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="qualification" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="qualification" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="qualification" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Experience</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="experience" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="experience" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="experience" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="experience" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="experience" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Stability</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobstability" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobstability" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobstability" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobstability" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobstability" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Attitude</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="attitude" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="attitude" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="attitude" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="attitude" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="attitude" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Communication Skills</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="communicationskills" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="communicationskills" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="communicationskills" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="communicationskills" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="communicationskills" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Knowledge</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobknowledge" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobknowledge" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobknowledge" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobknowledge" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobknowledge" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Skills</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobskills" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobskills" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobskills" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobskills" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="jobskills" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Job Potential</font>
	 
	  </td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	    <input type="radio" name="jobpotential" value="Excellent">
	  </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	    <input type="radio" name="jobpotential" value="VeryGood">
	  </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	    <input type="radio" name="jobpotential" value="Good"> 
	    </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	    <input type="radio" name="jobpotential" value="Average">
	  </font></td>
	  <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	    <input type="radio" name="jobpotential" value="Poor">
	  </font></td>
	</tr>
	 <tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Career Achievements</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="careerachievements" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="careerachievements" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="careerachievements" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="careerachievements" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="careerachievements" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Work Dedication</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="workdedication" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="workdedication" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="workdedication" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="workdedication" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="workdedication" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Ability to Learn</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="abilitytolearn" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="abilitytolearn" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="abilitytolearn" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="abilitytolearn" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="abilitytolearn" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Open Mindness</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="openmindness" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="openmindness" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="openmindness" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="openmindness" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="openmindness" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Maturity Level</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="maturitylevel" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="maturitylevel" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="maturitylevel" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="maturitylevel" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="maturitylevel" value="Poor">
	 </font></td>
	</tr>
	<tr>
	 <td><font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Overall Suitability</font>
	  
	 </td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="overallsuitability" value="Excellent">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="overallsuitability" value="VeryGood">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="overallsuitability" value="Good">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="overallsuitability" value="Average">
	 </font></td>
	 <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="radio" name="overallsuitability" value="Poor">
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
     <select name="finalassessment">
	     <option>Selected</option>
	     <option>Rejected</option>
	     <option>Hold</option>
	     </select>
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
	  <textarea name="othercomments"></textarea>
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
	  <input type="text" name="interviewedby">
	  </font></td>
    </tr>
	<tr>
	 <td>
	  </td>
	 <td>
	   <font face="Verdana, Arial, Helvetica, sans-serif">
	   <input type="hidden" name="executivename" value="pranam">
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
	  <input type="text" name="presentsalary">
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
	  <input type="text" name="exceptedsalary">
	  </font></td>
    </tr>
	<tr>
    <td>	 <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">Salary Offred
	  </font></td>
	<td>
	  <font face="Verdana, Arial, Helvetica, sans-serif">
	  <input type="text" name="salaryoffred">
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
	  <input type="text" name="Joining Time Required">
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
	  <input type="text" name="department">
	  </font></td>
    </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align="center">
    <font face="Verdana, Arial, Helvetica, sans-serif">
    <input type="submit" value="     Submit     ">
    </font></td>
 </tr>
 </form>
</table>
</td>
</tr>
</table>
</body>
</html>
