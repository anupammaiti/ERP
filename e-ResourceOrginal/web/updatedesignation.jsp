<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script type="text/javascript">
function check()
{
var a=document.frm.designation.value;
var b=document.frm.change.value;
if(a=="")
{
alert("Please Select Designation");
return false;
}
if(b=="")
{
alert("Please Enter Designation");
return false;
document.frm.change.focus();
}

}
</script>
<table border="0" bordercolor="#D468F7"   align="center" class="tab1">
<form action="descupdateBO" name="frm" onSubmit="return check();" method="post">
<h3 align="center"> <font color="#000066" size="4" class="head">Modify Designation </font></h3>
	
	</table><br/>
<%
Connection con=null;
Statement st;
PreparedStatement pr;
ResultSet rs;
ConnectionUtils connectionUtils=new ConnectionUtils();


try
{
int count=0;
//////System.out.println("updatedesignation.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
con=connectionUtils.getDBConnection();
//////System.out.println("updatedesignation.jsp::ConnectionPool----->>>>After Open --->>>>Test");
//Class.forName("com.mysql.jdbc.Driver");
//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");	
st=con.createStatement();
rs=st.executeQuery("select * from designation");%>
<table border="0" bordercolor="#D468F7"   align="center" class="tab20" width="98%">
<tr><td width="100" align="center"><font color="#000066"><b>Select Designation</b></font> </td><td width="200" align="center"><font color="#000066"><b>Designation Change To </b></font></td><!--<td align="center"><font color="#993300"><b>Modify</b></font></td>--></tr>
<tr><td align="center"><select name="designation" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
<option></option>
<%
while(rs.next())
{
count++;%>
<option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
<%}
%>
</select>
</td>
<td align="center"><input type="text" name="change"></td>
<!--<td align="center"><input type="hidden" name="date" readonly="true" onfocus="showCalendarControl(this);" ></td>-->
<td align="center" width="50">
 <input type="image" src="images/submit_btn.png" class=" payroll_button"/>	 </td>
</tr></table>
<table><tr><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="2">${desc}</font></td></tr></table>
</form>
<%
}
catch(Exception e)
{
e.printStackTrace();
}finally {
			try
			{
				//////System.out.println("updatedesignation.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("updatedesignation.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>
