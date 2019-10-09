/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var designationData = [];

function initViewDesignationGrid() {
    try {
        var username = "";
        var proce = new JQueryAjaxCall();
        var reqData = {};
        proce.addData('viewdesignationList.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            designationData = respObj.Data;
            console.log('ersp' + JSON.stringify(designationData));
            $('#designationGrid').data('kendoGrid').dataSource.data(designationData);
        });
    } catch (e) {
        alert(e);
    }
}

function loadGrid() {
    $("#designationGrid").kendoGrid(
            {
                height: "450px",
                witdth: "80%",
                sortable: true,
                reorderable: true,
                // groupable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                pageable: true,
                columns: [
                    {
                        field: "sno",
                        title: 'Sno',
                        'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                    },
                    {
                        field: "department_id",
                        width: "20%"
                    },
                    {
                        field: "designation",
                        widht: "20%"
                    },
                    {
                        field: "designation_id",
                        widht: "20%"
                    },
                    {
                        field: "ACTION",
                        headerAttributes: {
                            style: "padding: 10px 30px;"
                        },
                        title: "ACTION",
                        command: [
                            {
                                template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                            },
                            {
                                template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                            }]
                    }],
                dataSource: {
                    data: [],
                    pageSize: 10
                },
                dataBound: function (arg) {

                }

            });
}

function editEmployee(obj) {

}

function viewEmployees(obj) {

}

//view_vill_list.res
var villaGridData = [];
function inititeVilla() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('view_vill_list.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            console.log('villGrid:::' + JSON.stringify(respObj));
            villaGridData = respObj.Data;
            $('#villGrid').data('kendoGrid').dataSource.data(villaGridData);
        });
    } catch (e) {
        alert(e);
    }
}

function initiateVillaGrid() {
    $("#villGrid").kendoGrid(
            {
                height: "450px",
                witdth: "80%",
                sortable: true,
                reorderable: true,
                // groupable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                pageable: true,
                columns: [
                    {
                        field: "sno",
                        title: 'Sno',
                        'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                    },
                    {
                        field: "villa_id",
                        width: "20%"
                    },
                    {
                        field: "villa_name",
                        widht: "20%"
                    },
                    {
                        field: "villa_size",
                        widht: "20%"
                    },
                    {
                        field: "villa_type",
                        widht: "20%"
                    },
                    {
                        field: "villas_left",
                        widht: "20%"
                    },
                    {
                        field: "sqrtfeet",
                        widht: "20%"
                    },
                    {
                        field: "total_villas",
                        widht: "20%"
                    },
                    {
                        field: "blockno",
                        widht: "20%"
                    },
                    {
                        field: "plotno",
                        widht: "20%"
                    },

                    {
                        field: "ACTION",
                        headerAttributes: {
                            style: "padding: 10px 30px;"
                        },
                        title: "ACTION",
                        command: [
                            {
                                template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                            },
                            {
                                template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                            }]
                    }],
                dataSource: {
                    data: [],
                    pageSize: 10
                },
                dataBound: function (arg) {

                }

            });
}


//view_departmentGridList.res
var departmentGridData = [];
function initViewDepartmentGrid() {
    debugger;
    try {
        var username = "";
        var proce = new JQueryAjaxCall();
        var reqData = {};
        proce.addData('view_departmentGridList.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            departmentGridData = respObj.Data;
            console.log('ersp' + JSON.stringify(departmentGridData));
            $('#departmentGrid').data('kendoGrid').dataSource.data(departmentGridData);
        });
    } catch (e) {
        alert(e);
    }
}

function initiateDeptGrid() {
    $("#departmentGrid").kendoGrid(
            {
                height: "450px",
                witdth: "80%",
                sortable: true,
                reorderable: true,
                // groupable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                pageable: true,
                columns: [
                    {
                        field: "sno",
                        title: 'Sno',
                        'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                    },
                    {
                        field: "department_id",
                        width: "20%"
                    },
                    {
                        field: "department",
                        widht: "20%"
                    },
                    {
                        field: "ACTION",
                        headerAttributes: {
                            style: "padding: 10px 30px;"
                        },
                        title: "ACTION",
                        command: [
                            {
                                template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                            },
                            {
                                template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                            }]
                    }],
                dataSource: {
                    data: [],
                    pageSize: 10
                },
                dataBound: function (arg) {

                }

            });
}
//view_reportingtoGrid.res
var reportingToData = [];
function initReportingTo() {
    try {
        var username = "";
        var proce = new JQueryAjaxCall();
        var reqData = {};
        proce.addData('view_reportingtoGrid.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            reportingToData = respObj.Data;
            console.log('ersp' + JSON.stringify(reportingToData));
            $('#reportingToGrid').data('kendoGrid').dataSource.data(reportingToData);
        });
    } catch (e) {
        alert(e);
    }
}

