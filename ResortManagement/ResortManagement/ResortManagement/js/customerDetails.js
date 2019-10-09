/**
 * New node file
 */
function customerSalesGrid(){
	alert('::customer Sales Grid:::');
	try{
		$('#customer_sales_grid').kendoGrid({
			height : "450px",
			witdth : "80%",
			sortable : true,
			reorderable : true,
			// groupable: true,
			resizable : true,
			filterable : true,
			columnMenu : true,
			pageable : true,
		});
	}catch(e){
		alert(e);
	}
}