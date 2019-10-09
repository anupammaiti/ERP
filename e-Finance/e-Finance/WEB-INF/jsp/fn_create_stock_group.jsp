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
		
		if((document.stockgroup.name.value=="")||(document.stockgroup.alias.value=="")){
			alert('*All fields Mandatory*');
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
			
			var numaric = document.stockgroup.name.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  return true;
				  
		      }
			else
				{		
				document.stockgroup.name.focus();
				document.stockgroup.name.style.background="pink";
				document.stockgroup.name.value="";
				
				return false;			
			  	}
			}
		}
			
	function alphabetic1(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.stockgroup.alias.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  return true;
				  
		      }
			else
				{		
				document.stockgroup.alias.focus();
				document.stockgroup.alias.style.background="pink";
				document.stockgroup.alias.value="";
				
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
		<legend>Stock Group</legend>
		<form:form action="sfn_stock_group.fin" method="post" commandName="stockGroupDetailsBean" onsubmit="return isEmpty();" name="stockgroup">
			<table class="form_background">
				<tr>
					<td >Name
					</td>
					<td >
					<form:input path="name" onkeyup="return alphabetic();"/>
					<form:errors path="name" cssClass="error"/>
					</td>
				</tr>

				<tr>
					<td>(Alias)</td>
					<td><form:input path="alias" onkeyup="return alphabetic1();"/></td>
				</tr>

				<tr>
					<td>Under</td>
					<td><form:select path="under">
							<form:option value=""></form:option>
							<form:option value="Primary">Primary</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td>Can Quantity of Items Be Added </td>
					<td><form:select path="qtyadd">
							<form:option value="No">No</form:option>
							<form:option value="Yes">Yes</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td>
						<input type="hidden" name="login_comp" value="<%=comp%>"/>
					</td>
					<td>
					<input type="image" src="images/submit_button.jpg" id="button1"/>
					</td>
				</tr>




			</table>
		</form:form>
	</fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
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
