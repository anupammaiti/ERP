/**
 * resort_js.js
 * 
 */

//Alphabetic Validation.
/*Image Rotator Starts*/
function theRotator() {
    //Set the opacity of all images to 0
    $('div.rotator ul li').css({opacity: 0.0});

    //Get the first image and display it (gets set to full opacity)
    $('div.rotator ul li:first').css({opacity: 1.0});

    //Call the rotator function to run the slideshow, 6000 = change to next image after 6 seconds

    setInterval('rotate()', 6000);

}



function rotate() {
    //Get the first image
    var current = ($('div.rotator ul li.show') ? $('div.rotator ul li.show') : $('div.rotator ul li:first'));

    if (current.length == 0)
        current = $('div.rotator ul li:first');

    //Get next image, when it reaches the end, rotate it back to the first image
    var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div.rotator ul li:first') : current.next()) : $('div.rotator ul li:first'));

    //Un-comment the 3 lines below to get the images in random order

    //var sibs = current.siblings();
    //var rndNum = Math.floor(Math.random() * sibs.length );
    //var next = $( sibs[ rndNum ] );


    //Set the fade in effect for the next image, the show class has higher z-index
    next.css({opacity: 0.0})
            .addClass('show')
            .animate({opacity: 1.0}, 1000);

    //Hide the current image
    current.animate({opacity: 0.0}, 1000)
            .removeClass('show');

}
;

$(document).ready(function () {
    $('#username1').attr('size', '20');
    $('#password1').attr('size', '10');
    return false;
});


//Login Page
$(document).ready(function () {
    $('#password1').blur(function () {
        var username = $('#username1').val();
        var password = $('#password1').val();
        //alert('Username'+username);
        //alert('Password'+password);
        if ((username == "") || (password == "")) {
            $('#username1').val('');
            $('#password1').val('');
            $('#validate').text('Invalid Login');
        }
    });
    return false;
});

//Today's Date.

$(document).ready(function () {

    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!

    var yyyy = today.getFullYear();
    if (dd < 10) {
        dd = '0' + dd
    }
    if (mm < 10) {
        mm = '0' + mm
    }
    today = mm + '/' + dd + '/' + yyyy;

    $('#gendate1').val(today);
    $('#gendate1').prop("readonly", true);
    $('#gendate2').val(today);
    $('#gendate2').prop("readonly", true);
    $('#gendate3').val(today);
    $('#gendate3').prop("readonly", true);
//	alert(today);
    return false;
});
$(document).ready(function () {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!

    var yyyy = today.getFullYear();
    if (dd < 10) {
        dd = '0' + dd
    }
    if (mm < 10) {
        mm = '0' + mm
    }
    today = mm + '/' + dd + '/' + yyyy;
    //alert(today);
    $('.todaydate').val(today);

});


//Today's Time and Date.
$(document).ready(function () {
    var currentTime = new Date();

    var month = currentTime.getMonth() + 1;
    var day = currentTime.getDate();
    var year = currentTime.getFullYear();

    var date1 = day + "/" + month + "/" + year; // output
    var d = new Date();
    var t = d.toLocaleTimeString();
    var myVar = setInterval(function () {
        myTimer()
    }, 1000);

    //alert(dateandtime);


    function myTimer()
    {
        var d = new Date();
        var t = d.toLocaleTimeString();
        var dateandtime = date1 + "  " + t;
        $('#dateandtime').html(dateandtime).addClass('timeanddate');
    }
});


/* All input text feilds  */

$(document).ready(function () {
    $('input[type=text]').addClass('inputtext');
});




$(document).ready(function () {
    //Load the slideshow
    theRotator();
    $('div.rotator').fadeIn(1000);
    $('div.rotator ul li').fadeIn(1000); // tweek for IE
});

/*Image Rotator Ends*/




$(document).ready(function () {

    $('#password').blur(function () {
        var username = $('#username').val();
        var password = $('#password').val();
        if ((username == null) || (password == null)) {
            //alert(username);
            $('#username').val('');
            //$('#password').val('');
            $('#validate').text("Invalid Login").addClass('error');
        }
        return false;
    });

});

$(document).ready(function () {




    $.get('tele_caller.res', function (data) {
        //alert(data);
        $('#telecallerid').html(data);
    });
});

$(document).ready(function () {
    $.get('guestuser_id.res', function (data) {
        //alert(data);
        var guest = "gu_" + data;
        $('#guest_id').val(guest);
    });
});

