<%@ page contentType="text/html; charset=iso-8859-1" language="java"  import="java.sql.*" errorPage="" %>
<%@ page import="com.svs.erp.Hr.db.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
	<!--------------------------------popup box code---------------------->
<style>
		@import "./Assets/LightFace.css";
	</style>
	<link rel="stylesheet" href="../Assets/lightface.css" />
	<script src="./Source/mootools.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.IFrame.js"></script>
	<script src="./Source/iframe3.js"></script>
	<script src="./Source/LightFace.Image.js"></script>
	<script src="./Source/LightFace.Request.js"></script>
	
<!--------------------------------close here------------------------------->
	<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script type="text/javascript">
function values(str)
{
var b=str.value;
document.getElementById('ph2').value=b;
document.getElementById('d').value=b;
//alert("b......."+b);
//var a=document.getElementById('ph1').value;
//alert("........"+a);
}
function check()
{
var a=document.frm.event.value;
var b=document.frm.date.value;
if(a==""&&b=="")
{
alert("Please enter details...");
return false;
}
else if(a=="")
{
alert("Please enter occasion...");
return false;
frm.event.focus();
}
else if(b=="")
{
alert("Please enter date...");
return false;
frm.date.focus();
}

}

function delete1()
{
var res=window.confirm("Are you sure want to delete ");

if(res==true)
{
return true;
}
else
{
	
	return false;
}
}
</script>
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
-->
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
					
					
					
							<table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="477" align="center" valign="top" ><table width="576" border="0" cellspacing="0" cellpadding="0" class="tab10">
          <tr>
            <td width="426">&nbsp;</td>
          </tr>
</table>

<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Paid Holidays<br></td>
	</tr></table>
          <table border="0" bordercolor="#D468F7"   align="center" class="tab1"  width="98%">
	    <tr>
		<td>
			<form action="paidholidays" name="frm" method="post" onSubmit="return check();"> 
			<table class="tab1" border="0" width="98%">
			<tr  bgcolor="#A4C6C5"> <td align="center" colspan="4"><font color="red" size="2">${msg1}</font></td></tr>
			<tr  bgcolor="#A4C6C5">
			<td width="30%" align="right" ><font color="#000066">Name Of Occasion</font></td><td><input type="text" size="40" name="event"></td><br><td width="5%" align="left"><font color="#000066">On</font><img src="images/date.png" align="absmiddle"></td>
			<td  width="300" ><input type="text" name="date" onfocus="showCalendarControl(this);" readonly="true"/>
			</td>
			</tr>
			<tr>
			<td></td>
			<td></td>
			<% session.removeAttribute("msg1");%>
			<td>
	       <input type="submit"  value="Add" class="add1" id="addpaidholiday" onMouseOver="goLite(this.id)"
   onMouseOut="goDim(this.id)" >
		   </td>
		   </tr>
		   </table>
			</form>
		</td>
	</tr>
</table>
<%
Date date1 = new Date();
  SimpleDateFormat simpleDateformat=new SimpleDateFormat("yyyy");
  String year1=simpleDateformat.format(date1);
 // //////System.out.println("Year: " +year1);
  
Connection con=null;
Statement st=null;
PreparedStatement pr=null;
ResultSet rs=null;
String year=null;
ConnectionUtils connectionUtils=new ConnectionUtils();

try
{
//DBConnection co=new DBConnection();
//con=co.connection1();
//////System.out.println("paidholidays.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
con=connectionUtils.getDBConnection();
//////System.out.println("paidholidays.jsp::ConnectionPool----->>>>After Open --->>>>Test");

st=con.createStatement();
//~~~~~~~~~~~~~~~~~getting year from date of pH
PreparedStatement ps=con.prepareStatement("select distinct year(date) from ph");
ResultSet rslist=ps.executeQuery();
%> 
<table class="tab10" width="98%">
<tr align="center"  bgcolor="#A4C6C5"><td  align="right" width="380">
<select name="ph1" id="ph1" onChange="return values(this);">
<option></option>
<%
while(rslist.next())
{
 year=rslist.getString(1);
////////System.out.println(""+year);
%>
<option value="<%=rslist.getString(1)%>"><%=rslist.getString(1)%></option>
<%}

%>
</select>
<input type="hidden" name="ph2" id="ph2" >
</td><td align="left"><button   id="start" class="buttonph" onMouseOver="goLite(this.id)"
   onMouseOut="goDim(this.id)">Show</button>(To view previous years paid holidays, select year and click on show)</td></tr>
</table>
<%
int count=0;

rs=st.executeQuery("select * from ph where year(date)='"+year1+"'order by date");%>
<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<tr><td><table align="center" width="50%"><tr><td align="center"><font color="#993300"><b>Sl No.</b></font> </td><td align="center"><font color="#993300"><b>Occasion  Name</b></font> </td><td align="center"><font color="#993300"><b>Date</b></font> </td><td><font color="#993300"><b>Delete</b></font></td></tr>
<%
while(rs.next())
{
count++;%>

<tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
<td align="center">
<%=count%>
</td>
<td align="center">
<%=rs.getString(2)%><br/>
</td>
<td align="center">
<%=rs.getString(3)%><br/>
</td>

<td align="center">
<a href="deletepaidholidays?date=<%=rs.getString(3)%>" id="anchorcolor" title="Click Here To Delete">&nbsp;<img src="images/remove.png" align="absmiddle" onClick="return delete1()"><br/></a>
</td>

</tr>

<%}
%>

</table>
</td></tr></table>
<%
}
catch(Exception e)
{
e.printStackTrace();
}finally {
			try
			{
				//////System.out.println("paidholidays.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("paidholidays.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>
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
