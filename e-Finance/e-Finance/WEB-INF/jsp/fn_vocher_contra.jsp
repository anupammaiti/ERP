<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>

<link rel="stylesheet" href="css/finance_style.css"/>
</head>

<script type="text/javascript">
	$(document).ready(function(){
		alert('Hello');
		var companyname=$('#companyid').val();
		$.ajax({
			url:'second_account_recive.fin',
			data:{'companyname':companyname},
			success:function(data){
				$('#account').html(data);
			}
		});
		return true;	
	});
$(document).ready(function(){
	alert('Hai');
	$.get('second_account_recive.fin',function(data){
		$('#account1').html(data);
	});
});
	

	
</script>

</head>
<body>
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
	</div>
	<div class="menuscreen">
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
<fieldset>
	<legend>Vocher Contra</legend>

<form:form action="sfn_vocher_contra.fin" method="post" commandName="vocherContraBean">
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">
<form:input path="reciptno" id="contrareciptno"/>
  </td>
 </tr>
 <tr> 
 <td><font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
 <form:input path="date"  id="gendate1"/>
</td> 
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    TO Account
   </font>
   </td>
   <td>
	<form:select path="under" id="account">
	</form:select>   
   </td>
 </tr>
<tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   <form:input path="currentbalance" readonly="true" id="balance"/>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
   From Account
   </font>
  </td>
  <td>
<form:select path="particular" id="account1">
</form:select>
  </td>
  </tr>
  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
 <form:input path="currentbalance" readonly="true" id="balance1"/>
  </td>
 </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Amount
	</font>
   </td>
   <td>
   <form:input path="ammount" />
   </td>
  </tr>
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
  <form:textarea path="narration"/>
  </td>
 </tr>
<tr>
	<td><input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
	</td>
	<td>
		<input type="Submit" value="Submit"/>
	</td>
</tr>  
</table>
</form:form>
</fieldset>
	
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