function initiateReportingToGrid() {
    $("#reportingToGrid").kendoGrid(
            {
                height: "450px",
                witdth: "80%",
                sortable: true,
                reorderable: true,
                // groupable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                pageable: true,
                columns: [
                    {
                        field: "sno",
                        title: 'Sno',
                        'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                    },
                    {
                        field: "department",
                        width: "20%"
                    },
                    {
                        field: "designation",
                        widht: "20%"
                    },
                    {
                        field: "ACTION",
                        headerAttributes: {
                            style: "padding: 10px 30px;"
                        },
                        title: "ACTION",
                        command: [
                            {
                                template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                            },
                            {
                                template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                            }]
                    }],
                dataSource: {
                    data: [],
                    pageSize: 10
                },
                dataBound: function (arg) {

                }

            });
}
function initCustomerGrid() {
    $("#customerGrid").kendoGrid(
            {
                height: "450px",
                witdth: "80%",
                sortable: true,
                reorderable: true,
                // groupable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                pageable: true,
                columns: [
                    {
                        field: "sno",
                        title: 'Sno',
                        'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                    },
                    {
                        field: "customer_first_name",
                        width: "20%"
                    },
                    {
                        field: "email",
                        widht: "20%"
                    },
                    {
                        field: "typeofvilla",
                        widht: "20%"
                    },
                    {
                        field: "pricelimit",
                        widht: "20%"
                    },
                    {
                        field: "location",
                        widht: "20%"
                    },
                    {
                        field: "manager",
                        widht: "20%"
                    },
                    {
                        field: "deltby",
                        widht: "20%"
                    },
                    {
                        field: "ACTION",
                        headerAttributes: {
                            style: "padding: 10px 30px;"
                        },
                        title: "ACTION",
                        command: [
                            {
                                template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                            },
                            {
                                template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                            }]
                    }],
                dataSource: {
                    data: [],
                    pageSize: 10
                },
                dataBound: function (arg) {

                }

            });
}
var customGridData = [];
function initCustGridData() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('customer_details_GridList.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            customGridData = respObj.Data;
            $('#customerGrid').data('kendoGrid').dataSource.data(customGridData);
        });
    } catch (e) {
        alert(e);
    }
}

//guest_alloted_usersGrid.res
var allotingGuestGridData = [];
function initAllotGuestGridData() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('customer_details_GridList.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            allotingGuestGridData = respObj.Data;
            $('#allotingGuestGrid').data('kendoGrid').dataSource.data(allotingGuestGridData);
        });
    } catch (e) {
        alert(e);
    }
}

function initAllotingGuestGrid() {
    $("#allotingGuestGrid").kendoGrid(
            {
                height: "450px",
                witdth: "80%",
                sortable: true,
                reorderable: true,
                // groupable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                pageable: true,
                columns: [
                    {
                        field: "sno",
                        title: 'Sno',
                        'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                    },
                    {
                        field: "customer_first_name",
                        width: "20%"
                    },
                    {
                        field: "mobileno",
                        widht: "20%"
                    },
                    {
                        field: "email",
                        widht: "20%"
                    },
                    {
                        field: "status",
                        widht: "20%"
                    },
                    {
                        field: "designation",
                        widht: "20%"
                    },
                    {
                        field: "refered1",
                        widht: "20%"
                    },
                    {
                        field: "ACTION",
                        headerAttributes: {
                            style: "padding: 10px 30px;"
                        },
                        title: "ACTION",
                        command: [
                            {
                                template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                            },
                            {
                                template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                            }]
                    }],
                dataSource: {
                    data: [],
                    pageSize: 10
                },
                dataBound: function (arg) {

                }

            });
}


var allotCustByData = [];
function allotCustomerByAdmin() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('allot_customer_by_adminGrid.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            allotCustByData = respObj.Data;
            $('#allotingAllotCostGrid').data('kendoGrid').dataSource.data(allotCustByData);
        });
    } catch (e) {
        alert(e);
    }
}

