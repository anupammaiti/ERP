function swap(){
		if(document.getElementById('leavetype').value == 'OD'||document.getElementById('leavetype').value == 'PER'){
		//	document.getElementById('leavetype').style.display = 'none';
			document.getElementById('odhours').style.display = 'block';
		}
		else
		{
			document.getElementById('odhours').style.display = 'none';
		}
	}
	////////////////////in case of 1/2cl,1/2sl,1/2pl
function swap1(){
		if(document.getElementById('leavetype').value == '1/2LOP'||document.getElementById('leavetype').value == '1/2TL'||document.getElementById('leavetype').value == '1/2CL'||document.getElementById('leavetype').value == '1/2SL'||document.getElementById('leavetype').value == '1/2PL'){
		//	document.getElementById('leavetype').style.display = 'none';
			document.getElementById('sess').style.display = 'block';
		}
		else
		{
			document.getElementById('sess').style.display = 'none';
		}
	}	