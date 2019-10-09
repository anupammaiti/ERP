/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function loadHRLeaveDetails() {
    try {
        var username = $('#empid').val();
        
//        var proceReq=new JQueryAjaxCall();
//        var ReqData=new Object();
//        ReqData.username=username;
//        proceReq.addData('hlp_hr_employee_by_username.res',ReqData,true);
//        proceReq.submit(function(res){
//        	
//        	alert('leave Form :::');
//        	
//        });
        $.getJSON('hlp_hr_employee_by_username.res', {'username': username}, function (json) {
            $('#name').val(json.firstName + json.lastName);
            $('#designation').val(json.designation);
            $('#companyId').val('Delta Pvt.Ltd').attr('readonly', 'readonly');
            $('#cls').text(json.cls);
            $('#clpro').val(json.cls);
            $('#sls').text(json.sls);
            $('#slpro').val(json.sls);
            $('#pls').text(json.pls);
            $('#plpro').val(json.pls);
            
            
        });

        $.getJSON('hlp_hr_employee_leaveList.res', {'username': username}, function (json) {
            alert('JSON Object is' + json.toSource());

            $('#leaveEmployeeGridID').html('<tr><td>' + json.finalEmpList.empid + '</td><td>' + json.finalEmpList.cl + '</td><td>' + json.finalEmpList.sl + '</td><td>' + json.finalEmpList.pl + '</td><td>' + json.finalEmpList.totalcl + '</td><td>' + json.finalEmpList.totalsl + '</td><td>' + json.finalEmpList.totalpl + '</td><td>' + json.finalEmpList.bcl + '</td><td>' + json.finalEmpList.bsl + '</td><td>' + json.finalEmpList.bpl + '</td></tr>');//bcl
        });
            
    } catch (e) {
        alert(e);
    }
}

function noofDayOnLeave(fromdate, todate) {
    try {
        var todate = Date.parse(todate);
        var fromdate = Date.parse(fromdate);
        var millisecondsPerDay = 1000 * 60 * 60 * 24;
        var milliseBetween=todate-fromdate;
        var noofdays=milliseBetween/millisecondsPerDay;
        $('#noofDaysId').text(noofdays);
        $('#leaveDaysID').val(noofdays);
    } catch (e) {
        alert(e);
    }
}

//Leave Approval Employee List.
function leaveApproval() {
    var recordString = '';
    $.getJSON('util_hr_ex_leave_approval.res', {'Status': '0'}, function (data) {
        var dataStatus = data.type;
        if (dataStatus == "success") {
            var dataArray = data.data;
            recordString = '<tr><td><a href="hr_update_ex_leave_approval.res?sno=' + dataArray[0].sno + '">' + dataArray[0].empid + '</a></td><td>' + dataArray[0].name + '</td><td>' + dataArray[0].designation + '</td><td></td><td>' + dataArray[0].companyName + '</td></tr>';
            $('#leave_approval_ID').html(recordString);
        } else {
            $('#leave_approval_ID').html('<tr><td>Data Not Found</td></tr>').show().delay(5000).fadeOut().css('font-size', '20px');
        }
    });
}



function loadApprovalDetails(empno){
    alert('::loadApprovalDetails:::'+empno);
   $.getJSON('hlp_hr_employee_leaveApprovalList.res',{'sno':empno},function(result){
       alert('result ::'+result.toSource());
       
   });
}