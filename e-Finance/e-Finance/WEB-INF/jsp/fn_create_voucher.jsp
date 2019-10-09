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
	$(document).ready(function(){
		//alert('Hello');
		var companyname=$('#companyid').val();
		$.get('fn_voucher_type_details.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('#voucherlist').html(data);
		});
	});
	
	function isEmpty(){
		if((document.voucherform.name.value=="")||(document.voucherform.typeofvocher.value=="")||(document.voucherform.abbr.value=="")){
			alert('*All Fields are Manderory*');
			return false;
		}else{
			return true;
		}
		return true;
	}
	
	function alphabetic(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.voucherform.name.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  document.voucherform.name.style.background="white";
			  	  return true;
				  
		      }
			else
				{		
				document.voucherform.name.focus();
				document.voucherform.name.style.background="pink";
				document.voucherform.name.value="";
				
				return false;			
			  	}
			}
		}
		
		function numeric1(){
			//alert("Number Validation");
				var numaric=document.invoice1.srlno.value;
				
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
						document.invoice1.srlno.focus();
						document.invoice1.srlno.style.background="pink";
						document.invoice1.srlno.value="";
						return false;
						}
						
						}
							return false;
						}
	
</script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");System.out.println("hi"+username);
 System.out.println("hi"+pwd);
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
   <form:input path="name" onkeyup="return alphabetic();"/>
    <form:errors path="name" cssClass="error"></form:errors>
    </td>
 </tr>
 <tr>
  <td>
  
    Type of Voucher
  
  </td>
  
  <td>
  
   
	<form:select path="typeofvocher" id="voucherlist">
	 	
	</form:select>
  
  </td>
 </tr>
 <tr>
  <td>
  
    Abbr
  
  </td>
  
  <td>
  
   <form:input path="abbr"/>
   
  
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
   <form:input path="advconfiguration" value="No"/>
   
  </td>
 </tr>
 <tr>
  <td>
  
    Use Effective Dates
  
  </td>
  <td>
  <form:input path="useeffectivedates" value="No"/>
   
  </td>
 </tr>
 <tr>
  <td>
  
    Use common Narration
  
   </td>
   <td>
   <form:input path="usecommonnarration" value="Yes"/>
    
   </td>
 </tr>
 <tr>
  <td>
  
    Narrations for Each Entry
  
  </td>
   <td>
   <form:input path="narrationsforeachentry" value="No"/>
   
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
	
   <input type="image" src="images/submit_button.jpg" id="button1"/>
   <input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
  </td>
 </tr>
 
</table>
</form:form>
		</fieldset>
	
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
	