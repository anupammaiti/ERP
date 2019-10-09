<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
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
</style></head>
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if(pwd!=null)
 {
 %>
<body>
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
            <input type="hidden" value="<%=comp %>" id="companyid"/>
            <img alt="Logo" class="logo_image" alt="logo"/>
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
					
					
					
					
					  <%
  String companyname=request.getParameter("company");
  String department=request.getParameter("department");
  String qualification=request.getParameter("qualification");
  String name=request.getParameter("name");
  String empno=request.getParameter("empno");
  String sex=request.getParameter("sex");
  String query;
/* //////System.out.println("company"+companyname);
//////System.out.println("dept"+department);
//////System.out.println("name"+name);
//////System.out.println("empno"+empno);
//////System.out.println("sex"+sex);
//////System.out.println("qualification"+qualification); */%>

<input type="hidden" value="<%=companyname %>" id="companyname"/>
<input type="hidden" value="<%=department %>" id="department"/>
<input type="hidden" value="<%=qualification %>" id="qualification"/>
<input type="hidden" value="<%=name %>" id="name"/>
<input type="hidden" value="<%=empno %>" id="empno"/>
<input type="hidden" value="<%=sex %>" id="sex"/>
<script type="text/javascript">
$(document).ready(function(){
	
	//alert('Hello');
	var companyname=$('#companyname').val();
	var department=$('#department').val();
	var qualification=$('#qualification').val();
	var name=$('#name').val();
	var empno=$('#empno').val();
	var sex=$('#sex').val();
	$.get('EmployeeSearch',{'company':companyname,'department':department,'qualification':qualification,'name':name,'empno':empno,'sex':sex},function(data){
			//alert(data);
			$('#data2').html(data);
	});
});
</script>

  
<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >
	<tr>
	  
<td align="center">
	 <font color="#573801">
Emp ID.
</font>
	  </td>
	  
<td width="15%" align="center">
<font color="#573801">
Employee Name
</font>
</td>



<td align="center">
<font color="#573801">
Gender
</font>
</td>


<td align="center">
<font color="#573801">
Designation
</font>
</td>
<td align="center">
<font color="#573801">
Department
</font>
</td>
<td align="center">
<font color="#573801">
Qualification
</font>
</td>
<td align="center">
<font color="#573801">
RM
</font>
</td>
<td align="center">
<font color="#573801">
HOD
</font>
</td>
<td width="200" align="center">
	 <font color="#573801" size="2">
Company Name
</font>
	  </td>
</tr>
<tbody id="data2"></tbody>	


	  </table>

    </td>
	<td><input type="hidden" name="empid"/></td>
  </tr>
  <tr>
    <td align="center">
		<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
<%
		
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