function initAllotCustomerByAdminGrid() {
    $("#allotingAllotCostGrid").kendoGrid(
            {
                height: "450px",
                witdth: "80%",
                sortable: true,
                reorderable: true,
                // groupable: true,
                resizable: true,
                filterable: true,
                columnMenu: true,
                pageable: true,
                columns: [
                    {
                        field: "sno",
                        title: 'Sno',
                        'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                    },
                    {
                        field: "email",
                        width: "20%"
                    },
                    {
                        field: "typeofvilla",
                        widht: "20%"
                    },
                    {
                        field: "pricelimit",
                        widht: "20%"
                    },
                    {
                        field: "location",
                        widht: "20%"
                    },
                    {
                        field: "manager",
                        widht: "20%"
                    },
                    {
                        field: "deltby",
                        widht: "20%"
                    },
                    {
                        field: "ACTION",
                        headerAttributes: {
                            style: "padding: 10px 30px;"
                        },
                        title: "ACTION",
                        command: [
                            {
                                template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                            },
                            {
                                template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                            }]
                    }],
                dataSource: {
                    data: [],
                    pageSize: 10
                },
                dataBound: function (arg) {

                }

            });
}

var viewallotCustByData = [];
function viewAllotCustomerByAdmin() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('view_allot_customer_by_adminGrid.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            viewallotCustByData = respObj.Data;
            $('#viewAllotCustomerGrid').data('kendoGrid').dataSource.data(viewallotCustByData);
        });
    } catch (e) {
        alert(e);
    }
}

function initviewAllotCustomerByAdmin() {
    try {
        $("#viewAllotCustomerGrid").kendoGrid(
                {
                    height: "450px",
                    witdth: "80%",
                    sortable: true,
                    reorderable: true,
                    // groupable: true,
                    resizable: true,
                    filterable: true,
                    columnMenu: true,
                    pageable: true,
                    columns: [
                        {
                            field: "sno",
                            title: 'Sno',
                            'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                        },
                        {
                            field: "email",
                            width: "20%"
                        },
                        {
                            field: "typeofvilla",
                            widht: "20%"
                        },
                        {
                            field: "pricelimit",
                            widht: "20%"
                        },
                        {
                            field: "status",
                            widht: "20%"
                        },
                        {
                            field: "slm_id",
                            widht: "20%"
                        },
                        {
                            field: "sle_id",
                            widht: "20%"
                        },
                        {
                            field: "ACTION",
                            headerAttributes: {
                                style: "padding: 10px 30px;"
                            },
                            title: "ACTION",
                            command: [
                                {
                                    template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                                },
                                {
                                    template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                                }]
                        }],
                    dataSource: {
                        data: [],
                        pageSize: 10
                    },
                    dataBound: function (arg) {

                    }

                });
    } catch (e) {
        alert(e);
    }
}
var customerInstallAdminData = [];
function customerInstallmentAdmin() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('fn_view_customer_installments_by_adminGrid.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            customerInstallAdminData = respObj.Data;
            $('#customerInstallmentAdminGrid').data('kendoGrid').dataSource.data(customerInstallAdminData);
        });
    } catch (e) {
        alert(e);
    }
}

function initCustomerInstallmentAdmin() {
    try {
        $("#customerInstallmentAdminGrid").kendoGrid(
                {
                    height: "450px",
                    witdth: "80%",
                    sortable: true,
                    reorderable: true,
                    // groupable: true,
                    resizable: true,
                    filterable: true,
                    columnMenu: true,
                    pageable: true,
                    columns: [
                        {
                            field: "sno",
                            title: 'Sno',
                            'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                        },
                        {
                            field: "totalamount",
                            width: "20%"
                        },
                        {
                            field: "amountpaid",
                            widht: "20%"
                        },
                        {
                            field: "totalinstallments",
                            widht: "20%"
                        },
                        {
                            field: "installmentspaid",
                            widht: "20%"
                        },
                        {
                            field: "status",
                            widht: "20%"
                        },
                        {
                            field: "department",
                            widht: "20%"
                        },
                        {
                            field: "manager",
                            widht: "20%"
                        },
                        {
                            field: "deltby",
                            widht: "20%"
                        },
                        {
                            field: "ACTION",
                            headerAttributes: {
                                style: "padding: 10px 30px;"
                            },
                            title: "ACTION",
                            command: [
                                {
                                    template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                                },
                                {
                                    template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                                }]
                        }],
                    dataSource: {
                        data: [],
                        pageSize: 10
                    },
                    dataBound: function (arg) {

                    }

                });
    } catch (e) {
        alert(e);
    }
}

var viewVehicleAllotmentData = [];
function viewVehicleAllotment() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('view_vehicle_allotmentGrid.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            viewVehicleAllotmentData = respObj.Data;
            $('#viewVehicleAllotmentGrid').data('kendoGrid').dataSource.data(viewVehicleAllotmentData);
        });
    } catch (e) {
        alert(e);
    }
}

