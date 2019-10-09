/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function viewPaySlipGrid(){
    
}

function initiatePaySlipGrid(){

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
