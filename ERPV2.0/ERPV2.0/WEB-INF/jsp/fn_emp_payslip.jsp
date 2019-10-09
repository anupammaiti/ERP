<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="com.svs.payroll.*" errorPage="" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>ERP</title>

<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>

</head>
</head>
<body>
<center><h3>ERP</h3></center><a href="emp_list.erp">Back</a><hr/>

<fieldset>
	<legend><b>Pay Slip</b></legend>
	
<form:form action="fn_final_payslip.erp" method="post" commandName="tempPaySlipBean">
<c:forEach items="${paysliplist}" var="paysliplist" varStatus="status">
<table>

<tr>
	<td>
		<label>EmpId:</label></td><td><form:input path="empid" value="${paysliplist.empid}" readonly="true"/>
	</td>
	<td>
		<label>Bank A/c No:</label></td><td><form:input path="bankaccount" value="${paysliplist.bankaccount}" readonly="true"/>
	</td>
	<td>
		<label>PF No:</label></td><td><form:input path="pfno" value="${paysliplist.pfno}" readonly="true"/>
	</td>
</tr>
<tr>
	<td>
		<label>Employee Name</label></td><td><form:input path="empname" value="${paysliplist.empname}" readonly="true"/>
	</td>
	<td>
		<label>Department</label></td><td><form:input path="deprtment" value="${paysliplist.deprtment}" readonly="true"/>
	</td>
	<td>
		<label>Pan Number</label></td><td><form:input path="pannumber" value="${paysliplist.pannumber}" readonly="true"/>
	</td>
</tr>
<tr>
	<td>
		<label>Designation</label></td><td><form:input path="designation" value="${paysliplist.designation}" readonly="true"/>
	</td>
	<td>
		<label>Paid Days</label></td><td><form:input path="paiddays" readonly="true"/>
	</td>
</tr>
</table><hr/>
</td>
</tr>

<tr>
	<td>

	
				
					
					
							<table>
							<tr><td>Allowance</td><td>Actuals</td><td>Deductions</td><td>Amount</td></tr>
								<tr>
									<td>
ic											<label>Basic</label></td><td><form:input path="basic" value="${paysliplist.basic}" readonly="true" id="bas"/>
											
									</td>
									<td>
											<label>PF</label></td><td><form:input path="hra" value="${paysliplist.pf}" readonly="true" id="pf"/>
											
									</td>
									</tr>
									<tr>
									<td>
										<label>HRA</label></td><td><form:input path="hra" value="${paysliplist.hra}" readonly="true" id="hra"/>
									</td>
									<td>
										<label>PT</label></td><td><form:input path="pt" id="pt"/>
									</td>
								</tr>
								<tr>
									<td>
									<label>Conveyance</label></td><td><form:input path="conv" id="conv"/>
									</td>
									<td>
										<label>IncomeTax</label></td><td><form:input path="incometax" value="${paysliplist.incometax}" id="incometax"/>
									</td>
								
								</tr>
														
								<tr>
								<td>
								DA
								</td>
								
								<td>
							<form:input path="da" value="${paysliplist.da}" id="da" readonly="true"/>
								</td>
									
								<td>
									<label>Other Deductions</label></td><td><form:input path="otherded" id="othded"/>
								</td>
								</tr>
								<tr>
								<td>
									<label>Special Allowance</label></td><td><form:input path="speicalallogation" id="sa"/>
								</td>
								</tr>
								<tr>
									<td>
										Medical 
									</td>
									<td>
										<form:input path="medical" id="medical"/>
									</td>
								</tr>
								<tr>
									<td>
										Child Education 
									</td>
									<td>
										<form:input path="childeducation" id="ched"/> 
									</td>
								</tr>
								
								<tr>
									<td><label>Gross Salary</label></td><td><form:input path="grass" id="gross"/> </td><td><label>Total Deduction</label></td><td><form:input path="totalded" id="totalded"/> </td>
								</tr>
							</table><hr/>
							<table>
								<tr>
									<td>
										<label>Net Amount</label></td><td><form:input path="netamount" id="net"/>
									</td>
									<td><label>Payment By Bank</label></td><td><form:input path="payment" id="finalpay"/> </td>
									
								</tr>
								<tr><td></td></tr>
								<tr>
									<td></td><td>
										<input type="submit" value="Generate PaySlip" class=" payroll_button"/>
									</td>
								</tr>

							</table><hr/>	
	</td>
</tr>
</table>
</c:forEach>
</form:form>
</fieldset>
</body>
</html>