function initviewVehicleAllotmentGrid() {
    try {
        $("#viewVehicleAllotmentGrid").kendoGrid(
                {
                    height: "450px",
                    witdth: "80%",
                    sortable: true,
                    reorderable: true,
                    // groupable: true,
                    resizable: true,
                    filterable: true,
                    columnMenu: true,
                    pageable: true,
                    columns: [
                        {
                            field: "sno",
                            title: 'Sno',
                            'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                        },
                        {
                            field: "vehicle_no",
                            width: "20%"
                        },
                        {
                            field: "agent_name",
                            widht: "20%"
                        },
                        {
                            field: "status",
                            widht: "20%"
                        },
                        {
                            field: "gendate",
                            widht: "20%"
                        },
                        {
                            field: "ACTION",
                            headerAttributes: {
                                style: "padding: 10px 30px;"
                            },
                            title: "ACTION",
                            command: [
                                {
                                    template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                                },
                                {
                                    template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                                }]
                        }],
                    dataSource: {
                        data: [],
                        pageSize: 10
                    },
                    dataBound: function (arg) {

                    }

                });
    } catch (e) {
        alert(e);
    }
}


function initCustomerViewByAdminGrid() {
    try {
        $("#custCostomerByAdminGrid").kendoGrid(
                {
                    height: "450px",
                    witdth: "80%",
                    sortable: true,
                    reorderable: true,
                    // groupable: true,
                    resizable: true,
                    filterable: true,
                    columnMenu: true,
                    pageable: true,
                    columns: [
                        {
                            field: "sno",
                            title: 'Sno',
                            'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                        },
                        {
                            field: "price",
                            width: "20%"
                        },
                        {
                            field: "cust_price",
                            widht: "20%"
                        },
                        {
                            field: "villatype",
                            widht: "20%"
                        },
                        {
                            field: "noofinstallments",
                            widht: "20%"
                        },
                        {
                            field: "fnmanager",
                            widht: "20%"
                        },
                        {
                            field: "fnexecutive",
                            widht: "20%"
                        },
                        {
                            field: "status",
                            widht: "20%"
                        },
                        {
                            field: "ACTION",
                            headerAttributes: {
                                style: "padding: 10px 30px;"
                            },
                            title: "ACTION",
                            command: [
                                {
                                    template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                                },
                                {
                                    template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                                }]
                        }],
                    dataSource: {
                        data: [],
                        pageSize: 10
                    },
                    dataBound: function (arg) {

                    }

                });
    } catch (e) {
        alert(e);
    }
}
var customerViewByAdminGridData = [];
function costomerViewByAdminData() {
    var proce = new JQueryAjaxCall();
    var reqData = {};

    try {
        proce.addData('sl_view_customer_by_fn_directorGrid.res', reqData, false);
        proce.submit(function (resp) {
            var respObj = JSON.parse(resp);
            customerViewByAdminGridData = respObj.Data;
            $('#custCostomerByAdminGrid').data('kendoGrid').dataSource.data(customerViewByAdminGridData);
        });
    } catch (e) {
        alert(e);
    }
}
function initAdminViewDirectorsGrid() {

    try {
        $("#viewAdminDirectorsGrid").kendoGrid(
                {
                    height: "450px",
                    witdth: "80%",
                    sortable: true,
                    reorderable: true,
                    // groupable: true,
                    resizable: true,
                    filterable: true,
                    columnMenu: true,
                    pageable: true,
                    columns: [
                        {
                            field: "sno",
                            title: 'Sno',
                            'template': "<a href='javascript:void(0);' onclick='leaveApproving(this)'>#=sno#</a>",
                        },
                        {
                            field: "username",
                            width: "20%"
                        },
                        {
                            field: "mobile",
                            widht: "20%"
                        },
                        {
                            field: "department",
                            widht: "20%"
                        },
                        {
                            field: "designation",
                            widht: "20%"
                        },
                        {
                            field: "ACTION",
                            headerAttributes: {
                                style: "padding: 10px 30px;"
                            },
                            title: "ACTION",
                            command: [
                                {
                                    template: "<a title='edit' data-toggle='modal' onClick='editEmployee(this)'>Edit</a>&nbsp;/&nbsp;"
                                },
                                {
                                    template: "<a title='view' data-toggle='modal' onclick='viewEmployees(this)'>View</a>"
                                }]
                        }],
                    dataSource: {
                        data: [],
                        pageSize: 10
                    },
                    dataBound: function (arg) {

                    }

                });
    } catch (e) {
        alert(e);
    }
}
var adminViewDirector = [];
function adminViewDirectorsGrid() {
    var proce = new JQueryAjaxCall();
    var reqData = {};
    alert('Hello');
    try {
        var department=$('#dept').val();
        alert(department);
        reqData.DEPARTMENT=department;
        proce.addData('admin_view_directorsGrid.res', reqData, false);
        proce.submit(function (resp) {
            console.log(JSON.stringify(resp));
            var respObj = JSON.parse(resp);
            adminViewDirector = respObj.Data;
            $('#viewAdminDirectorsGrid').data('kendoGrid').dataSource.data(adminViewDirector);
        });
    } catch (e) {
        alert(e);
    }
}