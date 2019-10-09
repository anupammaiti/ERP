<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		////alert('Hello');
		var companyname=$('#companyid').val();
		$.get('fn_ledgerdetails.fin',{'compname':companyname},function(data){
			//alert(data);
			$('.ledgerlist').html(data);
		});
	});
</script>
<script src="js/CalendarControl.js" language="javascript"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
// System.out.println("hi"+username);
// System.out.println("hi"+pwd);
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
		<font color="red">
<form:errors path="emp.*"></form:errors></font>
		
<fieldset><legend>Cash Disbursements Journal</legend>
<form:form action="sfn_cashdisbursementsjournal.fin" method="post" commandName="cashdisbursementsjournalBean">
<table align="center" border="1" class="form_background">
 
  <tr>
   <td>
    <table align="center" border="1"  width="800">
	 
	 <tr>
	  <td>
	    Month
	      <form:select path="month"  >
	    	<form:option value="Jan"></form:option>
	    	<form:option value="Feb"></form:option>
	    	<form:option value="Mar"></form:option>
	    	<form:option value="Apr"></form:option>
	    	<form:option value="May"></form:option>
	    	<form:option value="Jun"></form:option>
	    	<form:option value="Jul"></form:option>
	    	<form:option value="Aug"></form:option>
	    	<form:option value="Sep"></form:option>
	    	<form:option value="Oct"></form:option>
	    	<form:option value="Nov"></form:option>
	    	<form:option value="Dec"></form:option>
	    </form:select>
	  </td>
	  <td>
	    General Ledger No
	    <form:select path="ledgerno" class="ledgerlist"></form:select>
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1"  width="800">
	 
	 <tr>
	  <td>
	    Date 
	  </td>
	  <td>
	    Check# 
	  </td>
	  <td>
	    Payee 
	  </td>
	  <td>
	    Account Credited
	   </td>
	   <td>
	    Account# 
	   </td>
	   
	
	  <td>
	      Cash
	   </td>
	   <td>
	     Discount
	  </td>
	  
	  <td>
	    Other
	  </td>
	  <td>
	    Account Debited
	  </td>
	  <td>
	    Amount#
	  </td>
	  <td>
	    Amount Payble
	  </td>
	  <td>
	    Other
	  </td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date1" size="8px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="check1" size="8px"/>
	  </td>
	  <td>
	    <form:input path="payee1" size="8px"/>
	  </td>
	  <td>
	   <form:input path="accountc1" size="8px"/>
	  </td>
	   <td>
 	   <form:input path="account1" size="8px"/>
	   </td> 
	   <td>
	     <form:input path="cash1" size="8px"/>
	   </td>
	   <td>
	     <form:input path="discount1" size="8px"/>
	    </td>
		<td>
		  <form:input path="other1" size="8px"/>
		</td>
		<td>
		  <form:input path="accountd1" size="8px"/>
		</td>
		<td>
		  <form:input path="amount1" size="8px"/>
		</td>
		<td>
		  <form:input path="amountp1" size="8px"/>
		</td>
		<td>
		  <form:input path="othera1" size="8px"/>
		</td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date2" size="8px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="check2" size="8px"/>
	  </td>
	  <td>
	    <form:input path="payee2" size="8px"/>
	  </td>
	  <td>
	   <form:input path="accountc2" size="8px"/>
	  </td>
	   <td>
 	   <form:input path="account2" size="8px"/>
	   </td> 
	   <td>
	     <form:input path="cash2" size="8px"/>
	   </td>
	   <td>
	     <form:input path="discount2" size="8px"/>
	    </td>
		<td>
		  <form:input path="other2" size="8px"/>
		</td>
		<td>
		  <form:input path="accountd2" size="8px"/>
		</td>
		<td>
		  <form:input path="amount2" size="8px"/>
		</td>
		<td>
		  <form:input path="amountp2" size="8px"/>
		</td>
		<td>
		  <form:input path="othera2" size="8px"/>
		</td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date3" size="8px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="check3" size="8px"/>
	  </td>
	  <td>
	    <form:input path="payee3" size="8px"/>
	  </td>
	  <td>
	   <form:input path="accountc3" size="8px"/>
	  </td>
	   <td>
 	   <form:input path="account3" size="8px"/>
	   </td> 
	   <td>
	     <form:input path="cash3" size="8px"/>
	   </td>
	   <td>
	     <form:input path="discount3" size="8px"/>
	    </td>
		<td>
		  <form:input path="other3" size="8px"/>
		</td>
		<td>
		  <form:input path="accountd3" size="8px"/>
		</td>
		<td>
		  <form:input path="amount3" size="8px"/>
		</td>
		<td>
		  <form:input path="amountp3" size="8px"/>
		</td>
		<td>
		  <form:input path="othera3" size="8px"/>
		</td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date4" size="8px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="check4" size="8px"/>
	  </td>
	  <td>
	    <form:input path="payee4" size="8px"/>
	  </td>
	  <td>
	   <form:input path="accountc4" size="8px"/>
	  </td>
	   <td>
 	   <form:input path="account4" size="8px"/>
	   </td> 
	   <td>
	     <form:input path="cash4" size="8px"/>
	   </td>
	   <td>
	     <form:input path="discount4" size="8px"/>
	    </td>
		<td>
		  <form:input path="other4" size="8px"/>
		</td>
		<td>
		  <form:input path="accountd4" size="8px"/>
		</td>
		<td>
		  <form:input path="amount4" size="8px"/>
		</td>
		<td>
		  <form:input path="amountp4" size="8px"/>
		</td>
		<td>
		  <form:input path="othera4" size="8px"/>
		</td>
	 </tr>
	 <tr>
	  <td>
	    <form:input path="date5" size="8px" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
	  </td>
	  <td>
	    <form:input path="check5" size="8px"/>
	  </td>
	  <td>
	    <form:input path="payee5" size="8px"/>
	  </td>
	  <td>
	   <form:input path="accountc5" size="8px"/>
	  </td>
	   <td>
 	   <form:input path="account5" size="8px"/>
	   </td> 
	   <td>
	     <form:input path="cash5" size="8px"/>
	   </td>
	   <td>
	     <form:input path="discount5" size="8px"/>
	    </td>
		<td>
		  <form:input path="other5" size="8px"/>
		</td>
		<td>
		  <form:input path="accountd5" size="8px"/>
		</td>
		<td>
		  <form:input path="amount5" size="8px"/>
		</td>
		<td>
		  <form:input path="amountp5" size="8px"/>
		</td>
		<td>
		  <form:input path="othera5" size="8px"/>
		</td>
	 </tr>
	 	 <tr>
	  <td colspan="9" align="center">
	  <input type="hidden" name="deltby" value="<%=username%>"/>
	  <input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
	  <input type="image" src="images/submit_button.jpg" id="button1"></td>
	  </tr>
	



	</table>
   </td>
   </tr>
   
</table></form:form>
</fieldset>


	</div>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
	
	<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	</div>
<% }
else
{
response.sendRedirect("login.fin");
}%>
</body>

</html>