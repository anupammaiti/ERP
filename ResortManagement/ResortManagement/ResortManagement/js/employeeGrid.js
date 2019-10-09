/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var griddata = [];
function fetchEmployeeDetails() {
	$.getJSON('hlp_hr_employee_attList.res', {
		'username' : username
	}, function(jObject) {
		griddata = jObject.finalEmpList;
		if (griddata.length > 0) {
			loadGrid();
		}
	});
}

function loadGrid() {

	$("#grid")
			.kendoGrid(
					{
						height : "450px",
						witdth : "80%",
						sortable : true,
						reorderable : true,
						// groupable: true,
						resizable : true,
						filterable : true,
						columnMenu : true,
						pageable : true,
						columns : [
								{
									field : "empno",
									title : 'EmpNo',
									'template' : "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=empno#</a>",
								},
								{
									field : "empid",
									width : "20%"
								},
								{
									field : "empname",
									widht : "20%"
								},
								{
									field : "qulification",
									widht : "20%"
								},
								{
									field : "department",
									widht : "20%"
								},
								{
									field : "designation",
									widht : "20%"
								},

								{
									field : "ACTION",
									headerAttributes : {
										style : "padding: 10px 30px;"
									},
									title : "ACTION",
									command : [
											{
												template : "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
											},
											{
												template : "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
											} ]
								} ],
						dataSource : {
							data : griddata,
							pageSize : 10
						},
						dataBound : function(arg) {

						}

					});
}
function leaveApproving(obj) {
	try {
		var row = $(obj).closest("tr");
		var gridObj = $("#grid").data("kendoGrid");
		var item = gridObj.dataItem(row);
		alert('employee no' + item.empno);
		reqData.empno = item.empno;

		forwardToAproval(reqData);

	} catch (e) {
		alert(e);
	}
}
var reqData = {};
function forwardToAproval(reqData) {

	localStorage.setItem("reqData", reqData);
	var my_form = document.createElement('FORM');
	my_form.name = 'myForm';
	my_form.method = 'POST';
	my_form.action = 'hr_update_ex_leave_approval.res';
	var my_tb = document.createElement('INPUT');
	my_tb.type = 'HIDDEN';
	my_tb.name = 'ReqData';
	my_tb.value = JSON.stringify(reqData);
	my_form.appendChild(my_tb);
	document.body.appendChild(my_form);
	my_form.submit();
}
function editEmployee(obj) {
	try {
		var row = $(obj).closest("tr");
		var gridObj = $("#grid").data("kendoGrid");
		var item = gridObj.dataItem(row);
		alert(JSON.stringify(item));

	} catch (e) {
		alert(e);
	}
}

function initiateLeaveGrid() {
	try {
		$("#leaveGrid")
				.kendoGrid(
						{
							height : "450px",
							witdth : "80%",
							sortable : true,
							reorderable : true,
							// groupable: true,
							resizable : true,
							filterable : true,
							columnMenu : true,
							pageable : true,
							columns : [
//									{
////										field : "empno",
//										'template' : "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=empno#</a>",
//									},
									{
										field : "empid",
										width : "20%"
									},
									{
										field : "empname",
										widht : "20%"
									},
									{
										field : "fromdate",
										widht : "20%"
									},
{
										field : "todate",
										widht : "20%"
									},
                                                                        {
										field : "remainingleaves",
										widht : "20%"
									},
									{
										field : "ACTION",
										headerAttributes : {
											style : "padding: 10px 30px;"
										},
										title : "ACTION",
										command : [
												{
													template : "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
												},
												{
													template : "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
												} ]
									} ],
							dataSource : {
								data : griddata,
								pageSize : 10
							},
							dataBound : function(arg) {

							}

						});
	} catch (e) {
		alert(e);
	}
}

function leaveGrid() {
	try {
		
		$.getJSON('hlp_hr_employee_leaveGridList.res', {'username' : username}, function(jObject) {
                    console.log(''+JSON.stringify(jObject));
			griddata = jObject.finalEmpLeaveList;
			if (griddata.length > 0) {
				initiateLeaveGrid();
			}
		});
	} catch (e) {
	}
}
