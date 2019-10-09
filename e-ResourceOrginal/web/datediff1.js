// JavaScript Document
/////////////////////////find date diff
function datediff1(){
	//var lev=document.frm.leavetype.value;
var day1, day2;
var month1, month2;
var year1, year2;
var value1=document.getElementById("date1").value;
	var value2=document.getElementById("date2").value;
	if(value1=="")
	{
		alert("Please Select From Date");
document.frm.date1.focus();
document.frm.date1.style.background = "pink";
return false;
	}
	if(value2=="")
	{
		alert("Please Select To Date");
document.frm.date2.focus();
document.frm.date2.style.background = "pink";
return false;
	}
//alert(value1+"first");
//var value1= form.fromdate.value;
//var value2= form.todate.value;
//alert(value2+"last");
day1 = value1.substring (0, value1.indexOf ("-"));
month1 = value1.substring (value1.indexOf ("-")+1, value1.lastIndexOf ("-"));
year1 = value1.substring (value1.lastIndexOf ("-")+1, value1.length);

day2 = value2.substring (0, value2.indexOf ("-"));
month2 = value2.substring (value2.indexOf ("-")+1, value2.lastIndexOf ("-"));
year2 = value2.substring (value2.lastIndexOf ("-")+1, value2.length); 

date1 =day1+"-"+month1+"-"+year1;
date2 = day2+"-"+month2+"-"+year2;

//alert(date1+"dat1");
//alert(date2+"dat2");
firstDate = Date.parse(date1);
//alert(firstDate+"fdat");
secondDate= Date.parse(date2);
//alert(secondDate+"sdat");

msPerDay = 24 * 60 * 60 * 1000;
//alert(msPerDay);
dbd = Math.round((secondDate.valueOf()-firstDate.valueOf())/ msPerDay) + 1;
//alert(dbd+"hai");
	
		var answer = confirm ("Please Check Available Leaves/Pro-rata Leaves Before Apply Leave For "+dbd+" Day(s)");
if (answer)
{
alert ("Leave Application For "+dbd+" Day(s)");
return true;
}
else
{
alert ("Please Check Available Leaves/Pro-rata Leaves");
return false;
}


}
