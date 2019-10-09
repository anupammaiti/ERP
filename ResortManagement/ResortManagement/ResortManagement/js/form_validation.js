alphaReg = /^[A-Za-z0-9 ]{3,20}$/;
numericReg = /^[0-9]+$/;
alphanumericReg = /^[0-9a-zA-Z]+$/;



/**
 * Basic Validation Functions
 * 
 * */

function alphabetic(alphabetic) {
    if (!alphabetic.match(alphaReg)) {
        return false;
    } else {
        return true;
    }
}

function alphanumeric(alphanumeric) {
    if (alphanumeric.match(alphanumericReg)) {
        return true;
    } else {
        return false;
    }

}
function numeric(numeric) {
    if (numeric.match(numeric)) {
        return true;
    } else {
        return false;
    }
}

function emailCheck(email) {
    if (email.match(email)) {
        return true;
    } else {
        return false;
    }
}

function getUserFormValidation(event) {
    alert('Hello');
    var target = event.target('id');
    alert('id is' + target);
}
/**
 * Basic Validation Methods Ends..  
 * */
/*function alphabetic(alphane)
 {
 //alert('Hello');
 var numaric = alphane;
 for(var j=0; j<numaric.length; j++)
 {//alert('Hello');
 var alphaa = numaric.charAt(j);
 var hh = alphaa.charCodeAt(0);
 if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
 {
 }
 else
 {		
 alphane.value='';
 alert("It is not a character");
 
 return false;			
 }
 }
 
 return true;
 }*/

//var target = event.getAttribute('id');
function alphabetic(alphane) {
    //alert('Character Validation');

    //alert('Nameis'+numaric);
    //$('#name').change(function(){

    var numaric = alphane;
    for (var j = 0; j < numaric.length; j++)
    {//alert('Hello');
        var alphaa = numaric.charAt(j);
        var hh = alphaa.charCodeAt(0);
        if ((hh > 64 && hh < 91) || (hh > 96 && hh < 123) || (hh == 95))
        {
            return true;

        } else
        {
            $('.name').val('').addClass('error');
            //alert('enter characters only');
            $('.errormsg').text('It Is not Character ').addClass('error').show().delay(5000).fadeOut();
            return false;
        }
    }
    //});
    numaric = '';
    return false;
}


function numeric(numeric) {
    //$('.number').change(function(){
    var numaric = numeric;

    for (var j = 0; j < numaric.length; j++)
    {
        var alphaa = numaric.charAt(j);
        var hh = alphaa.charCodeAt(0);
        if ((hh > 47) && (hh < 58))
        {
        } else
        {
            $('.number').val('').addClass('error');

            return false;
        }
    }
    //});	
    return false;
}




//////////////////////
/*function numeric(alphane)
 {
 var numaric = alphane;
 for(var j=0; j<numaric.length; j++)
 {
 var alphaa = numaric.charAt(j);
 var hh = alphaa.charCodeAt(0);
 if((hh>47)&&(hh<58))
 {
 }
 else
 {			alphane.value='';
 alert("It is not a Number");
 
 return false;
 }
 }
 
 return true;
 }*/

/*$(document).ready(function(){
 var numaric=$('.number').val();
 
 for(var j=0; j<numaric.length; j++)
 {
 var alphaa = numaric.charAt(j);
 var hh = alphaa.charCodeAt(0);
 if((hh>47)&&(hh<58))
 {
 }
 else
 {		$('.number').val('');
 
 return false;
 }
 }
 });*/



function alphanumeric(alpahne) {
    var alphanumeric = alpahne;

    for (var j = 0; j < alphanumeric.length; j++)
    {
        var alphaa = alphanumeric.charAt(j);
        var hh = alphaa.charCodeAt(0);
        if ((hh > 47) && (hh < 58) || (hh > 64 && hh < 91) || (hh > 96 && hh < 123))
        {
        } else {

            alert("It is not alphabet or number");
            $('.alphanumeric').val('').addClass('error');
            return false;
        }
    }
    return true;
}

function checkemail(email) {
    var x = email;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length)
    {
        alert("Not a valid e-mail address");
        $('.email').val('').addClass('error');
        return false;
    } else {
        return true;
    }

    return false;
}

function nameMaxMinLength(name) {
    alert('Max and Min Length');
    if ((name.value > 2) && (name.value < 10)) {
        alert('Field range is 2 to 10 characters');
        return false;
    } else {
        alert('OK');
        return true;
    }
    return true;
}


function formValidation(evenet) {
    var fieldid = event.target('id');
    if (fieldid == 'uname') {
        alert($('#' + fieldid).val());
    }

}


function formValidation(event) {

    var fieldid = event.target('id');
    if (fieldid == 'uname') {
        alert($('#' + fieldid).val());
    }

}

function validateField(field) {
    var data = $('#' + field.id).val();
    if (field.id == '') {
    }

}

function changeDateFormat(dateFormat) {
    var date = new Date(dateFormat);
    var dateFormat = date.toDateString("DD-MMMM-YYYY");
}




