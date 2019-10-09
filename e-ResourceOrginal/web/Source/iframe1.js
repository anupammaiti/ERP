		window.addEvent('domready',function(){
			
			document.id('start').addEvent('click',function() {
				
				light = new LightFace.IFrame({ height:200, width:510, url: 'updatedesignation.jsp', title: 'Modify Designation' }).addButton('Close', function() { light.close(); },true).open();
				
			});
			
		});
