<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<script type="text/javascript" src="js/jQuery.Validate.min.js"></script>
<script type="text/javascript" src="js/erp_validations.js"></script>
 </head>
<%
 String username=(String)session.getAttribute("uname");
 String pwd=(String)session.getAttribute("pswd");
 System.out.println("hi"+username);
 System.out.println("hi"+pwd);
 if(pwd!=null)
 { %>
<body>
<center><h3>ERP</h3></center><hr/>
	<div class="mainframe">
    	<div class="titleform">
			<div id="logo">
            		
            </div>
            <div class="title_app">
            	HR 
            </div>
            <div>
           <span id="loginby">Welcome:&nbsp; <%=username %></span>
            <jsp:include page="header.jsp" flush="true"/> 	 
            </div>
		</div>
        <div class="Content">
<fieldset>
	<legend>	
		Employee Head Report
	</legend>

<table>
	<tr>
		<td></td>
	</tr>
	<tr>
		<td>
			Perticulars
		</td>
		<td>
			July
		</td>
		<td>
			August
		</td>
		<td>
		<td>
			September
		</td>
		<td>
			October
		</td>	
		<td>
			November
		</td>
		<td>
			December
		</td>
	</tr>
	
	<tr>
		<td>
			
		</td>
	</tr>
</table>
</fieldset>
        </div>
                </div>
        <div class="bodyframe">
        
        </div>
	</div>
<% }
else
{
response.sendRedirect("login.erp");
}%>	
</body>
</html>