$(document).ready(function () {
    $.get('discription_list.res', function (data) {
        //alert('Hello'+data);
        //$('#designation1').html(data);
    });
});




$(document).ready(function () {
    $.get('villa_list.res', function (data) {
        //alert(data);
        $('#villa_type').html(data);
    });
});

$(document).ready(function () {
    var dept;
    $.get('departmentid.res', function (data) {
//	alert('departno'+data);
        dept = "dept_" + data;
        //alert(dept);
        $('#deptid').val(dept);
    });
});

$(document).ready(function () {
    $.get('departmentId.res', function (data) {
        //alert('Hai');
        $('#departmentid').html(data);
        $('#departmentid1').html(data);
    });
});

$(document).ready(function () {

    $('#dept').blur(function () {
        //alert('Department');
        var departmentid = $('#dept').val();
        //alert("Department"+departmentid);
        $.get('departmentdesignation.res', {'department': departmentid}, function (data) {

            //	alert(data);
            $('#designation1').html(data);
        });
    });




});


$(document).ready(function () {
    $('#designation1').blur(function () {
        //	alert('reporting to');
        var designation1 = $('#designation1').val();
        //	alert("designation"+designation1);
        $.get('reportingto.res', {'designation1': designation1}, function (data) {
            //alert('Reporting To'+data);
            $('#reportingto').html(data);
        });
    });
});

$(document).ready(function () {
    $('#reportingto').blur(function () {

        var username1 = $('#reportingto').val();

        //alert(username1);
        $.get('tele_manager_name.res', {'username': username1}, function (data) {
            //alert(data);
            $('#empname').html(data).show().delay(5000).fadeOut();
        });
    });
});


$(document).ready(function () {
    var id1 = null;

    var designation = null;

    //alert("number"+data1);
    //alert("designation Id\t"+designation_id);
    //alert(designation_id);
    //alert(id1);
    //alert("Original Data:"+id1);
    $.get('employee_id.res', function (data1) {
        id1 = data1;
        //alert("number"+id1);
    });

    $('#reportingto').blur(function () {
        //alert('Hai');
        var designation_id = null;
        designation = $('#designation1').val();
        //alert(designation);

        //alert("data1"+id1);
        $.get('des_id_by_designaion.res', {'designation': designation}, function (data2) {

            designation_id = data2;
            //alert("designation Id\t"+data2);
        });
        alert(designation_id);
        id2 = designation_id + "_" + id1;
        //eval(designation_id+"_"+id1);

        //alert(id2);
        $('#user_id').val(id2);

    });

});

$(document).ready(function () {
    //alert('Hello');
    var designation = $('#desig').val();
    //alert(designation);
    $.get('get_reference1.res', {'designation': designation}, function (data) {
        //alert(data);
        $('#refe1').html(data);
    });
});

/*$(document).ready(function(){
 //alert('Hello');
 var refer1=$('#refered1').val();
 //alert('Reporting To'+refer1);
 var department=$('#department').val();
 //alert('department'+department);
 $.get('get_reference2.res',{'refer1':refer1,'department':department},function(data){
 //alert(data);
 $('#ref2').html(data);
 });
 });*/

function remainder(username) {
    var reqforcall = todaysdate;
    var username = $('#usname').val();
    var status = $('#status').val();

    //alert('Hello'+status);
    $.get('remainder_alert.res', {'requestforcall': reqforcall, 'username': username, 'status': status}, function (data) {

        alert("Todays Calls are  :  " + data);
    });
}

$(document).ready(function () {
    $.get('tele_agent.res', function (data) {
        //alert(data);
        $('#ag_name').html(data);
    });
});

$(document).ready(function () {

    $.get('drivers.res', function (data) {
        $('#driver').html(data);
    });
});

$(document).ready(function () {
    var driver_id;
    $.get('drivers.res', function (data) {
        $('#driver_name').html(data);

    });
    $('#driver_name').blur(function () {
        driver_id = $('#driver_name').val();
        $.get('driver_name.res', {'username': driver_id}, function (data) {
            //alert(data);
            $('#dname').html(data).show().delay(3000).fadeOut();
            ;

        });
    });
});

$(document).ready(function () {
    $.get('vehicle.res', function (data) {
        $('#vehicle_no').html(data);
    });
});

