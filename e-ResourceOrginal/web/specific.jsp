<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" import="java.io.*" errorPage="" %>

<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
.t1
{
border:0;
background-color:"#FADFC3";
border-color:"#FADFC3";
}

</style>
<script language="javascript">

function goLite(BTN)
{

   window.document.getElementById(BTN).style.color = "#660099";
   window.document.getElementById(BTN).style.backgroundColor = "#FFFF99";
}

function goDim(BTN)
{
   window.document.getElementById(BTN).style.color = "#000066";
   window.document.getElementById(BTN).style.backgroundColor = "#CCFF99";
}


</script>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>


<link href="styles.css" rel="stylesheet" type="text/css" />
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
<script type="text/javascript" src="js/eResourceJs.js"></script>	


</head>


<%

String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
//////System.out.println(user_name);
boolean flag=true;
//////System.out.println("Username"+user_name);
if((user_name!=null)&&(pwd!=null))
{
	 %>
<body onload="showMessage()">
 <input type="hidden" value="<%=comp %>" id="companyid"/>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg">
		<table width="1012" border="0" cellspacing="1" cellpadding="0">
          <tr>
		  <td>
		  	<table border="0">
		  	<tr align="center">
            <td width="300" >
            
            	 <img alt="Logo" class="logo_image" alt="logo"/>
            	 
            </td>
			</tr>
			<tr align="center">
            <td ><img src="images/e-resource.gif" width="200"height="50" /></td>
			</tr>
			</table>
			
		</td>
		
			<div id="welcome1"><font color="#000099"><b>Welcome:</b></font>&nbsp;&nbsp;<%=user_name%></div>
       	<td width="739" align="left" valign="bottom">
			<table width="721" border="0" cellspacing="0" cellpadding="0">
            <tr align="right">
			<td>
			</td>
            </tr>
            </table>
            
			</td></tr>
          
        </table></td> </tr>
     
    </table></td> </tr>
 
  <tr>
    <td>
		<table width="1004" border="0" cellspacing="0" cellpadding="0" align="center" bordercolor="red" rules="cols">
      		<tr >
       			 	<td ></td>
		        	<td width="1004" align="center"><img src="images/banner_img.gif" width="1004" height="10" /></td>
       			 	<td ></td>
      		</tr>
    	</table>
	</td>
  </tr>
  <tr>
    <td align="center">
		<table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
     	 <tr>
        	<td width="477" align="center" valign="top" >
				<!--<table width="576" border="0" cellspacing="0" cellpadding="0" class="tab10">
         		 <tr>
           		 <td width="426">&nbsp;</td>
				  </tr>
				</table>-->
				
				
				<table align="center"><tr><td>
				<jsp:include flush="true" page="hr_admin_header.jsp"></jsp:include>
				</td></tr></table>

					<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>

<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>All Employees Info Form<br></td>
	</tr></table>
<!-- Content Code -->

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
	<tr bgcolor="#A4C6C5">
	  
<td>
	 <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Emp ID.</b>
</font>
	  </td>
	 
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Employee Name</b>
</font>
</td>



<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>DOB</b>
</font>
</td>


<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Date Of Join</b>
</font>
</td>

<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Designation</b>
</font>
</td>
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Department</b>
</font>
</td>
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>RM</b>
</font>
</td>
 <td>
	 <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>HOD</b>
</font>
	  </td>
	  
	  <td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Company</b>
</font>
</td>

</tr>
	<c:forEach var="employee" items="${employeeList}">
		   <tr 
  onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
		<td>
			<a href="Employeeinformation?empid=${employee.empid}" target="_blank"id="anchorcolor" title="Click Here To View Details"><img src="images/report1.png" align="absmiddle">${employee.empid}</a>			
		</td>
		<td>
			<a href="Rep_LoanStatus?id=${employee.empid}" id="anchorcolor" title="Click here for PaySlip" target="_blank">${employee.empname}</a>
		</td>
		<td>
			${employee.dob}
		</td>
		<td>
			${employee.doj}
		</td>
		<td>
			${employee.desig}
		</td>
		<td>
			${employee.dept}
		</td>
		<td>
			${employee.rm}
		</td>
		<td>
			${employee.hod}
		</td>
		<td>
			${employee.comp}
		</td>
	</tr>
	</c:forEach>
</table>
   <table border="0" cellpadding="5" cellspacing="5" align="right" class="pg_numbers">
        <tr>
            <c:forEach begin="1" end="${noOfPages}" var="i">
                <c:choose>
                    <c:when test="${currentPage eq i}">
                        <td>${i}</td>
                    </c:when>
                    <c:otherwise>
                        <td><a href="Home?page=${i}">${i}</a></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </tr>
    </table>  
    <%--For displaying Next link --%>
    <c:if test="${currentPage lt noOfPages}">
        <td><a href="Home?page=${currentPage + 1}">Next</a></td>
    </c:if>
<tr>
    <td align="center">		
	<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
	<br>
	<jsp:include page="Footer.jsp" flush="true"></jsp:include>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">

      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<c:if test="${currentPage != 1}">
        <td><a href="Home?page=${currentPage - 1}">Previous</a></td>
    </c:if>
 
    <%--For displaying Page numbers. 
    The when condition does not display a link for the current page--%>
    

</body>
<%
 }
 
 else
 {
	 response.sendRedirect("index");
 }

 %>
</html>


