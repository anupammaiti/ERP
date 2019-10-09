var xmlHttp;
var xmlHttp1;
var xmlHttp2;
function shownames2(str,str1)// forget swipe
{ 

xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
//alert("first"+str1);
//alert("last"+str);
var url="tothrs3.jsp";
url=url+"?q="+str+","+str1;
//alert(url);
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=nameTypeChange;
xmlHttp.open("Get",url,true);
xmlHttp.send(null);
}


function nameTypeChange() 
{ 

	if (xmlHttp.readyState==4)
	{ 
		document.getElementById('txtHint3').innerHTML=xmlHttp.responseText;

	}

}
////////////////////////////////////

//////////////////////////////////////////////////////////
function GetXmlHttpObject()
{
var xmlHttp=null;
try
  {
  // Firefox, Opera 8.0+, Safari
  xmlHttp=new XMLHttpRequest();
  }
catch (e)
  {
  // Internet Explorer
  try
    {
    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    }
  catch (e)
    {
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
return xmlHttp;
}
