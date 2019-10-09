function checkfields()
{
	var a=document.frm.BankAcno.value;
	//alert(a);
if(a.equals("null"))
	{
		//alert(a);
	//alert(document.frm.BankAcno.value);
	document.frm.BankAcno.value="";
	//document.frm.presentsalary.focus();
	//document.frm.BankAcno.style.background = "pink";
//return false;
	}
	if(document.frm.phoneno.value=="null")
	{
	
	document.frm.phoneno.value="";
	}
	if(document.frm.passportnumber.value=="null")
	{
	
	document.frm.passportnumber.value=="";
	}
	
	if(document.frm.pannumber.value=="null")
	{
	
	document.frm.pannumber.value="";
	}
	if(document.frm.religion.value=="null")
	{
	
	document.frm.religion.value="";
	}
	if(document.frm.birthplace.value=="null")
	{
	
	document.frm.birthplace.value="";
	}
	if(document.frm.nomination.value=="null")
	{
	
	document.frm.nomination.value="";
	}
	}
