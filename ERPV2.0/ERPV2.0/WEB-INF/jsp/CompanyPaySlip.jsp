
<%@ page contentType="text/html; charset=iso-8859-1" language="java" errorPage=""%>

<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>


</head>

<body>
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<h3>Payroll</h3>
<fieldset>
<legend>Company PaySlip</legend>

<form:form action="sCompanyPaySlip.erp" method="post" commandName="companyPaySlipBean">
 <table border="1" bordercolor="#573801" align="center" >
			<tr align="center">
				<td align="center">

					
					<table align="center">
						<tr>
							<td>
								Company Name
							</td>
							<td>
								<form:input path="companyname"/>
								
							</td>
						</tr>
						<tr>
							<td>
								Basic Salary 
							</td>
							<td>
								<form:input path="basic"/>
								
							</td>
						</tr>
						<tr>
							<td>
							HRA
							</td>
							<td>
								<form:input path="hra"/>
								
							</td>
						</tr>
						<tr>
							<td>
							PF
							</td>
							<td>
								<form:input path="pf"/>
								
							</td>
						</tr>
						<tr>
							<td>
								Conveyance
							</td>
							<td>
								<form:input path="conv"/>
								
							</td>
						</tr>	
						
						<tr>
							<td>
								DA
							</td>
							<td>
							<form:input path="da"/>
							
							</td>
						</tr>
					</table>
					
					<table align="center" class="y" >
					<caption><b>IncomeTax Slab Structure</caption>
	
					<tr><td align="center" colspan="4"><b>For Men</b></td></tr>
					<tr>
						<th><b>Slab</b></th>
						<th><b>Inclusive</b></th>
						<th><b>Exclusive</b></th>
						<th><b>%</b></th></tr>
						
						<tr> <td align="center"> <b>slab1</b></td>
						 <td>
						 <form:input path="mis1"/>
						 
						 </td>
						 <td>
						 <form:input path="mie1"/>
						 </td>
						 <td>
						 <form:input path="mip1"/>
						 </td> 
						 </tr>

						<tr> <td align="center"> <b>slab2</b></td> 
						<td>
						<form:input path="mis2"/>
						</td>
						<td>
						<form:input path="mie2"/>
						</td> 
						<td>
						<form:input path="mip2"/>
						</td> 
						</tr>

						<tr> <td align="center"><b>slab3</b></td>
						 <td>
						 <form:input path="mis3"/>
						 </td> 
						 <td>
						 <form:input path="mie3"/>
						 </td> 
						 <td>
						 <form:input path="mip3"/>
						 </td> 
						</tr>

						<tr><td align="center"><b> slab4</b></td> 
						<td>
						<form:input path="mis1"/>
						</td> 
						<td>
						<form:input path="mie1"/>
						</td>
						 <td>
						 <form:input path="mip1"/>
						 </td>
					   </tr>


						<tr><td align="center" colspan="4"><b>For Women<b></td></tr>
						
						<tr> <td align="center"> <b>slab1</b></td>
						<td>
						<form:input path="fis1"/>
						</td> 
						<td>
						<form:input path="fie1"/>
						</td> 
						<td>
						<form:input path="fip1"/>
						</td>
						</tr>

						<tr> <td align="center"><b> slab2</b></td> 
						<td>
						<form:input path="fis2"/>
						</td> 
						<td>
						<form:input path="fie2"/>
						</td> 
						<td>
						<form:input path="fip2"/>
						</td>
						</tr>

						<tr> <td align="center"><b> slab3</b></td> 
						<td>
						<form:input path="fis3"/>
						</td> 
						<td>
						<form:input path="fie3"/>
						</td> 
						<td>
						<form:input path="fip3"/>
						</td>
						 </tr>

						<tr> <td align="center"> <b>slab4</b></td> 
						<td>
						<form:input path="fis4"/>
						</td> 
						<td>
						<form:input path="fie4"/>
						</td> 
						<td>
						<form:input path="fip4"/>
						</td> 
						</tr>
                          
                        <tr><td colspan="4" align="center">
                          <form:button>Submit</form:button>
                          </td></tr>
						</table>
						</td></tr>
					</table>
					
				
		</form:form>

</fieldset>		
</body>

</html>
