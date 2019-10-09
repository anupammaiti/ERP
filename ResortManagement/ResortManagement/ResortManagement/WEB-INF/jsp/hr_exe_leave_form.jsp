<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resort</title>
        <script type="text/javascript" src="js/jquery-2.0.0.js"></script>
        <script  src="js/kendo.all.min.js"></script>
        <script type="text/javascript" src="js/HRDetails.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
            	
                $("#leave_fromdate").kendoDateTimePicker({
                    value: new Date(),
                    min: new Date()
                });
//                leave_todateID
                $("#leave_todateID").kendoDateTimePicker({
                    value: new Date(),
                    min: new Date(),
                    change:onChange
                });
                $("#datetimepicker").kendoDateTimePicker({
                    value: new Date()
                });
                function onChange(){
                   var startdate= $('#leave_fromdate').val();
                   var enddate=$('#leave_todateID').val();
                   noofDayOnLeave(startdate,enddate);
                }
	
            });</script>
        <link rel="stylesheet" href="css/kendo.common.min.css" />
        <link rel="stylesheet" href="css/kendo.default.min.css" />
        <link rel="stylesheet" href="css/kendo.default.mobile.min.css" />
        <!--        <script type="text/javascript" src="js/CalendarControl.js"></script>
                <link rel="stylesheet" href="css/CalendarControl.css"/>-->
        <link rel="stylesheet" href="css/resort_styles.css"/>
    </head>
    <%
        String username = (String) session.getAttribute("username");
        String pwd = (String) session.getAttribute("password");
        //System.out.println("hi"+username);
        //System.out.println("hi"+pwd);
        if ((username != null) && (pwd != null)) { %>
    <body onload="loadHRLeaveDetails();">
        <div class="project_title" > 
            <img src="images/logo_image123.jpg" alt="logo" id="logo" height="50px" width="100px"/>
            <span id="proj_title">RESORT MANAGEMENT</span>
        </div>

        <div class="main_screen" align="center">
            <div class="menu" align="left">	
                <jsp:include page="hr_ex_header.jsp" flush="true"></jsp:include>
                </div>
                <div class="content" align="center"> <span id="successmsg">${successmsg}</span>
                <table class="tab10" width="98%" border="0"> <tr align="center">
                        <td align="center" class="head"><h3>Leave Application Form</h3></td>
                    </tr>
                    <tr><td>
                            <form:form action="shr_exe_leaveform.res"  name="frm" onSubmit="return checkvalid();" commandName="leaveFormBean">
                                <table width="50%" border="0">
                                    <tr><td colspan="2"><div><font color="#CC3300" face="Verdana, Arial, Helvetica, sans-serif" size="2"><%--<%=pro>--%></font></div></td><%--if(cc123==0){--%><td width="240"><font color="#CC3300">Available Leaves</font></td><%--}--%></tr>
                                    <tr>
                                        <td width="100" align="right">CL --></td>
                                        <td width="120"><div>
                                                <font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong id="cls"></strong>

                                                </font></div>
                                            <input type="hidden" size="3" value="<%--clpro--%>" name="clpro" id="clpro">
                                            <input type="hidden" name="proname" id="proname" value="<%--pro--%>">
                                        </td>
                                        <td><strong><%--if(cc123==0){--%><%--CLl--%><%--}--%></strong></td></tr>
                                    <tr>
                                        <td width="100" align="right">SL --></td><td><div>
                                                <font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong id="sls"></strong></font>
                                            </div><input type="hidden" size="3" value="<%--slpro--%>" name="slpro" id="slpro"></td>
                                        <td><strong><%--if(cc123==0){--%><%--SLl--%><%--}--%></strong></td></tr>
                                    <tr>
                                        <td width="100" align="right">PL --></td><td><div >
                                                <font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong id="pls"></strong></font></div>
                                            <input type="hidden" size="3" value="<%--plpro--%>" name="plpro" id="plpro"></td>
                                        <td><strong><%--if(cc123==0){--%><%--PLl--%><%--}--%></strong></td></tr></table></td></tr></table>
                    <table align="center" class="tab10" width="98%" ><tr align="center"><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif">${ackmsg}</font></td></tr></table>
                                    <% session.removeAttribute("ackmsg");%>
                    <table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >

                        <%--
                                       //	String employeecode=request.getParameter("empid");
                       try
                        {
                        String rmname=null;

PreparedStatement pr=con.prepareStatement("select * from employee where empno=?");
//String announcementsid=request.getParameter("empid");
pr.setString(1,empid);
ResultSet rs=pr.executeQuery();
String rmid=null;
String tomail1=null;
        while(rs.next()) 
 {
 String rm=rs.getString(10);
 //////System.out.println("..........RM.*******.."+rm);
 PreparedStatement prrm=con.prepareStatement("select empno,empid,name from employee where name=?");
 prrm.setString(1,rm);
 ResultSet rsrm=prrm.executeQuery();
 while(rsrm.next())
 {
 rmid=rsrm.getString(1);
 tomail1=rsrm.getString(2);
 rmname=rsrm.getString(3);
 }
 if(rmid==null)
 {
 //////System.out.println("..........IF RMID NULL............................"+rmid);
 rmid="";
 }
                        --%>

                        <tr>
                            <td>
                                <table align="center"  border="0" bgcolor="#A4C6C5">
                                    <tr>
                                        <td>
                                            <font color="#000066" size="2">Name</font>
                                        </td>
                                        <td>
                                            <form:input path="empname"  id="name" readonly="true" />

                                        </td>
                                    </tr>


                                    <tr>
                                        <td>
                                            <font color="#000066" size="2">Employee Id</font>
                                        </td>
                                        <td>
                                            <form:input path="empid" id="empid"  value="<%=username%>" readonly="true"  onBlur="showCustomer(this.value);"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <font color="#000066" size="2">Designation</font>
                                        </td>
                                        <td>
                                            <form:input path="designation" id="designation" readonly="true"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <font color="#000066" size="2">Company Name</font>
                                        </td>
                                        <td>
                                            <!--<label id="companyId"></label>-->
                                            <form:input path="companyname" id="companyId"/>
                                            <%-- <input type="text" name="company" id="companyname" readonly="true" value="<%=comp%>"> --%>
                                        </td>
                                    </tr>

                                    <!--<tr>
                                     <td>
                                      <font color="#573801" size="4">To Employee Code</font>
                                     </td>
                                     <td>
                                      <input type="text" name="emailid" value="<%//=empcodeee %>" >
                            
                                     </td>
                                    </tr>-->

                                    <!--<tr>
                                     <td>
                                      <font color="#573801" size="4">Purpose Of Leave</font>
                                     </td>
                                     <td>
                                      <input type="text" name="purposeofleave">
                                     </td>
                                     
                                    </tr>-->

                                </table>

                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table align="center"  border="0" bgcolor="#A4C6C5" >

                                    <tr>
                                        <td  align="center">
                                            <font color="#000066" size="2">Type Of Leave</font>
                                        </td>
                                        <td align="center"><font color="#000066" size="2">OD Time</font></td>
                                        <td  align="center">
                                            <font color="#000066" size="2">From Date</font>
                                        </td>
                                        <td  align="center">
                                            <font color="#000066" size="2">To Date</font>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td align="center">
                                            <%-- 	<%//~~~~~~~~~~~~~~~~~~~~~~~~~```code for disabling the options ~~~~~~~~~~~~~~~~~~~~~~~~~~~``
                                                    double cl1=0.0,sl1=0.0,pl1=0.0,lop1=0.0;
                                                    String str2="select empid,sum(cl),sum(sl),sum(pl),sum(lop) from leaveapplications where empid=?  group by empid=?";
                                                    PreparedStatement  pstmt2=con.prepareStatement(str2);
                                                    pstmt2.setString(1,empid);
                                                    pstmt2.setString(2,empid);
                                                    ResultSet rs2=pstmt2.executeQuery();
                                                    while(rs2.next())
                                                    {
                                                    cl1=rs2.getDouble(2);
                                                    sl1=rs2.getDouble(3);
                                                    pl1=rs2.getDouble(4);
                                                    lop1=rs2.getDouble(5);
                                                    }
                                                    
                                                    double ttcl=0.0,ttsl=0.0,ttpl=0.0;
                                                    String str3="select CLBAL,SLBAL,PLBAL from leaveopen where empid=?";
                                                    PreparedStatement  pstmt3=con.prepareStatement(str3);
                                                    pstmt3.setString(1,empid);
                                                    ResultSet rs3=pstmt3.executeQuery();
                                                    while(rs3.next())
                                                    {
                                                    ttcl=rs3.getDouble(1);
                                                    ttsl=rs3.getDouble(2);
                                                    ttpl=rs3.getDouble(3);
                                                    }
                                                    //////System.out.println("Consumed PL......."+pl1+".........total PL..."+ttpl);
                                                    //~~~~~~~~~~~~~~~~~~~~~~~~~~~code endzzzzz
                                                    %>--%>
                                            <form:select path="leavetype" class="select" id="leavetype"  >
                                                <form:option value="#">Select Leave Type</form:option>
                                                <form:option value="OD">On Duty</form:option>
                                                <form:option value="PER">Permission </form:option>
                                                <form:option value="cl">CL</form:option>
                                                <form:option value='sl'>SL</form:option>
                                                <form:option value='tl'>TL</form:option>

                                                <%--<%if(ttcl!=0){ %>
                                               <option value="1/2CL">1/2CL</option>
                                               <%}%>
                                               <%if(ttsl!=0){ %>
                                          <option value="1/2SL">1/2SL</option>
                                          <%}%>
                                          <%if(ttpl!=0){ %>
                                         <!--  <option value="1/2PL">1/2PL</option>-->
                                               <%}%>
                                               <option value="1/2TL">1/2Tour</option>
                                               <option value="1/2LOP">1/2LOP</option>
                                         <option value="TL">Tour </option>
                                         <%if(ttcl>=1){ %>3
                                         
                                         <option value="CL">Casual Leave</option>
                                          <%}%>
                                         <%if(ttsl>=1){ %>
                                         <option value="SL">Sick Leave</option>
                                          <%}%>
                                           <%if(ttpl>=1){%>
                                         <option value="PL">Privilege Leave</option>
                                         <%}%>--%>
                                                <form:option value="LOP">LOP</form:option>
                                                <form:option value="SPL">Special Leave</form:option>

                                            </form:select>


                                        </td>
                                        <td ><form:input path="oddhours" id="odhours" onFocus="clear1();" size="6"  value="00:00:00" /> </td>
                                        <td align="center">
                                            <div class="demo-section k-content">
                                                <%--<form:input  path="fromdate" id="leave_fromdate" size="12"  onfocus="showCalendarControl(this);"/>--%>
                                                <form:input  path="fromdate" id="leave_fromdate" size="12" onkeypress="return false;"/>
                                            </div>
                                        </td>
                                        <td align="center">
                                            <form:input path="todate" id="leave_todateID" size="12" onkeypress="return false;"/>
                                        </td>
                                        <td align="center">
                                            <form:select path="sess" name="sess" id="sess">
                                                <form:option value="#">Select Session</form:option>
                                                <form:option value="FH">First Half</form:option>
                                                <form:option value="SH">Second Half</form:option>
                                            </form:select>
                                        </td>
                                        <td><label id="noofDaysId"></label><input type="hidden" name="noofdays" id="leaveDaysID"></td>
                                    </tr></table>



                            </td>
                        </tr>

                        <%-- 
                       <%}
                                     rs.close();
                                                             
                                             %>--%>


                        <%--<%
                        /*try
                        {
                            //Class.forName("com.mysql.jdbc.Driver");
                           // Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
                            //////System.out.println("EmployeeLeaveApplication.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
                                con=connectionUtils.getDBConnection();
                                //////System.out.println("EmployeeLeaveApplication.jsp::ConnectionPool----->>>>After Open --->>>>Test");
                            PreparedStatement ps=conn.prepareStatement("select totalcl from leaveapplications where employeecode='"+empid+"' and status='Approved'");
                                ResultSet rs2=ps.executeQuery();
                        --%>

                        <td>
                            <%--<%
                                 rs2.afterLast();
                                 while(rs2.previous())
                                 {
                            --%>
                            <input type="hidden" name="opencasual" value="<%--=rs2.getString(1)--%>" id="opencasual">	
                            <%--<%
                                                      //////System.out.println("cl"+rs2.getString(1));
                             break;
                                    }
                            --%>
                        </td></tr>
                        <%--
                        }
                          catch (Exception e)
                                          {
                                                  //////System.out.println("Exception raised");
                                          }

*/--%>
                        <tr>
                            <td align="center">
                                <input type="image" class="button1" src="images/submit_button.png">
                                <br>
                            </td>

                        </tr>

                        <tr><td><div id="txtHint1"></div></td></tr>    
                        <tr align="center">
                            <td>
                                <table ><tr><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="1">~~~~~~~~~~~~~~~~~~</font></td></tr> </table>
                                <table border="1" bgcolor="#A4C6C5" bordercolor="#993300" rules="all">
                                    <tr bgcolor="#A4C6C5"><td><font color="#000066" size="2">Emp ID</font></td>
                                        <td><font color="#000066" size="2">Consumed CL</font></td>
                                        <td><font color="#000066" size="2">Consumed SL</font></td>
                                        <td><font color="#000066" size="2">Consumed PL</font></td>

                                        <td><font color="#000066" size="2">Total Consumed</font></td>
                                        <td><font color="#000066" size="2">Remaining Leaves</font></td>
                                        <td><font color="#000066" size="2">Total LOP</font></td>
                                        <td><font color="#000066" size="2"> Balance CL</font></td>
                                        <td><font color="#000066" size="2"> Balance SL</font></td>
                                        <td><font color="#000066" size="2"> Balance PL</font></td>
                                    </tr><tbody id="leaveEmployeeGridID"></tbody>
                                    <%--
                            String str="select empid,sum(cl),sum(sl),sum(pl),sum(lop) from leaveapplications where empid=?  group by empid=?";
                            String str1="select grandleaves,remainingleaves,bcl,bsl,bpl from leaveapplications where empid=?";
                            String str2="select CLBAL,SLBAL,PLBAL from leaveopen where empid=?";
                            PreparedStatement pstmt=con.prepareStatement(str);
                            PreparedStatement pstmt1=con.prepareStatement(str1);
                            PreparedStatement pstmt2=con.prepareStatement(str2);
                            pstmt2.setString(1,empid);


pstmt.setString(1,empid);
pstmt.setString(2,empid);


pstmt1.setString(1,empid);


ResultSet rs2=pstmt.executeQuery();
ResultSet rs1=pstmt1.executeQuery();
ResultSet rs3=pstmt2.executeQuery();


double remain=0.0,grandleaves=0.0,bcl=0.0,bsl=0.0,bpl=0.0;
double balcl=0.0,balsl=0.0,balpl=0.0;
while(rs3.next())
                           {
                           balcl=rs3.getDouble(1);
                           balsl=rs3.getDouble(2);
                           balpl=rs3.getDouble(3);
                           }

 rs1.afterLast();
                           while(rs1.previous())//last record
                           {
grandleaves=rs1.getDouble(1);
remain=rs1.getDouble(2);
bcl=rs1.getDouble(3);//balance CL
bsl=rs1.getDouble(4);//balance SL
bpl=rs1.getDouble(5);//balance PL
break;
}
////////System.out.println("Grand Leaves........."+grandleaves);
////////System.out.println("Remaining Leaves........."+remain);
//rs1.close();
String id;
double cl=0.0,sl=0.0,pl=0.0,lop=0.0;
//out.println("<table border=1><tr><td>EMP ID.</td><td>CL</td><td>SL</td><td>PL</td><td>LOP</td><td>TOTAL LEAVES</td><td>Remaining LEAVES</td></tr>");
while(rs2.next())
{

  id=rs2.getString(1);
  cl=rs2.getDouble(2);// SUM OF CL
  sl=rs2.getDouble(3);// SUM OF SL
  pl=rs2.getDouble(4);// SUM OF PL
  lop=rs2.getDouble(5);
                                    --%>


                                    <%--

}
////////System.out.println("...BCL........."+bcl+".......****..SUM CL...."+cl);
if((bcl==0.0)&&(bsl==0.0)&&(bpl==0.0))
{--%>
                                    <%-- 
                                    <input type="hidden" id="bcl1" name="bcl1" value="<%=CLl%>">
                                    <input type="hidden" id="bsl1" name="bsl1" value="<%=SLl%>">
                                    <input type="hidden" id="bpl1" name="bpl1" value="<%=PLl%>">
                                    --%>
                                    <%--
                                    }
                                    }//try

catch(Exception ex)

{

out.println("Exception"+ex);

}
finally {
                        try
                        {
                                //////System.out.println("EmployeeLeaveApplication.jsp::ConnectionPool--Before Close --->>>>Test");
                                if (con != null) connectionUtils.setDBClose();
                                //////System.out.println("EmployeeLeaveApplication.jsp::ConnectionPool--After Close--->>>>Test");
                        } catch (SQLException e)
                        {
                                //logger.error("The statement cannot be closed.", e);
                                //////System.out.println("Exception"+e);
                        }
                }
                                    --%>
                                    <%
                                        String user1 = (String) session.getAttribute("username");

                                    %>
                                    <input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
                                    <input type="hidden" name="manager" id="mgr1"/> 
                                    <input type="hidden"  name="department" id="dept1"/>
                                </form:form>

                                <!--<td>
                                <form action="mail.jsp">
                                 
                                 <input type="hidden" name="username" value="">
                                 <input type="hidden" name="password" value="">
                                  <input type="image" src="images/mail.jpg">
                                 </form>
                                 </td>-->
                            </table>

                            </div>
                            <jsp:include page="footer.jsp" flush="true"></jsp:include>
                                </div>

                            <%} else {
                                    response.sendRedirect("login.res");
                                }%>	
                            </body>

                            </html>
