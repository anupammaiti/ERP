<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="com.svs.erp.Hr.db.ConnectionUtils" %>
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
<script src="School.js" language="javascript"></script>
<script src="agediff.js" language="javascript"></script>
<script src="vallidation.js" language="javascript"></script>
<!--------------------------------popup box code---------------------->
<style>
		@import "./Assets/LightFace.css";
	</style>
	<link rel="stylesheet" href="../Assets/lightface.css" />
	<script src="./Source/mootools.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.IFrame.js"></script>
	<script src="./Source/iframe.js"></script>
		<script src="./Source/iframelog.js"></script>
	<script src="./Source/LightFace.Image.js"></script>
	<script src="./Source/LightFace.Request.js"></script>
	
<!--------------------------------close here------------------------------->

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
//////System.out.println(user_name);
boolean flag=true;
if((user_name!=null)&&(pwd!=null))
{%>
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
 <%

    Connection conn = null;
 ConnectionUtils  cc=new ConnectionUtils();
	conn=cc.getDBConnection();

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
    

    
    String sqlPagination="SELECT SQL_CALC_FOUND_ROWS * FROM employee limit "+iPageNo+","+iShowRows+"";

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
%>
<body>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg"><table width="1012" border="0" cellspacing="0" cellpadding="0" border="1">
          <tr>
		  <td>
		  <table border="0">
		  <tr align="center">
            <td width="300" ><img src="images/logo_image.jpg" width="100" height="50" /></td>
			</tr>
			<tr align="center">
            <td ><img src="images/e-resource.gif" width="200"height="50" /></td>
			</tr>
			</table>
			</td>
            <td width="739" align="left" valign="bottom">
            <table width="721" border="0" cellspacing="0" cellpadding="0" height="50px">
              <tr align="right">
			  <td>
			  <table width="721" border="0" cellspacing="0" cellpadding="0">
			  
                <td id="session" align="right">Welcome, <%=user_name%></td>
				</table>
				</td>
              </tr>
			   <tr border="1">
                <td height="150" align="right" valign="middle">
                <table width="570"  cellspacing="0" cellpadding="0" border="1">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					<jsp:include page="hr_admin_header.jsp" flush="false"></jsp:include>
					<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>
					
					
					
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
    

<form name="frm">

<input type="hidden" name="iPageNo" value="<%=iPageNo%>">
<input type="hidden" name="cPageNo" value="<%=cPageNo%>">
<input type="hidden" name="iShowRows" value="<%=iShowRows%>">
</td>
</tr>
</table>	   
<table border="0" bordercolor="#D468F7"   align="center">
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
<b class="text">Employee Name</b>
</font>
</td>
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b class="text">Department</b>
</font>
</td>
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b class="text">Moblie No</b>
</font>
</td>
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b class="text">Present Salary</b>
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
      		<a href="update_employee_profile.jsp?id=<%=rsPagination.getString(1)%>" title="Click for Update"><%=rsPagination.getString(1)%></a>
		</td>
		 <td>
	   		  <%=rsPagination.getString(2)%>
	    
	 		<%=rsPagination.getString(3)%>
	 	</td>  
 		<td>
 			<%=rsPagination.getString(9)%>
 		</td>
 		<td>
 			<%=rsPagination.getString(11)%>
 			
 			
 		</td>
 		<td>
 			<%=rsPagination.getString(27)%>
 			
 			
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

</tr>

</table>
</form>
</td>
</tr>

<tr>
    <td align="center">
			<table width="98%" class="tab10"><tr id="svstr"><td align="right">&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

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
