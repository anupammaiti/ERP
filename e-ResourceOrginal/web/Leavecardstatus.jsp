
<!--
=================================================================
*eResource Application  Modify 2012/June/04						*				
*Copy Right By SVSINFOMATICS									*
*																*
=================================================================
-->
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
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script src="datediff.js" language="javascript"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
<script language="javascript">

function goLite(FRM,BTN)
{

   window.document.forms[FRM].elements[BTN].style.color = "#660099";
   window.document.forms[FRM].elements[BTN].style.backgroundColor = "#FFFF99";
}

function goDim(FRM,BTN)
{
   window.document.forms[FRM].elements[BTN].style.color = "#000066";
   window.document.forms[FRM].elements[BTN].style.backgroundColor = "#CCFF99";
}


</script>
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
function check()
{
a=document.frm11.fromdate.value;
b=document.frm11.todate.value;
if(a=="")
{
alert("Please specify from date");
document.frm11.fromdate.focus();
document.frm11.fromdate.style.background = "pink";
return false;
}
if(b=="")
{
alert("Please specify to date");
document.frm11.todate.focus();
document.frm11.todate.style.background = "pink";
return false;
}
}
</script>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>

</head>

<body ><!--background="background images for website/master70_background.jpg"-->
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
  String ename=(String)session.getAttribute("ename");
  if((user_name!=null)&&(pwd!=null)){
 //~~~~~~~~~~~~~~~~`code to find user is RM or NOT
	int chekrm=0;
	Connection conn=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	
/*PreparedStatement prchekrm=con.prepareStatement("select * from employee where reportingto=?");
prchekrm.setString(1,ename);
ResultSet rschekrm=prchekrm.executeQuery();
while(rschekrm.next())
{
chekrm++;
}*/
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
			 	<!--<table width="721" border="0" cellspacing="0" cellpadding="0">
                <td id="session" align="right"><b>Welcome</b>&nbsp; <font color="#000000"><%=ename%></font></td>
				</table>-->
			</td>
            </tr>
			<!--<tr>
            <td height="50" align="right" valign="middle">
				<!--<table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					
					
					</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table>
			</td>
			</tr>-->
			
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
				<jsp:include flush="true" page="eresourcemenu.jsp"></jsp:include>
				</td></tr></table>
				
				


<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>
<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3> Leave Status<br></td>
	</tr></table>

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
 <%
 String empid1=request.getParameter("empid1");
  String fromdate11=request.getParameter("fromdate");
   String todate11=request.getParameter("todate");
 // Connection conn=null;
	//CreateConnection cc=new CreateConnection();
	//conn=cc.connection1();
	try
		{
			//////System.out.println("Leavecardstatus.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("Leavecardstatus.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	
   String str="select * from  leavestatus where employeecode='"+empid1+"' and fromdate between '"+fromdate11+"' and '"+todate11+"'";
   ////////System.out.println("..........."+str);  
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(str);
   String fromdate;

   %>

	<tr align="center">
	  <td>
	   <font color="#000033"><b>
	   Emp ID
	   </font></b>
	   </td>
	   <td>
	   <font color="#000033"><b>
	   Name
	   </font></b>
	   </td>
	   <td>
	   <font color="#000033"><b>
	   Company.
	   </font></b>
	   </td>
	   <td>
	   <font color="#000033"><b>
	   Designation
	   </font></b>
	   </td>
	   
	     <td>
	   <font color="#000033"><b>
	   From Date
	   </font></b>
	   </td>
	   <td>
	   <font color="#000033"><b>
	   To Date
	   </font></b>
	   </td>
	   	   <td>
	   <font color="#000033"><b>
	   Leave Type
	   </font></b>
	   </td>
	   <td><font color="#000033"><b>
	   Leave Status
	   </font></b>
	   </td>
	     <td><strong>
	   <font color="#000033">
	   Purpose of leave
	   </font></strong>
	   </td>
	   </tr>
	 <%  
	 
   while(rs.next())
     { %>
	  
	   <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
	   
	   <td>
	  <a href="#" id="anchorcolor" title="Click Here To View Details"><%=rs.getString(3)%></a>
	   </td>
	   
	   <td><%=rs.getString(1)%>
	   </td>
	   
	   <td><%=rs.getString(2)%>
	   </td>
	   
	   
	   
	   <td><%=rs.getString(4)%>
	   </td>
	   
 
	   <td><%=rs.getString(7)%>
	   </td>
	   
	   <td><%=rs.getString(8)%>
	   </td>
	   
	  
	   
	   <td><font color="#FF3300"><%=rs.getString(24)%></font>
	   </td>
	   <td><font color="#FF3300"><%=rs.getString(17)%></font>
	   </td>
	     <td><font color="#FF3300"><%if(rs.getString(5)!=null){%><%=rs.getString(5)%><%}%></font>
	   </td>
	   </tr>
	    
	<% 		
     fromdate=rs.getString(7);
	 //out.println(fromdate);
	} %>
	
	  </table>
	  
</td>
</tr>
<tr>
    <td align="center">
				<!--<table width="98%" class="tab10"  ><tr id="svstr"><td align="right" >&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
				<br>
				<jsp:include page="Footer.jsp" flush="true"></jsp:include>
       <table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
</table>
  
</body>
<%
 }catch(Exception ex)

{

out.println("Exception"+ex);

}finally {
			try
			{
				//////System.out.println("Leavecardstatus.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("Leavecardstatus.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
