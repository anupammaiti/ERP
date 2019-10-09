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
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script src="School.js" language="javascript"></script>
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
	<script src="./Source/LightFace.Image.js"></script>
	<script src="./Source/LightFace.Request.js"></script>
	
<!--------------------------------close here------------------------------->
<script type="text/javascript">
///////////////////////mail checking
function checkmail()
{
with(document.frm)
		{	
	var emailRegEx =/^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._-])?([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/
 
if (emailid.value.search(emailRegEx )==-1) //if match failed
{
alert("Email Id is invalid !!!");
return false;
}
	}
	
	}
	function checkmail1()
{
with(document.frm)
		{	
	var emailRegEx =/^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._-])?([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/
 
if (emailidd.value.search(emailRegEx )==-1) //if match failed
{
alert("Company mail id is invalid !!!");
return false;
}
	}
	
	}////////////////////////
	function checkname()
	{
	var a=document.frm.name.value;
	if(a.length<2)
	{
	alert("Name Should be minimum 2 characters");
	document.frm.name.focus();
	return false;
	}
	}
	/////////////fathername
	function checkname1()
	{
	var b=document.frm.fathername.value;
	if(b.length<2)
	{
	alert("Father Name Should be minimum 2 characters");
	document.frm.fathername.focus();
	return false;
	}
	}
	///////////////////Nation
	function checknation1()
	{
	var f=document.frm.nomination.value;
	if(f.length<3)
	{
	alert("Nationality Should be minimum 3 characters");
	document.frm.nomination.focus();
	return false;
	}
	}
	///////////////////Nation
	function checkaddress()
	{
	var i=document.frm.address.value;
	if(i.length<3)
	{
	alert("Address Should be minimum 3 characters");
	document.frm.address.focus();
	return false;
	}
	}
	///////////////////Location
	function checklocation1()
	{
	var h=document.frm.location.value;
	if(h.length<3)
	{
	alert("Location Should be minimum 3 characters");
	document.frm.location.focus();
	return false;
	}
	}
	///////////////////HOD
	function checkhod()
	{
	var j=document.frm.hod.value;
	if(j.length<2)
	{
	alert("HOD Name Should be minimum 2 characters");
	document.frm.hod.focus();
	return false;
	}
	}
		///////////////////RM
	function checkrm()
	{
	var k=document.frm.reportingto.value;
	if(k.length<2)
	{
	alert("Reporting Manager Name Should be minimum 2 characters");
	document.frm.reportingto.focus();
	return false;
	}
	}

	///////////////////birth
	function checkbirth()
	{
	var e=document.frm.birthplace.value;
	if(e.length<3)
	{
	alert("Birth Place Should be minimum 3 characters");
	document.frm.birthplace.focus();
	return false;
	}
	}
	///////////////////religion 
	function checkreligion()
	{
	var d=document.frm.religion.value;
	if(d.length<3)
	{
	alert("Religion Should be minimum 3 characters");
	document.frm.religion.focus();
	return false;
	}
	}/////////////////////////phone
	function checkphone()
	{
	var c=document.frm.phoneno.value;
	if(c.length<10)
	{
	alert("Phone Number Should be minimum 10 digits");
	document.frm.phoneno.focus();
	return false;
	}
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
</style></head>


<script language="javascript">
 function create()
{

	if(document.frm.name.value==""||
		
		document.frm.dob.value==""||
		document.frm.sex.value==""||
		document.frm.joiningdate.value==""||
		document.frm.designation.value==""||
		document.frm.department.value==""||
		document.frm.reportingto.value==""||
		document.frm.hod.value==""||
		document.frm.companyname.value==""||
		document.frm.presentsalary.value==""||
		document.frm.empno.value=="")
		
		//document.frm.name.value==""||
		//document.frm.yearofachievement.value==""||
		//document.frm.awards.value==""||
		//document.frm.salaryoffred.value==""||
		//document.frm.type.value==""||
		//document.frm.BankAcno.value==""||
		//document.frm.PFAcno.value==""||
		//document.frm.join_time_req.value=="")
		
	{
		alert("You missed some mandatory fields !!");
        return false;
	}
	
	if(document.frm.resigndate.value=="")
	{
	alert("Please fill the field with 9999-12-31.Should not leave blank !!");
	document.frm.resigndate.focus();
	document.frm.resigndate.style.background = "pink";
	 return false;
	}
	    
}	


//////////////////////////
function check(str)
{ 
xmlHttp1=GetXmlHttpObject();
if (xmlHttp1==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var h1=document.getElementById('empno').value;
	//alert("12121"+h1);
		str=h1;
		
var url="check.jsp";
url=url+"?q="+str;
//alert(str);
url=url+"&empno="+Math.random();
xmlHttp1.onreadystatechange=stateChanged1;
xmlHttp1.open("GET",url,true);
xmlHttp1.send(null);
}


function stateChanged1() 
{ 
if (xmlHttp1.readyState==4)
{ 
document.getElementById("empno2").innerHTML=xmlHttp1.responseText;
var a=document.getElementById("empno2").innerHTML;

//alert(a);
/*if(a==null)
{
return true;
}
else
{

alert("Employee number is exist, choose another");
document.frm.empno.focus();
return false;
}*/
}
}

/////////////////////////////

function GetXmlHttpObject()
{
var xmlHttp=null;
try
  {
  // Firefox, Opera 8.0+, Safari
  xmlHttp=new XMLHttpRequest();
  }
catch (e)
  {
  // Internet Explorer
  try
    {
    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    }
  catch (e)
    {
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
return xmlHttp;
}







function showMe (it, box) {
  var vis = (box.checked) ? "block" : "none";
  document.getElementById(it).style.display = vis;
  }
</script>
<%
String empnum=request.getParameter("empno");
////////System.out.println("Empno.................."+empnum);
 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if((user_name!=null)&&(pwd!=null)){
	 %>
 
<body>
		<h3 align="center"> <font color="#573801" size="4" class="head">Update Employee Information </font></h3>
		  <table align="center"  border="0" bordercolor="#D468F7"  width="900" class="tab18">
<form action="EmployeeInformationupdateBO" method="post" name="frm" onsubmit="return create(this)">
 <tr>&nbsp;
<td width="226">
<table  align="center"  border="0" class="tab2">
     <tr>
	 <td><font color="#000066" face="Verdana" size="2" >Emp ID.</font><font color="#FF0000">*</font></td>
	 <%
	 try{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String empid1="";
	String fname="";
	String lname="";
	String father="";
	String dob="";
	String sex="";
	String joindate="";
	String designation="";
	String department="";
	String rm="";
	String location="";
	String em="";
	String nation="";
	String birthplace="";
	String phone="";
	String address="";
	String religion="";
	String pan="";
	String passport="";
	String company="";
	String qualif="";
	double presentsal=0.0;
	String bacc="";
	String email="";
	String email1="";
	String  hod="";
	String moe="";
	String resigndate="";
	String Status="";
	ConnectionUtils connectionUtils=new ConnectionUtils();
	try
	{
	//Class.forName("com.mysql.jdbc.Driver");
	//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	//////System.out.println("empupdate.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
	con=connectionUtils.getDBConnection();
	//////System.out.println("empupdate.jsp::ConnectionPool----->>>>After Open --->>>>Test");

	
	st=con.createStatement();
	rs=st.executeQuery("select companyname from companylist order by companyname");
	////////////////////////code to select empdetails based on empid from table
	PreparedStatement pss=con.prepareStatement("select * from employee where empno=?");
	pss.setString(1,empnum);
	ResultSet rss=pss.executeQuery();
	/////////////////////////////////////////////////////////////////////////
	int c=0;
	while(rss.next())
	{
	c++;
	empid1=rss.getString(1);
	 fname=rss.getString(2);
	 lname=rss.getString(3);
	 father=rss.getString(4);
	 dob=rss.getString(5);
	 sex=rss.getString(6);
	 joindate=rss.getString(7);
	 designation=rss.getString(8);
	 department=rss.getString(9);
	 rm=rss.getString(10);
	 location=rss.getString(12);
	em=rss.getString(13);
	nation=rss.getString(14);
	birthplace=rss.getString(15);
	phone=rss.getString(16);
	address=rss.getString(17);
	religion=rss.getString(18);
	pan=rss.getString(19);
	passport=rss.getString(20);
	company=rss.getString(23);
	qualif=rss.getString(24);
	presentsal=rss.getDouble(25);
	bacc=rss.getString(28);
	email=rss.getString(32);
	email1=rss.getString(34);
	hod=rss.getString(33);
	moe=rss.getString(35);
	resigndate=rss.getString(36);
	Status=rss.getString(37);
	}//while close
	%>
	 <td><input type="text" name="empno" id="empno" onBlur="check(this);" onkeypress="return alphanumeric(event)" value="<%=empid1%>" readonly="true"><div id="empno2"></div></td>
	  <td width="110">
<font color="#000066" size="2" face="verdana">Company name</font><font color="#FF0000">*</font>
    
  </td>
    <td width="144">
	
				<select type="text" name="companyname">
				
				<option><%=company%></option>
				<%while(rs.next()){%>
				<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
				<%}%>
				</select>
  
   
	
	<% if(c==0)
	{
	out.println("<font color=red> No Data Found</fonr>");
	}
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}
	%>
	 </td>
	 
  </tr>
 <tr>
  <!--<td><font color="#000066"face="Verdana" size="2" >Emp No.</font>
    </td>
  <td>
   <input type="text" name="empno">
  </td>
 </tr>-->
 <tr>
  <td><font color="#000066" face="Verdana" size="2" >First Name</font><font color="#FF0000">*</font>
   
  </td>
  <td>
   <input type="text" name="name" size="30" onkeypress="return alpha(event)" onBlur="return checkname();" value="<%=fname%>">

  </td>
  <td>
   <font color="#000066" face="Verdana" size="2" >Last Name</font>
  </td>
  <td>
      <input type="text" name="lname" onkeypress="return alpha(event)" value="<%=lname%>">

  </td>
 </tr>
  <tr>
  <td><font color="#000066"face="Verdana" size="2" >Father Name</font>
   
  </td>
  <td>
   <input type="text" name="fathername" size="30" onkeypress="return alpha(event)" onBlur="return checkname1();" value="<%=father%>">
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Date of Birth</font><font color="#FF0000">*</font>
   
  </td>
  <td>
   <input type="text" name="dob"  onfocus="showCalendarControl(this);" readonly="true" value="<%=dob%>">
  </td>
 </tr>
  
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Gender</font>
   
  </td>
  <td>
   <select name="sex">
   <option><%=sex%></option>
    <option>  <font color="#000066"face="Verdana" size="2">Male</font>    </option>
	<option>  <font color="#000066"face="Verdana" size="2" >Female</font>    </option>
   </select>
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Email Id</font>
   
  </td>
  <td>
   <input type="text" name="emailid" onblur=" return checkmail(this);" value="<%=email1%>">
  </td>
 </tr>
 
  <tr>
  <td><font color="#000066"face="Verdana" size="2" >Company Mail Id</font>
   
  </td>
  <td>
   <input type="text" name="emailidd" onblur=" return checkmail1(this);" value="<%=email%>">
  </td>
   <td>
    <font color="#000066"face="Verdana" size="2" >Qualification</font>
   </td>
   <td>
    <select name="qualification">
	<option><%=qualif%></option>
	 <option>Doctorate</option>
	 <option>Post Graduate</option>
	 <option>Graduate</option>
	</select>
   </td>
  </tr>
 
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Address</font>
   
  </td>
  <td>
   <input type="text" name="address" onBlur="return checkaddress();" value="<%=address%>">
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Date Of Joining</font><font color="#FF0000">*</font>
   
  </td>
  <td>
   <input type="text" name="joiningdate"    onfocus="showCalendarControl(this);" readonly="true" value="<%=joindate%>">
  </td>
 </tr>
 
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Department</font><font color="#FF0000">*</font>
  </td>
  <%
try
{
    PreparedStatement ps=con.prepareStatement("Select department from  department");
	 rs=ps.executeQuery();
%>
  <td>
   <select type="text" name="department">
   				<option><%=department%></option>

  <%
	while(rs.next())
	{
	%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
	<%
	}
	%>
</select></td> 
<%
}
  catch (Exception e)
		  {
			  //////System.out.println("Exception raised");
		  }

%>

  <td><font color="#000066"face="Verdana" size="2" >Designation</font><font color="#FF0000">*</font>
 </td>
 <%
try
{
    PreparedStatement ps=con.prepareStatement("Select designation from designation order by designation");
	 rs=ps.executeQuery();
%>
  <td>
   <select type="text" name="designation">
   				<option><%=designation%></option>

  <%
	while(rs.next())
	{
	%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
	<%
	}
	%>
</select></td></tr> 
<%
}
  catch (Exception e)
		  {
			  //////System.out.println("Exception raised");
		  }

%>

 
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Head Of The Department</font><font color="#FF0000">*</font>
   
  </td>
  <td>
  	<input type="text" name="hod" onkeypress="return alpha(event)" onBlur="return checkhod();" value="<%=hod%>"/>
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Reporting to</font><font color="#FF0000">*</font>
    
   </td>
   <td>
    <input type="text" name="reportingto" onkeypress="return alpha(event)" onBlur="return checkrm();" value="<%=rm%>">
    <input type="hidden" name="joblevel" value="-">

   </td>
 </tr>
  
 <!-- <tr>
   <td><font color="#000066"face="Verdana" size="2" >Job Level</font>
    
   </td>
   <td>
   </td>
  </tr>-->
  <tr>
   <td><font color="#000066"face="Verdana" size="2" >Location</font><font color="#FF0000">*</font>
    
   </td>
   <td>
    <input type="text" name="location" onkeypress="return alpha(event)" onBlur="return checklocation1();" value="<%=location%>">
    </td>
  
   <td><font color="#000066"face="Verdana" size="2" >Manner of Entry</font>
    
   </td>
   <td>
    <select name="entrymanner">
	<option><%=em%></option>
	 <option><font color="#000066"face="Verdana" size="2" >Placement</font></option>
	 <option><font color="#000066"face="Verdana" size="2" >Direct</font></option>
	 <option><font color="#000066"face="Verdana" size="2" >Campus</font></option>
	 <option><font color="#000066"face="Verdana" size="2" >Refferal</font></option>
	 <option><font color="#000066"face="Verdana" size="2" >Advt</font></option>
	 <option><font color="#000066"face="Verdana" size="2" >Consultant</font></option>
	</select>
   </td>
  </tr>
  <tr>
  <td><font color="#000066"face="Verdana" size="2" >Mode Of Employment</font>
  </td>
  <%
try
{
    PreparedStatement ps=con.prepareStatement("Select modeofemploye from modeofemployement");
	 rs=ps.executeQuery();
%>
  <td>
   <select type="text" name="moe">
   				<option><%=moe%></option>

  <%
	while(rs.next())
	{
	%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
	<%
	}
	%>
</select></td> 
<%
}
  catch (Exception e)
		  {
			  //////System.out.println("Exception raised");
		  }

%>

   <td><font color="#000066"face="Verdana" size="2" >Nationality</font>
    
   </td>
   <td>
    <input type="text" name="nomination" onkeypress="return alpha(event)" onBlur="return checknation1();" value="<%=nation%>">
   </td>
  </tr>
  <tr>
   <td><font color="#000066"face="Verdana" size="2" >Place Of Birth</font>
    
   </td>
   <td>
    <input type="text" name="birthplace" onkeypress="return alpha(event)" onBlur="return checkbirth();" value="<%=birthplace%>">
   </td>
 
   <!-- <tr>
 <td><font color="#000066"face="Verdana" size="2" >Marital Status</font>
    
   </td>
    <td>
   <input type="checkbox" name="maritalstatus" value="yes" onclick="showMe('div1', this)">
      <input type="text" name="maritalstatus">
   </td>
  </tr>
<tbody id='div1' style="display: none;" class="div1">
  <tr>
   <td width="120px"><font color="#000066"face="Verdana" size="2" >Marriage Date</font>
     
   </td>
   <td>
    <input type="text" name="marriagedate" value="yyyy-mm-dd" onfocus="showCalendarControl(this);" readonly="true">
   </td>
  </tr>-->


   <td><font color="#000066"face="Verdana" size="2" >Religion</font>
    
   </td>
   <td>
    <input type="text" name="religion" onkeypress="return alpha(event)" onBlur="return checkreligion();" value="<%=religion%>">
   </td>
  </tr>
  <tr>
   <td><font color="#000066"face="Verdana" size="2" >PAN Number</font>
    
   </td>
   <td>
    <input type="text" name="pannumber" onkeypress="return alphanumeric(event)" value="<%=pan%>">
   </td>
  
   <td><font color="#000066"face="Verdana" size="2" >Passport Number</font>
    
   </td>
   <td>
    <input type="text" name="passportnumber" onkeypress="return alphanumeric(event)" value="<%=passport%>">
   </td>
   
  </tr>

  <tr>
  
  <td><font color="#000066"face="Verdana" size="2" >Phone No</font>
   
  </td>
  <td>
   <input type="text" name="phoneno" onkeypress="return number1(event)" onBlur="return checkphone();" value="<%=phone%>">
  </td>
  <td>
    <font color="#000066"face="Verdana" size="2" >Bank A/c No</font>
   </td>
   <td>
    <input type="text" name="BankAcno" onkeypress="return number1(event)" value="<%=bacc%>">
   </td>
  
  </tr>
  
  <tr>
   
   <td>
    <font color="#000066"face="Verdana" size="2" >Present Salary</font><font color="#FF0000">*</font>
   </td>
   <td>
    <input type="text" name="presentsalary" onkeypress="return number1(event)" value="<%=presentsal%>"><font color="#FF0000" size="1">(eg. 50000)</font>
   </td>
   <td><font color="#000066"face="Verdana" size="2" >Emp. Status</font></td><td><select type="text" name="status">
   				<option><%=Status%></option>
				<option>Active</option>
				<option>InActive</option></select></td>
  </tr>
 
  <tr>
   <td>
   <font color="#000066"face="Verdana" size="2" >Resignation date</font>
   </td>
   <td>
   <%if(resigndate==null)
   {
   resigndate="9999-12-31";
   }
   %>
    <input type="text" name="resigndate" value="<%=resigndate%>" onfocus="showCalendarControl(this);"><font color="#FF0000" size="1">yyyy-mm-dd</font>
   </td>
    <td align="center">
 <input type="image" src="images/submit_btn.png" class=" payroll_button"/>	 </td>
  </tr>
 </form>
<% }
  catch (Exception e)
		  {
			  out.println("Exception raised");
		  }finally {
			try
			{
			Connection con=null;
			ConnectionUtils connectionUtils=new ConnectionUtils();
				
				//////System.out.println("empupdate.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("empupdate.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}

%>

 </td></tr>
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
