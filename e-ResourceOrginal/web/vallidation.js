function alpha(e) {
	//alert("hai");
var k;
document.all ? k = e.keyCode : k = e.which;
return ((k > 64 && k < 91) || (k > 96 && k < 123) || (k >= 8 && k<=11) || k==32 || k==127 || k==14);
}

//////////////////////
function alphanumeric(evt)
      {
         var charCode = (evt.which) ? evt.which : evt.keyCode
         if ((charCode > 31&& charCode < 48 )||(charCode > 57 && charCode <65 )|| (charCode > 90 && charCode <97 )|| charCode >122)//if not 0-9 false
		  {
            return false;
		  }
		  else{
         return true;
		 }
      }
	  
	  ////////////////////////////////////
		  
	  ////////////////////////////////////
	  function number1(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))//if not 0-9 false
		  {
            return false;
		  }
		  else{
         return true;
		 }
      }