$(document).ready(function () {
    $('#vehicle_no').blur(function () {

        var veh_no = $('#vehicle_no').val();
        //alert('vehicle no'+veh_no);
        $.get('veh_model.res', {'veh_no': veh_no}, function (data) {
            //alert(data);
            $('#vh_model').val(data);
        });
    });

});

//Getting the data drivername,vehicleno,status and insert them into table.
$(document).ready(function () {
    //alert('For Anxity');
    $('#status1').change(function () {
        //alert('Second');
        var driver_name = $('#driver_name').val();
        var vehicle_no = $('#vehicle_no').val();
        var status = $('#status1').val();
        //alert('Third'+status);
        if ((driver_name == "") || (vehicle_no == "") || (status == "")) {

        } else {
            $.post('save_vehicle_allotment.res', {'driver_name': driver_name, 'vehicle_no': vehicle_no, 'status': status}, function () {
                alert('Saved Successfully');
            });
        }

    });
});

//Getting director username it displays managers list.

$(document).ready(function () {
    var username = $('#usrname').val();
    //alert('username'+username);
    $.get('mangers.res', {'username': username}, function (data) {
        $('#manager1').html(data);
    });
});


//Getting vehicleno it will give you the companyname,modelno,vehicletype details and display them.
$(document).ready(function () {
    $('#vehicle_no').blur(function () {
        var veh_no = $('#vehicle_no').val();
        $.getJSON('veh_details.res', {'vhno': veh_no}, function (json) {
            var compname = json.cname;
            var veh_model = json.veh_model;
            var vh_type = json.vh_type;
            $('#compname').val(compname);
            $('#modno').val(veh_model);
            $('#vehtype').val(vh_type);

        });
    });

});


//Display total in vehicle_maintanence form.
$(document).ready(function () {
    $('#samount').blur(function () {
        var amount = parseInt($('#amount').val());
        var samount = parseInt($('#samount').val());
        //alert(amount);
        //alert(samount);
        var total = amount + samount;
        //alert(total);
        $('#total').val(total);
    });
});
$(document).ready(function () {
    $.get('agent_name.res', function (data) {
        $('#agent_name').html(data);
    });

});

$(document).ready(function () {
    $.get('villa_list.res', function (data) {
        $('#villa_type_list').html(data);

    });
});



//Generating the Customer Id.
$(document).ready(function () {

    var custid;
    var cust_id;
    $.get('customer_id.res', function (data) {
        if (data == null) {
            custid = "cus_" + 1;
        } else {
            cust_id = parseInt(data);
            cust_id = cust_id + 1;
            custid = "cus_" + cust_id;
        }


        $('#uname').val(custid).attr('readonly', true);
    });

});

//List the Departments.
$(document).ready(function () {

    $.get('departments.res', function (data) {
        //	alert(data);
        $('#dept').html(data);
    });
});


//Display the Success Message after Create,Update.
$(document).ready(function () {

    $('#successmsg').show().delay(3000).fadeOut();
});

//Display Managers List on selecting the Department.
$(document).ready(function () {
    //alert('Hello');
    $('#departmentid').blur(function () {
        var department = $('#departmentid').val();
        //	alert(department);
        $.get('view_manager_by_department.res', {'department': department}, function (data) {
            //alert(data);
            $('#designation1').html(data);
        });
    });
    //Display the Name of the employee on selecting the desgination.
    $('#designation1').change(function () {
        //alert('Hai');
        var username = $('#designation1').val();
        //alert(username);
        $.get('tele_manager_name.res', {'username': username}, function (data) {
            //alert(data);
            $('#empname').text(data).show().delay(3000).fadeOut();
        });
    });

});

//Display Manager Name on selecting the id.
$(document).ready(function () {
    //alert('Entered');
    $('#refe1').blur(function () {
        //alert('Hai');
        var username = $('#refe1').val();
        //alert(username);
        $.get('tele_manager_name.res', {'username': username}, function (data) {
            //alert(data);
            $('#empname').text(data).show().delay(3000).fadeOut();
        });
    });

});
//Display Department By Employee Id
$(document).ready(function () {
    var username = $('#manager_id').val();
    //alert(username);
    $.get('viewdepartmentbyusername.res', {'username': username}, function (data) {
        $('#department1').val(data);
    });
});
//List Of Executives in Sales Manager.
$(document).ready(function () {
    var username = $('#manager_id').val();
    //alert("Hello");
    $.get('viewexecutiveslist.res', {'username': username}, function (data) {
        $('#executives').html(data);
    });
});

