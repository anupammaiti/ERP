// JavaScript Document
/////////////////////////find date diff
function agediff(){
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~toget current date 
	//today=new Date(); // Initialize Date in raw form
//todate=today.getDate(); // Get the numerical date
//toyear=today.getFullYear(); // Get the year
//tooday = today.getDay(); // Get the day in number form (0,1,2,3,etc.)
//tomonth=today.getMonth()+1; // Get the month
	//alert(toyear+"-"+tomonth+"-"+todate);
	//var date2=toyear+"-"+tomonth+"-"+todate;
	//alert(date2);
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
var day1, day2;
var month1, month2;
var year1, year2;
var value1=document.getElementById("dob").value;
var value2=document.getElementById("dob1").value;
	//var value2=date2;
	if(document.getElementById("dob").value!="")
	{
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
	if(dbd<7300)
	{
		var answer = confirm ("Minimum Age Should be 20 Years");
		return false;
		//document.getElementById("dob").focus();
	//document.getElementById("dob").style.background = "pink";
		
	}

	}
}
