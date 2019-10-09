<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script><script type="text/javascript">
	$(document).ready(function(){
		$.get('hlp_StockGroup.fin',function(data){
			$('.stockgroup').html(data);
		});
		
		//
		$.get('hlp_displayMesurements.fin',function(data){
			$('.mesurements').html(data);
		});
	});
	function isEmpty(){
		if((document.stockitem.name.value=="")||(document.stockitem.alias.value=="")||(document.stockitem.rateofduty.value=="")||(document.stockitem.trafficclassification.value=="")){
			alert("*All fields are Mandatory*");
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
			
			var numaric = document.stockitem.name.value;
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
				document.stockitem.name.focus();
				document.stockitem.name.style.background="pink";
				document.stockitem.name.value="";
				
				return false;			
			  	}
			}
		}
			
	function alphabetic1(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.stockitem.alias.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  document.stockitem.alias.style.background="white";
			  
				  return true;
				  
		      }
			else
				{		
				document.stockitem.alias.focus();
				document.stockitem.alias.style.background="pink";
				document.stockitem.alias.value="";
				
				return false;			
			  	}
			}
		}
		
		function numeric1(){
			//alert("Number Validation");
				var numaric=document.stockitem.rateofduty.value;
				
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
						document.stockitem.rateofduty.focus();
						document.stockitem.rateofduty.style.background="pink";
						document.stockitem.rateofduty.value="";
						return false;
						}
						
						}
							return false;
						}
		
		function numeric2(){
			//alert("Number Validation");
				var numaric=document.stockitem.trafficclassification.value;
				
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
						document.stockitem.trafficclassification.focus();
						document.stockitem.trafficclassification.style.background="pink";
						document.stockitem.trafficclassification.value="";
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
		<legend>Stock Item</legend>
		
<form:form action="sfn_generate_stock_item.fin" method="post" commandName="stockItemBean" name="stockitem" onsubmit="return isEmpty();">
			<table>
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
					<td>(Alias)
					</td>
					<td><form:input path="alias" onkeyup="return alphabetic1();"/></td>
				</tr>

				<tr>
					<td>
					Under
					</td>
					<td><form:select path="under" class="stockgroup">
							
						</form:select></td>
				</tr>

				<tr>
					<td>Units
					</td>
					<td><form:select path="units" class="mesurements">

						</form:select></td>
				</tr>




				<tr>
					<td>Tax
							Information (Rate of Duty)</td>
					<td><form:input path="rateofduty" onkeyup="return numeric1();"/>
						<form:errors path="rateofduty" cssClass="error"></form:errors>
					</td>
				</tr>

				<tr>
					<td>Tax	Information (Traffic Classification)</td>
					<td><form:input path="trafficclassification" onkeyup="return numeric2();"/>
						<form:errors path="trafficclassification" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
					<input type="image" src="images/submit_button.jpg" id="button1"/></td>
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
