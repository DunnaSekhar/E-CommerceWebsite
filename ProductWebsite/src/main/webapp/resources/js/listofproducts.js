

var $table = $('#adminProductTable');

if ($table.length) {
	var jsonUrl = window.contextRoot + '/json/data/all/products';


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
					data: 'active',
					bSortable: false,
					mRender: function(data, type, row) {
						var str = '';
						str += '<label class="switch">';
						if (data) {
							str += '<input type="checkbox" checked=checked value="' + row.id + '"/>';
						}
						else {
							str += '<input type="checkbox" value="' + row.id + '"/>';
						}
						str += '<div class="slider"></div></label>';
						return str;
					}
				},

				{
					data: 'id',
					bSortable: false,
					mRender: function(data, type, row) {
						var str = '';
						str += '<a href="' + window.contextRoot + '/insert/' + data+'/product" class="btn btn-info btn-lg">';
						str += '<span class="glyphicon glyphicon-edit"></span></a>';
						return str;
					}
				}
			],
		initComplete: function() {
			var api = this.api();

			api.$('.switch input[type="checkbox"]').on('change', function() {
				var checkbox = $(this);
				var checked = checkbox.prop('checked');
				var msg = (checked) ? 'Do you want to active the product ???' : 'Do you want to deactivate Product ???';
				var value = checkbox.prop('value');

				bootbox.confirm({
					size: 'medium',
					title: "Product Activation & Deactivation Window",
					message: msg,
					callback: function(confirmed) {
						if (confirmed) {
							var activationURL = window.contextRoot + '/insert/product/' + value + '/activation';
							$.post(activationURL, function(data) {
								bootbox.alert({
									size: medium,
									title: "info",
									message: data
								});
							});

						}
						else {
							checkbox.prop('checked', !checked)
						}
					}
				});
			}
			);
		}

	}
	);

}

