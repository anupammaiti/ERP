// JavaScript Document
/////////////////////////find date diff
function datediff(){
var day1, day2;
var month1, month2;
var year1, year2;
var value1=document.getElementById("start").value;
	var value2=document.getElementById("end").value;
	//alert(value1+"hai");
//var value1= form.fromdate.value;
//var value2= form.todate.value;
//alert(value2+"hai");
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
	
		
if(dbd<=0)
{
alert("Starting date should not exceed the End date");
return false;
}
}
