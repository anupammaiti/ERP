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
	
	if((document.measurments.symbol.value=="")||(document.measurments.formalname.value=="")||(document.measurments.numofdec.value=="")){
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
		
		var numaric = document.measurments.symbol.value;
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
			document.measurments.symbol.focus();
			document.measurments.symbol.style.background="pink";
			document.measurments.symbol.value="";
			
			return false;			
		  	}
		}
	}
		
function alphabetic1(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.measurments.formalname.value;
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
			document.measurments.formalname.focus();
			document.measurments.formalname.style.background="pink";
			document.measurments.formalname.value="";
			
			return false;			
		  	}
		}
	}
	
	function numeric1(){
		//alert("Number Validation");
			var numaric=document.measurments.numofdec.value;
			
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
					document.measurments.numofdec.focus();
					document.measurments.numofdec.style.background="pink";
					document.measurments.numofdec.value="";
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
	<legend>Measurment</legend>


<form:form action="sfn_inventory_measure.fin" method="post" commandName="measuresBean" name="measurments" onsubmit="return isEmpty();">

<table class="form_background">


<tr>
<td >
Type
</td>
<td>
<form:select path="type">
	<form:option value="Simple">Simple</form:option>
	<form:option value="Compound">Compound</form:option>
</form:select>

</td>
</tr>

<tr>
<td>
Symbol
</td>
<td>
<form:input path="symbol" onkeyup="return alphabetic();"/>
<form:errors path="symbol" cssClass="error"></form:errors>
</td>
</tr>




<tr>
<td>
Formal Name
</td>
<td>
<form:input path="formalname" onkeyup="return alphabetic1();"/>
<form:errors path="formalname" cssClass="error"/>
</td>
</tr>


<tr>
<td>
Number of Decimal Places
</td>
<td>
<form:input path="numofdec" onkeyup="return numeric1();"/>
<form:errors path="numofdec" cssClass="error"></form:errors>
</td>
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
	</div></div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	

</body>
</html>