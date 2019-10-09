		window.addEvent('domready',function(){
			
			document.id('startlog').addEvent('click',function() {
				
				light = new LightFace.IFrame({ height:300, width:500, url: 'emplogin.jsp', title: 'Update Employee Login Details' }).addButton('Close', function() { light.close(); },true).open();
				
			});
			
		});
