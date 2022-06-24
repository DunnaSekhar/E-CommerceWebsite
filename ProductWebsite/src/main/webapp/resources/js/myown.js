
$(
	function(){
		switch(menu){
			case 'Home Page':
				$('#home1').addClass('active');
				break;
				case 'About Us Page':
				$('#about').addClass('active');
				break;
				case 'Product Page':
				$('#product').addClass('active');
				break;
				case 'Contact Page':
				$('#contact').addClass('active');
				break;
		}
	}
)

var token=$('meta[name="_csrf"]').attr('content');
var header=$('meta[name="_csrf_header"]').attr('content');


if((token!=undefined && header!=undefined) &&(token.length>0 && header.length >0))
{
$(document).ajaxSend(function(e,xhr,options)
{
xhr.setRequestHeader(header,token);
});
}


var $table = $('#productListTable');

if ($table.length) {
	var jsonUrl = '';
	if (window.categoryId == '') {
		jsonUrl =window.contextRoot+'/json/data/all/products';
	}
	else {
		jsonUrl = window.contextRoot + '/json/data/category/' + window.categoryId + '/products';
	}


	$table.DataTable({

		lengthMenu: [[2, 4, 8, -1], ['2 Records', '4 Records', '8 Records', 'All']],
		pageLength: 5,
		ajax: {
			url: jsonUrl,
			dataSrc: ''
		},

		columns:
			[
				{
					data: 'id'
				},
				{
					data: 'code',
					mRender: function(data, type, row) {
						return '<img src="' + window.contextRoot + '/resource/images/' + data + '.jpeg" height="120" width="120"/> ';
					}
				},
				{
					data: 'name'
				},
				{
					data: 'brand'
				},
				{
					data: 'unitPrice',
					mRender: function(data, type, row) {
						return '&#8377;' + data
					}
				},
				{
					data: 'quantity',
					mRender: function(data, type, row) {
						if (data < 1) {
							return '<span style="color:red">Out Of Stock</span>';
						}
						return data;
					}
				},


				{
					data: 'id',
					mRender: function(data, type, row) {
						var str = '';
						str += ' <a class="btn btn-info" href="' + window.contextRoot + '/show/' + data + '/product ">VIEW PRODUCTS</a> ';
					
					if(userRole != 'ADMIN')
					{
						if (row.quantity < 1) {
							str += '<a class="btn btn-success disabled" href="javascript:void(0)">ADD TO CART</a>&#160;';
						}
						else {
							str += ' <a class="btn btn-success" href="' + window.contextRoot + '/cart/add/' + data + '/product ">ADD TO CART</a> ';

						}
					}
						else{
							str += ' <a class="btn btn-success" href="' 
							+ window.contextRoot + '/insert/' 
							+ data + '/product ">ADD TO CART</a> ';

						}
						return str;
					}
				}
			]

	}
	);

}
var $alert = $('.alert');
if ($alert.length) {
	setTimeout(function() {
		$alert.fadeOut('slow');
	}, 4000)
}



$('button[name="refreshCart"]').click(function(){
	var cartLineId=$(this).attr('value');
	var countField=$('#count_'+cartLineId);
	var originalCount=countField.attr('value');
	if(countField.val() != originalCount)
	{
	if(countField.val()<1 || countField.val() >4)
	{
	countField.val(originalCount);
	bootbox.alert({
	size:'medium',
	title:'error',
	message:'Product count could not be less than 1 and greater than 4..!!'
	});
	}
	else
	{
	var updateUrl=window.contextRoot+'/cart/'+cartLineId+'/update?count='+countField.val();
	/*window.updated=updaterUrl;*/
	window.location.href=updateUrl;
	}
	}
	});
	
	
	
