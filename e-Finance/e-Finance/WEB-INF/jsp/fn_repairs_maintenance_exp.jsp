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
	//alert('Indirect Expenses');
	var companyname=$('#companyid').val();
		$.get('fn_ledgerdetails.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('.ledgerlist').html(data);
		});
			
		$('#amount').blur(function(){
			var quant=$('#quantity').val();
			var amount=$('#amount').val();
			var total=quant*amount;
			$('#total').val(total);
			
			
		});
		
	
});
function isEmpty(){
	if((document.repairexp.approvedby.value=="")||(document.repairexp.itemname.value=="")||(document.repairexp.quantity.value=="")||(document.repairexp.amount.value=="")){
		alert('*All fields are Mandatory*');
		return false;
	}else{
		return true;
	}
	return true;
}

function numeric(){
	//alert("Number Validation");
		var numaric=document.repairexp.quantity.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.repairexp.quantity.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.repairexp.quantity.focus();
				document.repairexp.quantity.style.background="pink";
				document.repairexp.quantity.value="";
				return false;
				}
				
				}
					return true;
				}
				
function numeric1(){
	//alert("Number Validation");
		var numaric=document.repairexp.amount.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.repairexp.amount.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.repairexp.amount.focus();
				document.repairexp.amount.style.background="pink";
				document.repairexp.amount.value="";
				return false;
				}
				
				}
					return true;
				}

function alphabetic(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.repairexp.approvedby.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  document.repairexp.approvedby.style.background="white";
		 
			  return true;
		  }	  
	     
		else
			{		
			document.repairexp.approvedby.focus();
			document.repairexp.approvedby.style.background="pink";
			document.repairexp.approvedby.value="";
			
			return false;			
		  	}
		}
		return true;
	}	
		
function alphabetic1(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.repairexp.itemname.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  document.repairexp.itemname.style.background="white";
		 
			  return true;
		  }	  
	     
		else
			{		
			document.repairexp.itemname.focus();
			document.repairexp.itemname.style.background="pink";
			document.repairexp.itemname.value="";
			
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
 System.out.println("hi"+username);
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
			<legend>Repairs And Maintenance</legend>
			<form:form action="sfn_repairs_maintenance_exp.fin" method="post" commandName="repairMaintenenceBean" name="repairexp" onsubmit="return isEmpty();">
			<table>
				<tr>
					<td>
						Ledger Name
					</td>		
					<td>
						<form:select path="ledgername" class="ledgerdetailslist1"></form:select>
					</td>
				</tr>
				<tr>
					<td>
						Approved By
					</td>
					<td>
						<form:input path="approvedby" onkeyup="return alphabetic();"/>
						<form:errors path="approvedby" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td>
						Item Name
					</td>
					<td>
						<form:input path="itemname" onkeyup="return alphabetic1();"/>
						<form:errors path="itemname" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td>
						Quantity
					</td>
					<td>
						<form:input path="quantity" id="quantity" onkeyup="return numeric();"/>
						<form:errors path="quantity" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>	
					<td>
						Amount
					</td>
					<td>
						<form:input path="amount" id="amount" onkeyup="return numeric1();"/>
						<form:errors path="amount" cssClass="error"></form:errors>
					</td>
		    	</tr>
		    	<tr>
		    		<td>
		    			Total
		    		</td>
		    		<td>
		    			<form:input path="total" id="total"/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>
		    			<input type="hidden" name="login_comp" value="<%=comp%>" id="companyid"/>
		    		</td>
		    		<td>
		    			<input type="image" src="images/submit_button.jpg" id="button1"/>
		    		</td>
		    	</tr>
			</table>
			
			</form:form>
		</fieldset>
	
	</div>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	
<% }
else
{
response.sendRedirect("login.fin");
}%>
</body>

</html>