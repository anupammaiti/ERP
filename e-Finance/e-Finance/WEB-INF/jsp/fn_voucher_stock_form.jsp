<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript">

	function isEmpty(){
		with(document.voucherform){
			
		if((name.value=="")||(abbr.value=="")||(advconfiguration.value=="")||(useeffectivedates.value=="")||(usecommonnarration.value=="")||(narrationsforeachentry.value=="")){
			alert('*All Fields are Mandatory*');
			return false;
		}else{
			return true;
		}
		}
		return true;
	}
	function numeric(){
		//alert("Number Validation");
			var numaric=document.advexp.srlno.value;
			
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  return true;
				  }
			      
				else
					{	
					document.advexp.srlno.focus();
					document.advexp.srlno.style.background="pink";
					document.advexp.srlno.value="";
					return false;
					}
					
					}
						return true;
					}
	function alphabetic(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.advexp.approvedby.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  
				  document.advexp.approvedby.style.background="white";
				  return true;
				  
		      }
			else
				{		
				document.advexp.approvedby.focus();
				document.advexp.approvedby.style.background="pink";
				document.advexp.approvedby.value="";
				
				return false;			
			  	}
			}
			return true;
		}
	
</script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
 /* System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project"><%=comp%></div><div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
		<fieldset>
			<legend>
				Create Voucher
			</legend>
<form:form action="created_fn_voucher.fin" method="post" commandName="vocherDetailsBean" id="vocher-form" name="voucherform" onsubmit="return isEmpty();">
<table align="center" border="0" class="form_background">

 
 <tr>
  <td>
  
     Name
  
   </td>
   <td>
   <form:input path="name"/>
   <form:errors path="name" cssClass="error"></form:errors>
    
    </td>
 </tr>
 <tr>
  <td>
  
    Type of Voucher
  
  </td>
  
  <td>
  
   
	<form:select path="typeofvocher" id="vochertypedata">
	 	
	</form:select>
  
  </td>
 </tr>
 <tr>
  <td>
  
    Abbr
  
  </td>
  
  <td>
  
   <form:input path="abbr" onkeyup="return alphabetic();"/>
   
  
  </td>
 </tr>

 <tr>
  <td>
  
    Method Of  Voucher Numbering 
  
  </td>
  <td>
   <form:select path="vochernumbering">
   <form:option value="Automatic">Automatic</form:option>
   <form:option value="Manual">Manual</form:option>
   <form:option value="None">None</form:option>
   </form:select>
   
  
  </td>
  
 </tr>
 <tr>
  <td>
     Use Advanced Configuration
  
  </td>
  <td>
   <form:select path="advconfiguration">
   	<form:option value=""></form:option>
   	<form:option value="Yes"></form:option>
   	<form:option value="No"></form:option>
   </form:select>
   
  </td>
 </tr>
 <tr>
  <td>
  
    Use Effective Dates
  
  </td>
  <td>
  <form:select path="useeffectivedates">
  <form:option value=""></form:option>
  <form:option value="Yes"></form:option>
  <form:option value="No"></form:option>
  </form:select>
   
  </td>
 </tr>
 <tr>
  <td>
  
    Use common Narration
  
   </td>
   <td>
   <form:select path="usecommonnarration" >
   <form:option value=""></form:option>
   <form:option value="Yes"></form:option>
   <form:option value="No"></form:option>
   </form:select>
   
    
   </td>
 </tr>
 <tr>
  <td>
  
    Narrations for Each Entry
  
  </td>
   <td>
   <form:select path="narrationsforeachentry">
   <form:option value=""></form:option>
   <form:option value="Yes"></form:option>
   <form:option value="No"></form:option>
   </form:select>
  </td>
  </tr>
  <tr>
  <td>
  
   Name of Class
  
   </td>
   <td>
   <form:input path="nameofclass" value="None"/>
   
    
   </td>
 </tr>
 <tr>
  <td colspan="2" align="center">
  <%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
   <input type="image" src="images/submit_button.jpg" id="button1"/>
   
  </td>
 </tr>
 
</table>
</form:form>
		</fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div></div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
	