<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.svs.erp.Hr.db.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
	 <script type="text/javascript" src="hideboxes.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script src="datediff.js" language="javascript"></script>
<script src="vallidation.js" language="javascript"></script>
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
-->
-->

.t1
{
border:0;
background-color:"#FADFC3";
border-color:"#FADFC3";
}
</style>
<script language="javascript">
function cl()
{
document.esbd.startdate.value="";
//document.esbd.enddate.value="";
}
function cl1()
{
//document.esbd.startdate.value="";
document.esbd.enddate.value="";
}
function check()
{
var a=document.esbd.startdate.value;
var b=document.esbd.enddate.value;
if(a==""||b=="")
{ alert("Please specify date");
return false;
}
}



</script>
</head>

<body>
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if(pwd!=null)
 {
 %>
 
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
					
					
					
<table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="477" align="center" valign="top" ><table width="576" border="0" cellspacing="0" cellpadding="0" class="tab10">
          <tr>
            <td width="426">&nbsp;</td>
          </tr>
</table>

<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Search For Employee<br><br><br></td>
   </tr>
   <tr align="center">
   <td align="center" class="head"><hr width="60%"><h3> based on joining date<br><br></td>
	</tr></table>
		  
		  
<table border="0" bordercolor="#D468F7"   align="center"  width="98%" bgcolor="#A4C6C5">
<form action="search.jsp" name="esbd" method="post" onSubmit="return datediff();">
   
	<tr>
	<td align="right" width="500">
	  <strong><font color="#000066" size="2" face="Verdana">Start Date</font>
	  </strong><font color="#666666" size="2">(*yyyy-mm-dd)<img src="images/date.png" align="absmiddle">
	  <input type="text" name="startdate" id="start" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	
	</td>
	<td>
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">End Date</font></strong>
	 <font color="#666666" size="2">(*yyyy-mm-dd)<img src="images/date.png" align="absmiddle">
	 <input type="text" name="enddate"  id="end" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	 </td>


	  <td width="145" align="left"> 
        <input type="image" src="images/submit_btn.png" onMouseOver="return check();">
	  </td>
    </tr>
	</table>
	<table class="tab10" align="center" width="98%">
	<tr><td colspan="3" align="center"><br><br><h3 align="center"> <font color="#573801" size="3" class="head">Or</font></h3></td></tr>
  </form>
</table>



<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<form action="search3.jsp" name="hide" method="post" >
   <tr>
   <td width="100"></td>
   <td width="220" align="left">
	  <strong><font color="#000066" size="2" face="Verdana">Name</font>
	  </strong><font color="#006600" size="4">&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="text" name="name" onFocus="return hide2();" onkeypress="return alpha(event)"></font>
	</td>
	<td width="360">
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">Emp ID</font></strong>
	 &nbsp;
	  <input type="text" name="empno" onFocus="return hide1();" onkeypress="return alphanumeric(event)"></font>
	 </td>
	<td>
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">Gender</font></strong>
	  <!--<input type="text" name="sex" >-->
	  &nbsp;&nbsp;&nbsp;&nbsp;
	  <select type="text" name="sex">
	  <option></option>
				<option value="Male">Male</option>
				<option value="Female">FeMale</option>
				</select></font>
	 </td>
	 </tr>
	 <tr>
	 <td></td>
	 <td>
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">Qualification</font></strong>
	  <!--<input type="text" name="qualification" >-->
	  <%
	  Connection con=null;
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	
	  Statement st1=null;
	ResultSet rs1=null;
	  try
	{
			//////System.out.println("searching.jsp[1]::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("searching.jsp[1]::ConnectionPool----->>>>After Open --->>>>Test");
	
	st1=con.createStatement();
	rs1=st1.executeQuery("select distinct qualification from employee order by qualification");%>
	<select type="text" name="qualification">
				<option></option>
				<%while(rs1.next()){%>
				<option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>
				<%}%>
				</select></font>
				<%}
	catch(Exception e)
	{
	e.printStackTrace();
	}finally {
			try
			{
				//////System.out.println("searching.jsp[1]::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("searching.jsp[1]::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
	%>
	 </td>
	 <td>
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">Company</font></strong>
	 <%
	
	
	Statement st=null;
	ResultSet rs=null;
	try
	{
	//////System.out.println("searching.jsp[2]::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("searching.jsp[2]::ConnectionPool----->>>>After Open --->>>>Test");
	
	st=con.createStatement();
	rs=st.executeQuery("select companyname from companylist order by companyname");%>
	<select type="text" name="company">
				<option></option>
				<%while(rs.next()){%>
				<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
				<%}%>
				</select>
				<%}
	catch(Exception e)
	{
	e.printStackTrace();
	}finally {
			try
			{
				//////System.out.println("searching.jsp[2]::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("searching.jsp[2]::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
	%>
	  <!--<input type="text" name="company" ></font>-->
	 </td><td>
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">Department</font></strong>
	  <%
try
{
	//////System.out.println("searching.jsp[3]::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("searching.jsp[3]::ConnectionPool----->>>>After Open --->>>>Test");
	
    PreparedStatement ps=con.prepareStatement("Select distinct department  from  employee order by department ");
	 rs=ps.executeQuery();
%>
 <select type="text" name="department">
   				<option></option>

  <%
	while(rs.next())
	{
	%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
	<%
	}
	%>
</select>
	 <%
}
  catch (Exception e)
		  {
			  //////System.out.println("Exception raised");
		  }finally {
			try
			{
				//////System.out.println("searching.jsp[3]::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("searching.jsp[3]::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}

%>
	  <!--<input type="text" name="department" ></font>-->
	 </td>
	 </tr>
	 <tr align="center">
<td class="t1" colspan="4" > <input type="image" src="images/submit_btn.png"></td>
    </tr>
  </form>
</table>
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
