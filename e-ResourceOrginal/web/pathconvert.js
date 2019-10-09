function get(eid) {
var d = document;
var r= d.getElementById(eid);
return r;
}

function escapeString(s) {
var eChars = ["\\", "'", '"'];
var lasti = eChars.length;

for (var i = 0; i < lasti; i++) {
var sArray = s.split(eChars[i]);

var lastj = sArray.length;

s = '';
for (var j = 0; j < lastj; j++) {
s += sArray[j] + '\\' + eChars[i];
}
}

var last = s.length - 2*eChars.length;
return s.substring(0, last);
}

function show() {
var t = get('estring');
var es = escapeString(t.value);
var res=window.confirm("Are you sure want to load data from "+es);
//var o = get('show');
if(res==true)
{
var o1 = get('sheetname');
var msg = es;
//o.innerHTML = msg;
//o1.innerHTML = msg;
document.frm.sheetname.value=msg;
document.frm.ackmsg.value="load";
//alert(res);
return true;
}
if(res==false)
{
//	alert(res);
//	alert("Please confirm the file before loading");
	return false;
}
//document.getElementById(show1).value=msg;
//return false;

}