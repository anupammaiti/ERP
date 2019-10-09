<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" import="java.io.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%!
public int nullIntconv(String str)
{   
    int conv=0;
    if(str==null)
    {
        str="0";
    }
    else if((str.trim()).equals("null"))
    {
        str="0";
    }
    else if(str.equals(""))
    {
        str="0";
    }
    try{
        conv=Integer.parseInt(str);
    }
    catch(Exception e)
    {
    }
    return conv;
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Resort </title>
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


<link href="styles.css" rel="stylesheet"  />
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
	<script type="text/javascript" src="Traffic.js"></script>

<%

    Connection conn = null;
	
	

    ResultSet rsPagination = null;
    ResultSet rsRowCnt = null;
    
    PreparedStatement psPagination=null;
    PreparedStatement psRowCnt=null;
    
    int iShowRows=10;  // Number of records show on per page
    int iTotalSearchRecords=10;  // Number of pages index shown
    
    int iTotalRows=nullIntconv(request.getParameter("iTotalRows"));
    int iTotalPages=nullIntconv(request.getParameter("iTotalPages"));
    int iPageNo=nullIntconv(request.getParameter("iPageNo"));
    int cPageNo=nullIntconv(request.getParameter("cPageNo"));
    
    int iStartResultNo=0;
    int iEndResultNo=0;
    
    if(iPageNo==0)
    {
        iPageNo=0;
    }
    else{
        iPageNo=Math.abs((iPageNo-1)*iShowRows);
    }
    

    
    String sqlPagination="SELECT SQL_CALC_FOUND_ROWS * FROM cases_1 limit "+iPageNo+","+iShowRows+"";

    psPagination=conn.prepareStatement(sqlPagination);
    rsPagination=psPagination.executeQuery();
    
    //// this will count total number of rows
     String sqlRowCnt="SELECT FOUND_ROWS() as cnt";
     psRowCnt=conn.prepareStatement(sqlRowCnt);
     rsRowCnt=psRowCnt.executeQuery();
     
     if(rsRowCnt.next())
      {
         iTotalRows=rsRowCnt.getInt("cnt");
      }
%><link rel="shortcut icon" href="images/svsicon.ico"/>
</head>


<%
 String username=(String)session.getAttribute("user");
 String pwd=(String)session.getAttribute("pswd");
 /*//System.out.println("hi"+username);
 //System.out.println("hi"+pwd);*/
 if(pwd!=null)
 {
	 %>


<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg"><table width="1012" border="0" cellspacing="0" cellpadding="0">
		 <tr><td width="157" align="right"><img src="images/TrLogo.jpg" width="112" height="93" /></td>
            <td width="116"><font class="welcome_text">Welcome to&nbsp;<%=username%></font></td>
            <td width="739" align="left" valign="bottom"><table width="721" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
			 
              <tr>
                <td height="50" align="right" valign="middle"><table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>  <td width="701" align="left" valign="middle">
																
<div id="menu">
						<ul class="menu">
			<li><a href="Admin_main.jsp" class="parent"><span>Home</span></a></li>
						
			  <li><a href="#" class="parent"><span>Create </span></a> 
						<div><ul>
											<li><a href="addPoliceStationList.jsp" ><span>Police Station </span></a>
											
											</li>
											
										
											<li><a href="userslist.jsp"  ><span>Users </span></a>
											
											</li>
											
											
											<li><a href="addPoliceStation.jsp"  ><span>Police </span></a>
											
											</li>
											
											<li><a href="CaseList.jsp" ><span>Section</span></a>
											
											</li>
											
											<li><a href="addVehicleCode.jsp"  ><span>Vehicles </span></a>
											
											</li>
											
											<li><a href="addtypesofpay.jsp"  ><span>Payment</span></a>
											
											</li>
											<li>
												<a href="section_number.jsp"><span>M.V.C Act Rule</span></a>
											</li>
											
											
											
							</ul></div>
							 </li>				
									
						 </li>
					 
					<li><a href="#" class="parent"><span>Update</span></a>
					<div><ul>
											
											<li><a href="viewlistofofficers.jsp"  ><span>Police </span></a>
											
											</li>
											<li>
												<a href="update_application_user.jsp"><span>Application User</span></a>
											</li>
											<li>
												<a href="update_mvc_act_rule.jsp"><span>MVC Act Rule</span></a>
											</li>
											</ul></div>
						
					</li> 
					
					
					<li><a href="#"><span>Information</span></a>
						<div>
							<ul>
								<li> 
						<a href="StationList" target="_blank"> <span>Police Station List</span></a>
				</li>
				<li>
					<a href="PoliceOfficerList.jsp"><span>Police Officer List</span></a>
				</li>
				<li>
					<a href="CaseList" target="_blank"><span>Section In Words List</span></a>
				</li>
				<li>
					<a href="PaymentList" target="_blank"><span>Payment Types</span></a>
				</li>
				<li>
					<a href="VehicleList" target="_blank"><span>Vehicle Types</span></a>
				</li>
				<li>
					<a href="MVCActList" target="_blank"><span>MVC Act Rules</span></a>
				</li>
					
							</ul>
						</div>
					</li>     
			<!--///////////////////////////////////-->      
			<li><a href="#" class="parent"><span>Reports</span></a>
			<div align="center"><ul>
			<li><a href="#"  class="parent"><span >Challan</span></a>
			<div align="center">
				<ul>
					<li><a href="#" class="parent" ><span>Daily</span></a>
						<div><ul>
					<li><a href="CaseReport.jsp"  ><span>Section Report</span></a></li>
					<li><a href="OnVehicleName.jsp"  ><span>Vehicle Report</span></a></li>
					<li><a href="ByLocationName.jsp"  ><span>Location Report</span></a></li>			
					<li><a href="daily_final_report.jsp" ><span>Final Report</span></a></li>	
	
				</ul></div>
				<li><a href="#" class="parent"><span>Monthly</span></a>
				<div><ul>
					<li><a href="monthly_casereport.jsp"><span>Section Report</span></a></li>
					<li><a href="monthly_VehilceReport.jsp"><span>Vehicle Report</span></a></li>
					<li><a href="monthly_locationReport.jsp"><span>Location Report</span></a></li>			
					<li><a href="datewise_final_report.jsp"><span>Final Report</span></a></li>			
					</ul></div>
				</li>
				
					
					
				</ul>
			</div>
			
			</li>
					
					<li><a href="#" class="parent"><span>Crane</span></a>
						<div align="center"><ul>
								<li>
								<a href="#" class="parent"><span>Daily</span></a>
								<div align="center">
									<ul>
										<li><a href="daily_crane_caseReport.jsp"><span>Section Report</span></a></li>
										<li><a href="dialy_crane_vehreport.jsp"><span>Vehicle Report</span></a></li>
										<li><a href="daily_crane_location.jsp"><span>Location Report</span></a></li>	
										<li><a href="crane_daily_finalreport.jsp"><span>Final Report</span></a></li>	
									</ul>
								</div>
								</li>
								<li><a href="#" class="parent" ><span>Monthly</span></a>
									<div>
										<ul>
											<li><a href="monthly_crane_casereport.jsp"><span>Section Report</span></a></li>
											<li><a href="monthly_crane_vehiclereport.jsp"><span>Vehicle Report</span></a></li>
											<li><a href="monthly_crane_locationreport.jsp"><span>Location Report</span></a></li>			
											
											<li><a href="monthly_datebetween_finalreport.jsp"><span>Final Report</span></a></li>
										</ul>
									</div>
								</li>
						</ul></div>
					</li>
					
						
						<li><a href="#" class="parent"><span>e-challan</span></a>
						<div align="center"><ul>
							<li><a href="daily_echallan_report.jsp"><span>e-challan</span></a></li>
						</ul></div>
				
						</li>
						
						<!-- Menu Main item List -->
						
				</ul>
					</div></li><!--acc inf closed-->	
					
										
						
									<li><a href="logout.jsp" class="parent"><span>Logout</span></a>
				
					</li>
									
					
					
			</ul></div>
			</li>
			
			
			
			 
				</ul>
	</div>
					
</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#EDC527">&nbsp;</td>
		        <td width="1012"><img src="images/banner_img.jpg" width="1012" height="195" /></td>

        <td bgcolor="#EDC527">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center"><table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="577" align="left" valign="top" style="padding-left:22px;"><table width="576" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="576">&nbsp;</td>
          </tr>
    </table>
	<b class="text">Booked Under Section</b>&nbsp;&nbsp;<span id="val_stationnameform"></span><span id="value_pcode"></span>
&nbsp;
<table align="center">
<tr>
<td  class="text">
 Note:Please enter the section name without space and each Word first letter capital followed by small letters. E.g: DisobeyTrafficRules"
</td>
</tr>
<tr><td></td><td></td></tr>
<tr>
<td align="center">
<form action="AddCases" method="post" name="val3" onSubmit="return is_empty5();">
	<b class="text"> Enter Section Name:</b><input type="text" name="casename" id="val_casename" onBlur="return alphabetic3(casename.value);"/> <input type="submit" value="Add "/>
</form>
<form name="frm">

<input type="hidden" name="iPageNo" value="<%=iPageNo%>">
<input type="hidden" name="cPageNo" value="<%=cPageNo%>">
<input type="hidden" name="iShowRows" value="<%=iShowRows%>">
</td>
</tr>
</table>	   
<table border="0" bordercolor="#D468F7"   align="center" class="tab1" width="50%" id="table_justification">
	<tr>
	<td width="100"></td>
	  
<td>
<table>
<tr>
<td>
	 <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b class="text">Section No.</b>
</font>
	  </td>
	 
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b class="text">Section Name</b>
</font>
</td>



</tr>


	<%
  while(rsPagination.next())
  {
  %>
	  
	   <tr 
  onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
	   
	   
		<td align="center">
      <a href="UpdateCases.jsp?caseno=<%=rsPagination.getString(1)%>" title="Click for Update"><%=rsPagination.getString(1)%></a>
</td>

	    
	 <td>
	   
      <%=rsPagination.getString(2)%>
		
	   </td>
	   
 
	   </tr>
	   
	<% 
 }
 %>
<%
  //// calculate next record start record  and end record 
        try{
            if(iTotalRows<(iPageNo+iShowRows))
            {
                iEndResultNo=iTotalRows;
            }
            else
            {
                iEndResultNo=(iPageNo+iShowRows);
            }
           
            iStartResultNo=(iPageNo+1);
            iTotalPages=((int)(Math.ceil((double)iTotalRows/iShowRows)));
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

%>
</td>
</tr>
</table>

</table>
<table align="right">
<tr>
<td class="t1"></td><td class="t1"></td>
<td class="t1"  >
<div>
<%
        //// index of pages 
        
        int i=0;
        int cPage=0;
        if(iTotalRows!=0)
        {
        cPage=((int)(Math.ceil((double)iEndResultNo/(iTotalSearchRecords*iShowRows))));
        
        int prePageNo=(cPage*iTotalSearchRecords)-((iTotalSearchRecords-1)+iTotalSearchRecords);
        if((cPage*iTotalSearchRecords)-(iTotalSearchRecords)>0)
        {
         %>
          <a href="CaseList.jsp?iPageNo=<%=prePageNo%>&cPageNo=<%=prePageNo%>"> << Previous</a>
         <%
        }
        
        for(i=((cPage*iTotalSearchRecords)-(iTotalSearchRecords-1));i<=(cPage*iTotalSearchRecords);i++)
        {
          if(i==((iPageNo/iShowRows)+1))
          {
          %>
           <a href="CaseList.jsp?iPageNo=<%=i%>" style="cursor:pointer;color: red"><b><%=i%></b></a>
          <%
          }
          else if(i<=iTotalPages)
          {
          %>
           <a href="CaseList.jsp?iPageNo=<%=i%>" class="text"><%=i%></a>
          <% 
          }
        }
        if(iTotalPages>iTotalSearchRecords && i<iTotalPages)
        {
         %>
         <a href="employeeinformationform1.jsp?iPageNo=<%=i%>&cPageNo=<%=i%>" class="text">>> Next</a> 
         <%
        }
        }
      %>
<b>Rows <%=iStartResultNo%>-<%=iEndResultNo%></b>
</div>
</td>
<td></td><td></td><td></td>
</tr>

</table>
</form>
<tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
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
	 response.sendRedirect("index.jsp");
 }
 %>
</html>
<%
    try{
         if(psPagination!=null){
             psPagination.close();
         }
         if(rsPagination!=null){
             rsPagination.close();
         }
         
         if(psRowCnt!=null){
             psRowCnt.close();
         }
         if(rsRowCnt!=null){
             rsRowCnt.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>

