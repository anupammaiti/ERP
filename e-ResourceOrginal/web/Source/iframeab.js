		window.addEvent('domready',function(){
			
			document.id('startab').addEvent('click',function() {
				
				light = new LightFace.IFrame({ height:400, width:800, url: 'viewrmleaves.jsp', title: 'View Absent Days' }).addButton('Close', function() { light.close(); },true).open();
				
			});
			
		});
