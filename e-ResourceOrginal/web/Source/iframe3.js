
		
		
		window.addEvent('domready',function(){
	
			document.id('start').addEvent('click',function() {
				var a=document.getElementById('ph2').value;
				light = new LightFace.IFrame({ height:600, width:600, url: 'paidholidays1.jsp?year='+a+'', title: 'Paid Holidays' }).addButton('Close', function() { light.close(); },true).open();
				
			});
			
		});
		
		