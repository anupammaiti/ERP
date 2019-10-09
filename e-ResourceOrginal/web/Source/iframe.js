		window.addEvent('domready',function(){
			
			document.id('start').addEvent('click',function() {
				
				light = new LightFace.IFrame({ height:570, width:800, url: 'empupdate.jsp', title: 'Update Employee Details' }).addButton('Close', function() { light.close(); },true).open();
				
			});
			
		});
