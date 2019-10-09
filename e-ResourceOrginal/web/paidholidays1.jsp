

<%@ page contentType="text/html; charset=iso-8859-1" language="java"  import="java.sql.*" errorPage="" %>
<%@ page import="com.svs.erp.Hr.db.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%String da=request.getParameter("year");
////////System.out.println("PARAM......"+da);
%>
 
		  <table width="200">
		  <tr align="left">
            <td width="300" ><img src="images/logo_image.jpg" width="100" height="40" /></td>
			</tr>
			<tr align="left">
            <td ><img src="images/e-resource.gif" width="100"height="40" /></td>
			</tr>
			</table>
			<table>
            <tr>	        <td width="35%" align="left"><img src="images/banner_img.gif" width="580" height="10" /></td>
      </tr>
    </table>
<table class="tab10" width="585" border="0"> <tr align="center">
   <td align="center" class="head"><h3>Paid Holidays&nbsp;<%=da%><br></td>
	</tr></table>
          
<%
  int count=0;
Connection con=null;
Statement st=null;
PreparedStatement pr=null;
ResultSet rs=null;
String year1=null;
ConnectionUtils connectionUtils=new ConnectionUtils();

try
{
			//////System.out.println("paidholidays1.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("paidholidays1.jsp::ConnectionPool----->>>>After Open --->>>>Test");



//DBConnection co=new DBConnection();
//con=co.connection1();
st=con.createStatement();

rs=st.executeQuery("select * from ph where year(date)='"+da+"'order by date");%>
<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="35%">
<tr><td><table align="center" width="585"><tr><td align="center"><font color="#993300"><b>Sl No.</b></font> </td><td align="center"><font color="#993300"><b>Occasion  Name</b></font> </td><td align="center"><font color="#993300"><b>Date</b></font> </td><!--<td><font color="#993300"><b>Delete</b></font></td>--></tr>
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
<!--
<td align="center">
<a href="deletepaidholidays?date=<%=rs.getString(3)%>" id="anchorcolor" title="Click Here To Delete">&nbsp;<img src="images/remove.png" align="absmiddle" onClick="return delete1()"><br/></a>
</td>-->

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
				//////System.out.println("paidholidays1.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("paidholidays1.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>
<tr>
    <td align="center">
			<table width="585" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width="35%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="585" height="16" /></td>
      </tr>
    </table></td>
  </tr>
	
</table>
</body>
