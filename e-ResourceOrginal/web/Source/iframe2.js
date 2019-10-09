		window.addEvent('domready',function(){
			
			document.id('start').addEvent('click',function() {
				
				light = new LightFace.IFrame({ height:200, width:600, url: 'updatecompany.jsp', title: 'Modify Company' }).addButton('Close', function() { light.close(); },true).open();
				
			});
			
		});
