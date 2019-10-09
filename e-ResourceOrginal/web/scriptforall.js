/*function checkmail()
{
with(document.frmmail)
		{	
	if (trim(to.value) == ""){
			alert("Please Enter To Mail Address");
			to.focus();
			return false;
		} 
		if (trim(from.value) == ""){
			alert("Please Enter From Mail Address");
			from.focus();
			return false;
		} 
		if (trim(password.value) == ""){
			alert("Please Enter Password");
			password.focus();
			return false;
		}
		var emailRegEx =/^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._-])?([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/
 
if (to.value.search(emailRegEx )==-1) //if match failed
{
alert("To mail id is invalid !!!");
return false;
}
if (from.value.search(emailRegEx )==-1) //if match failed
{
alert("From mail id is invalid !!!");
return false;
}

	}
	}*/
	//////////////////////////////////////////////////////////////////////////////
	function trim(a){
    return(lTrim(rTrim(a)));
}

function lTrim(tmp){
    for(i=0;i<tmp.length;i++){
        if(tmp.charAt(i) != " ")
            break;
    }
    return tmp.substring(i,tmp.length)
}

function rTrim(tmp){
    for(i=tmp.length-1;i>=0;i--){
        if(tmp.charAt(i) != " ")
            break;
    }
    return tmp.substring(0,i+1)
}
//////////////////////////////////////////////////////////checking in mail fields
function datecheck()
{
	with(document.frm123){
		
		if(trim(fromdate.value) == "")
		{
			window.alert("Please Enter From date");
			fromdate.focus();
			return false;
		}
		if(trim(todate.value) == "")
		{
			window.alert("Please Enter From todate");
			todate.focus();
			return false;
		}
	}
}