//Drawing Dialog box in Admin Pannel
$(document).ready(function () {
    //alert('LayOut Image');
    var i;
    $('#dialogs').hide();
    $('#layout_image').click(function () {
        //alert('You  Clicked on Image');
        $('#dialogs').addClass('box_content1');

        $('#dialogs').show();
    });
    $('#close').click(function () {
        $('#dialogs').hide();
    });
});


//Events on Drawing Panel.
$(document).ready(function () {
    $('.block').addClass('fieldcolor');
    var i;
    for (i = 0; i <= 10; i++) {
        $('#blk1').append('<tr>	<td width="20px" height="10px"></td><td width="20px" height="10px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
        $('#blk2').append('<tr>	<td width="20px" height="10px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
        $('#blk3').append('<tr>	<td width="20px" height="10px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
        $('#blk4').append('<tr>	<td width="20px" height="10px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td><td width="10px"></td><td width="20px"></td><td width="20px"></td></tr>');
    }

    $(' table #blk1 tr:eq(0) td:eq(0)').css('background-color', 'blue');

});



//Display Sales Manager By Selecting Department.
$(document).ready(function () {
    $('#dept2').blur(function () {
        var dept1 = $('#dept2').val();
        //alert(dept1);
        $.get('gettingmanagersbydept.res', {'department': dept1}, function (data) {
            //alert(data);
            $('#slmlist').html(data);
        });

    });





    //alert('Entered');
    $('#slmlist').blur(function () {
        //alert('Hai');
        var username = $('#slmlist').val();
        //alert(username);
        $.get('tele_manager_name.res', {'username': username}, function (data) {
            //alert(data);
            $('#empname').text(data).show().delay(3000).fadeOut();
        });
    });
});




//Sales Invoice form Total Amount.
$(document).ready(function () {
    $('#quantity').blur(function () {
        var unitprice = parseInt($('#price').val());
        var quan = parseInt($('#quantity').val());
        var total = parseInt(unitprice * quan);
        $('#totalamount').val(total);
        var servicetax = (total * 12) / 100;
        $('#servicetax').val(servicetax);
        var vat = (total * 12.5) / 100;
        $('#vat').val(vat);
        var net = total + vat + servicetax;
        $('#net').val(net);
    });
});

//Getting Slaes Manager by executive username.
$(document).ready(function () {
    //alert('Hello');
    var deltby = $('#sldeltby').val();
    $.get('view_manager_by_executive.res', {'username': deltby}, function (data) {
        $('#slmanager').val(data);
    });
    $.getJSON('gettinginvoicenos.res', function (json) {
        var invoiceno = parseInt(json.invoiceno);
        var invoiceid = parseInt(json.invoiceid);
        var referenceno = parseInt(json.referenceno);
        invoiceno = invoiceno + 1;
        invoiceid = invoiceid + 1;
        referenceno = referenceno + 1;
        $('#incid').val(invoiceid).attr('readonly', true);
        $('#incno').val(invoiceno).attr('readonly', true);
        $('#refno').val(referenceno).attr('readonly', true);
    });
});

//OrderNO
$(document).ready(function () {
    $.get('gettingorderno.res', function (data) {
        if (data == null) {
            $('#orderno').val(1);
        } else {
            var orderno = parseInt(data);
            orderno = orderno + 1;
            $('#orderno').val(orderno);
        }
    });
});


//View Villa Details.

function villaDetails() {
    //alert('Hai');
    $('#villa_details').addClass('villa_details');

    //	alert("Hai");
    /*alert('Before Json Class');
     $.getJSON('villadetails12.res',function(json){
     alert('Json Class');
     //alert(json.villaname);
     //alert(json.json.villafacing);
     var villaname=json.villaname;
     var villafacing=json.villafacing;
     var totalvillas=json.totalvillas;
     var villaleft=json.villasleft;
     alert(villaname);
     alert(villafacing);
     alert(totalvillas);
     alert(villaleft);
     $('#details').html("<table><tr><td>Name</td><td>Face</td><td>Type</td><td>TotalVillas</td><td>Remaining</td></tr>" +
     "<tr><td>"+villaname+"</td><td>"+villafacing+"</td><td>"+villatype+"</td><td>"+totalvillas+"</td><td>"+villaleft+"</td></tr>"+"</table>");
     });
     */}

$(document).ready(function () {
    //alert('Hai');
    var username = $('#mngr2').val();
    //alert('User Name\t'+username);
    $.get('gettingmanagerdata.res', {'username': username}, function (data) {
        $('#dept2').val(data);
    });
});
$(document).ready(function () {
    var username = $('#user2').val();
//alert('Hai');
    $.getJSON('gettingexecutivedata.res', {'username': username}, function (json) {
        var department1 = json.depart1;
        var manager = json.manager;
        //alert('Department'+department1);
        //alert('Manager'+manager);
        $('#dept1').val(department1);
        $('#mgr1').val(manager);
    });
    return false;
});




//Finance Customer Details.
$(document).ready(function () {
    $('#ampaid').blur(function () {
        //alert('Hello');
        var total = parseInt($('#totalam1').val());
        //alert(total);

        var amountpaid = parseInt($('#ampaid').val());
        //alert(amountpaid);
        var custid = $('#custid').val();
        //alert(custid);
        $.getJSON('gettingfiancedetial.res', {'username': custid}, function (json) {
            //alert(data);
            amountpaid = amountpaid + parseInt(json.amount);
            var remainingamount = total - amountpaid;
            //alert(remainingamount);
            var payinginstallment = parseInt(json.installment);
            payinginstallment = payinginstallment + 1;
            var totalinstallemts = $('#totalinst').val();
            //alert(payinginstallment);
            //alert(totalinstallemts);
            if (total <= remainingamount) {
                $('#rmamount').val(0);
            } else {
                $('#rmamount').val(remainingamount);
                $('#payinginstall').val(payinginstallment);
            }

        });

    });

});

//Paying Installment Number.




//Pagination Table.

//alert('Hello');

$(document).ready(function () {
    $('#page_nation_table').mouseover(function () {

    });
});

/**
 * Finance Strart
 */

/**
 * Jquery On Ledgers
 */

//Display List of Ledgers.


$(document).ready(function () {
    $.get('hlp_LedgerDetailsByGroupName.res', function (data) {
        //alert('Ledger details'+data);
        $('#ledgerlist').html(data);
    });
});

//List of Ledger By Executive Name.
function listOfLedgersByExecutive() {
//alert('Hai');
    var deltby = $('#userid').val();
    $.get('hlp_ListOfLedgers.res', {'deltby': deltby}, function (data) {
        //	alert('Ledger details'+data);
        var data1 = data;
        $('#ledgerbyexecutive').append(data1);
        //$('#ledgerbyexecutive').html(data);
    });


//List Of Executives Under Present Manager Login.
//alert('Hello');
    $.get('hlp_ListOfExecutivesByManager.res', {'deltby': deltby}, function (data) {
        //alert('Executive Id'+data);
        var data1 = data;
        $('#executiveByManager').append(data1);
    });
}
/**
 * Jquery On Ledgers Ends
 */

/**
 * Jquery On Stock Group
 */
function getStockGroup() {
    var userid = $('#userid').val();
    alert('Hello');
    $.get('hlp_ListOfStockGroups.res', {'userid': userid}, function (data) {
        var data1 = data;
        alert('Stock Group' + data);
        $('#lststockgroup').append(data1);
    });
    //List Of Executives Under Present Manager Login.
    //alert('Hello');
    $.get('hlp_ListOfExecutivesByManager.res', {'userid': userid}, function (data) {
        //alert('Executive Id'+data);
        var data1 = data;
        alert('List Of Executives' + data);
        $('#executiveByManager').append(data1);
    });
}
/**
 * Jquery On Stock Group Ends
 */

/**
 * JQuery On Groups
 */
function searchGroups() {
    //alert('Hello');
    var userid = $('#userid').val();
    //alert('User Id\t'+userid);
    $.get('hlp_ListOfGroups.res', {'userid': userid}, function (data) {
        var data1 = data;
        //alert('Data is\t'+data);
        $('#mnggrouplist').append(data1);
    });

    $.get('hlp_ListOfExecutivesByManager.res', {'deltby': userid}, function (data) {
        //alert('Executive Id'+data);
        var data1 = data;
        $('#executiveByManager').append(data1);
    });
}
/**
 * JQuery On Groups End
 */
//Drop Down for Under 
$(document).ready(function () {
    $.get('fn_drop_down_for_under.res', function (data) {
        //alert(data);
        $('#groupsdata').html(data);
    });
});
//Drop Down for Voucher Type.
$(document).ready(function () {
    //alert('hai');
    $.get('fn_drop_down_for_voucher_type.res', function (data) {
        //alert(data);
        $('#vochertypedata').html(data);
    });
});

//Mobile number

$(document).ready(function () {
    $('.mob').prop('maxlength', 10);
});

//Alert Messages.
function meetingAlert() {
    //alert('Hai');
    var username = $('#username').val();
    $.get('hlp_remainder.res', {'username': username}, function (data) {
        alert(data);
    });
    $.get('hlp_alert_before_week.res', {'username': username}, function (data1) {
        alert(data1);
    });
}


//List the SalesManager in DailyTasks Page.

$(document).ready(function () {
    /*alert('Managers List');*/
    $.get('hlp_list_managers.res', function (data) {
        $('.slmanagerids').html(data);
    });
    return false;
});







//Access Controller on Managers.
$(document).ready(function () {
    $.get('hlp_manager_task.res', function (data) {
        $('.empid1').val(data);
    });
    return false;
});

//Access Permission.
$(document).ready(function () {
    $('#acess').addClass('access');
    $('#noaccess').addClass('notaccess');

    $("a").on('click', function (e) {
        var elementid = $(this).attr('id');
        //alert(elementid);
        elementid.localeCompare("acess");
        var deltby = $('.empid2').val();
        var accessby = $('.slmanagerids').val();
        /*alert(deltby);
         alert(accessby);*/
        if (elementid === 'acess')
        {
            /*alert("Access Field");
             alert('Employee Id'+deltby);
             alert('Access By'+accessby);*/
            $.post('grant_access_to_othermanager.res', {'deltby': deltby, 'accessby': accessby}, function (data) {
                alert('Access Granted');
            });
        }
    });
});

//Employee List from C_HumanResourcesHelperController
$(document).ready(function () {
//	alert('Employee List');
    $.get('hlp_employee_username_list.res', function (data) {
        //	alert('Employe Names\t'+data);
        $('#empid1').html(data);
    });

});




//Auto Travel Expenses Calculation.

$(document).ready(function () {
    //alert('Auto Travel Expenses');
    //Milage Calculation .
    $('#endmilage').blur(function () {
        var startmil = $('#startmilage').val();
        var endmil = $('#endmilage').val();
        var totalmil = endmil - startmil;
        //alert('Total Milage\t'+totalmil);
        $('#totalmilage').val(totalmil).attr('readonly', 'true');
    });
});
$(document).ready(function () {
    //Amount Calculation For Milage.
    $('#priceperlit').blur(function () {
        var totalmil = $('#totalmilage').val();
        var dateofprice = $('#priceperlit').val();
        var totalamount = dateofprice * totalmil;
        //alert('Total Amount'+totalamount);
        $('#totalamount').val(totalamount).attr('readonly', 'true');
    });
});



//Profit And Loss Display Starts
var total1;
var total2;

function displayProfitAndLoss() {
    var purchaseaccount;
    var carrageoutward;


    var companyname = $('#companyid').val();

    /*$.post('hlp_TotalAutoTravelExpenses.fin',function(data){
     //	alert('Auto Travel Expenses'+data);
     
     });*/
    //Carriage Out Ward.
    $.get('fn_PL_carrage_Out_ward.res', function (data) {
        //alert('Carrage out ward');

        if (data != "0.0") {

            carrageoutward = data;
        } else {
            carrageoutward = 0.0;
        }
        $('#carrage_out_ward').html(data);
    });
    //Carriage In Ward
    function viewCarrageInWard() {
        $.get('fn_PL_Carriage_In_Ward.res', function (data) {
            //	alert('Carrage IN ward'+data);
            $('#carrage_in_ward').html(data);
        });
    }




    //OpenStock
    $.get('fn_PL_OpenStock.res', function (data) {
        //alert('Opening Stock'+data);
        $('#open_stock').html(data);
    });
    //Direct Expenses
    $.get('fn_PL_DirectExpenses.res', {'companyname': companyname}, function (data) {
        $('#direct_expenses').html(data);
    });
    //Duties And Taxes
    $.get('fn_PL_DutiesAndTaxes.res', {'companyname': companyname}, function (data) {
        //alert(data);
        $('#duties_taxes').html(data);
    });
    $.get('fn_PL_DirectIncome.res', {'companyname': companyname}, function (data) {
        //alert(data);
        $('#direct_income').html(data);
    });
    $.get('fn_PL_ClosingStock.res', {'companyname': companyname}, function (data) {
        //alert(data);
        $('#closing_stock').html(data);
    });
    $.get('fn_PL_IndirectIncome.res', {'companyname': companyname}, function (data) {

        //alert(data);
        $('#indirect_income').html(data);
    });

    $.get('hlp_PurchaseAccountAmount.res', {'companyname': companyname}, function (data) {
        //alert(data);

        if (data != "0.0") {

            purchaseaccount = data;
        } else {
            purchaseaccount = 0.0;
        }
        $('#purchases_accounts').html(data);
    });
    $.get('hlp_SalesAccountAmount.res', {'companyname': companyname}, function (data) {
        //alert(data);
        $('#sales_account').html(data);
    });

    //alert('Company Name\t'+companyname);
    $.get('fn_indirect_exp_total_details.res', {'companyname': companyname}, function (data) {
        //alert(data);
        $('#indirect_expenses').html(data);
    });

    //alert('DR Amount');
    $.get('totalDRAmount.res', {'companyname': companyname}, function (data) {
        //alert(data);
        $('#dr_total').html(data);
    });

    $.get('hlp_totalOutWard.res', {'companyname': companyname}, function (data) {
        $('#totalwages').html(data);
    });

    $.get('hlp_totalCR.res', {'companyname': companyname}, function (data) {
        $('#cr_total').html(data);
    });

    $.getJSON('hlp_profitorloss.res', {'companyname': companyname}, function (json) {

        var profitorloss = json.profitorloss;
        var result = json.result;


        if (profitorloss == 'Y') {
            //alert('Profit');
            $('#profit').html(result).css('color', 'Green');
            $('#loss').hide();
        } else if (profitorloss == 'N')
        {
            //alert('Loss');
            $('#loss').html(result).css('color', 'Red');
            $('#profit').hide();
        }
    });

    /*$.post('hlp_groupAmount.fin',{'groupname':'IndirectExpenses'},function(data){
     //alert(data);
     total2=parseInt(data);
     
     total2=total1+total2;
     alert(total2);
     
     });*/

    //alert('Purchase Account'+carrageoutward);
    //alert('CarrageOutWard'+purchaseaccount);
}


function displayIndirectExpenses() {
    //alert('Hello!');
    $.get('hlp_IndirectExpenses.res', function (data) {
        //alert(data);
        $('#indirectexp').html(data);
    });

}
function displayAmountOfIndirectExpenses() {
    $.get('hlp_IndirectExpensesAmount.res', function (data) {
        //alert(data);
        $('#auto_travel_expenses').html(data);
    });
    $.get('hlp_IndirectPhoneBillExpensesAmount.res', function (data) {
        //	alert(data);
        $('#phonebillexp').html(data);
    });
    $.get('hlp_IndirectHotelExpensesAmount.res', function (data) {
        //alert(data);
        $('#hotelexp').html(data);
    });
    $.get('hlp_IndirectFoodExpensesAmount.res', function (data) {
        //alert(data);
        $('#foodexp').html(data);
    });
    $.get('hlp_IndirectEntertainmentExpensesAmount.res', function (data) {
        //alert(data);
        $('#entertainmentexp').html(data);
    });
    $.get('hlp_IndirectMisExpensesAmount.res', function (data) {
        //alert(data);
        $('#mis_exp').html(data);
    });
    $.get('hlp_displayInternetExp.res', function (data) {
        //alert('Internet Exp'+data);
        $('#inernet_exp').html(data);
    });
    $.get('hlp_displayAdvertisementExp.res', function (data) {
        //alert('Advertisement Exp'+data);
        $('#adv_exp').html(data);
    });
    $.get('hlp_displayOfficeExp.res', function (data) {
        //alert('Office Exp'+data);
        $('#off_exp').html(data);
    });
    $.get('hlp_displayRepairExp.res', function (data) {
        //alert('Repair Exp'+data);
        $('#rep_main_exp').html(data);
    });
    $.get('hlp_displayPostageExp.res', function (data) {
        //alert('Postage Exp'+data);
        $('#post_cou_exp').html(data);
    });
    $.get('hlp_displaySalaryExp.res', function (data) {
        //alert('Salary Exp'+data);
        $('#salary_exp').html(data);
    });
    $.get('hlp_displaySundryStaffExp.res', function (data) {
        //alert('Sundry Staff Welfare'+data);
        $('#sundry_staff_exp').html(data);
    });

    return false;
}


function displayBalanceSheet() {
    //alert('Hello');

    $.get('hlp_listLoanLiabilitie.res', function (data) {
        //alert(data);
        $('#loanlibilites').html(data);
    });

    $.get('hlp_CashinHand.res', function (data) {
        //alert(data);
        $('#current_assets1').html(data);
    });

    $.get('hlp_CapitalAccount.res', function (data) {
        var d1 = data;
        //alert('Capital Account'+d1);
        $('#capital_account').html(data);
        //alert('Loan Liabilites');
    });

    $.get('hlp_displayReverseSurplus.res', function (data) {
        //alert('ReverseSuplus'+data);
        $('#reserve_surplus').html(data);
    });

    //Loan Liabilites
    $.get('hlp_LoanLiabilites.res', function (data) {
        //alert('Loans (Liablities)'+data);
        $('#loansandliabilites').html(data);
    });
    //SundryCreditors
    $.get('hlp_SundryCreditorsAmount.res', function (data) {
        //alert(data);
        $('#sundary_creditors').html(data);
    });


    $.get('fn_total_assets.res', function (data) {

        $('#totalassets').html(data);
    });

    $.get('fn_total_liabilites.res', function (data) {

        $('#bsliabilites').html(data);
    });

}

function sundryCreditors() {
    $.get('hlp_SundryCreditorsdetails.res', function (data) {
        //alert(data);
        $('#sundry_creditors').html(data);
    });
}




//Current Assets
function currentAssets() {
    //alert('Hello!');
    $.get('hlp_CashinHand.res', function (data) {
        //alert(data);
        $('#cash_in_hand').html(data);
    });
}






//Mislenious items sizes and maximum length.
$(document).ready(function () {

    $('#mobile').attr('maxlength', '10');
    //$('.name').attr('size','30');
});


$(document).ready(function () {
    //alert('Hello');
    //Particulars in VoucherJournal.
    $.get('hlp_particulars1.res', function (data) {
        //alert(data);
        $('.particular1').html(data);
    });
    //Stock Items.
    /*$.get('',function(data){
     
     });*/
});

$(document).ready(function () {
    var sno;
    $.get('hlp_VoucherJournalSno.res', function (data) {
        //alert(data);
        if (data == null) {
            sno = 1;
            //alert("Data is Null");
        } else {
            sno = parseInt(data) + 1;
            //alert(sno);	
            //alert("Data is Not Null");
            $('#journalreciptno').val(sno);
        }

    });
    return false;
});

//Villa Detials on the Home page of every User.
function villaDetails() {
    //alert('Hai');
    $.get('hlp_displayVillaDetails.res', function (data) {
        //alert(data);
        $('#villa_total_details').html(data);
    });
}

$(document).ready(function () {
    //alert('Hello');
    $.get('hlp_tel_agent.res', function (data) {
        //alert(data);
        $('#agentid').html(data);
    });
    $('#agentid').blur(function () {
        alert('Hai');
        var agentid = $('#agentid').val();
        alert(agentid);
        $.get('hlp_tel_agent_name.res', {'agentid': agentid}, function (data) {
            alert(data);
            $('#agentname').val(data);
        });
    });
});

//List of executives by manager.
$(document).ready(function () {
    //alert('hai');
    var username = $('#mngr2').val();
    //alert('username is\t'+username);
    $.get('hlp_executive_list_by_manager.res', {'username': username}, function (data) {
        //alert(data);
        $('#executivelist').html(data);
    });
});
$(document).ready(function () {
    $('.flip').hide();
    $('#loginby').click(function () {
        $('.flip').slideToggle('slow').addClass('.flip');
    });
});

$(document).ready(function () {
    //alert('Hello');
    $('#login_button').hover(function () {
        //	alert('Hello');
        $('#login_button').addClass('login_button_hover');
    }).blur(function () {
        $('#login_button').removeClass('login_button_hover');
    });

});

//Setting Login in the center of the screen

$(document).ready(function () {
    function move_div() {
        window_width = $(window).width();
        window_height = $(window).height();

        obj_width = $('.login_details').width();
        obj_height = $('.login_details').height();

        $('.login_details').css('top', (window_height / 2) - (obj_height / 2)).css('left', (window_width / 2) - (obj_width / 2));



    }

    $(window).resize(function () {
        move_div();
    });

});

$(document).ready(function () {
    $('#dob').on('change', function () {
        var dob = $(this).val();
        alert('DOB:::' + dob);
        getAge(dob);
    });
});


function getAge(dateString) {
    var today = new Date();
    var birthDate = new Date(dateString);
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    return age;
}
