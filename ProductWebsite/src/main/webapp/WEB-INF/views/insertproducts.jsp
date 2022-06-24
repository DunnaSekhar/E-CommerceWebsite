<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>



<body>		 <!-- style="background-color:lightgreen;opacity:0.3;" -->
<div class="container">

	<c:if test="${not empty message}">
		<div class="row">
			<div class="col-xs-12 col-md-offset-2 col-md-8">
				<div class="alert alert-info fade in">${message}</div>
			</div>
		</div>

	</c:if>



	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-success">
				<div class="panel-heading">
					<center>
						<h2 style="color: blue">Managing Of Products</h2>
					</center>
				</div>

				<div class="panel-body">
					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/insert/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group">
							<label class="control-label col-md-4" for="name"> Enter
								Your Product Name:</label>
							<div class="col-md-8">
								<sf:input path="name" type="text" id="name"
									placeholder="Product Name" class="form-control" />
								<sf:errors path="name" style="color: red" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="brand"> Enter
								Your Brand Name:</label>
							<div class="col-md-8">
								<sf:input path="brand" type="text" id="brand"
									placeholder="Brand Name" class="form-control" />
								<sf:errors path="brand" style="color: red" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="Description">
								Description:</label>
							<div class="col-md-8">
								<sf:textarea path="description" id="description" rows="4"
									placeholder="Description Name" class="form-control" />
								<sf:errors path="description" style="color: red" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="unitPrice">
								Price Of Products:</label>
							<div class="col-md-8">
								<sf:input path="unitPrice" id="unitPrice" type="number"
									placeholder="Product Price in &#8377" class="form-control" />
								<sf:errors path="unitPrice" style="color: #FF6347"
									cssClass="help-block" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="quantity">
								Quantity:</label>
							<div class="col-md-8">
								<sf:input path="quantity" id="quantity" type="number"
									placeholder="quantity" class="form-control" />
								<sf:errors path="quantity" style="color: red" element="em"></sf:errors>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="file"> Upload
								A Image File:</label>
							<div class="col-md-8">
								<sf:input path="file" type="file" class="form-control" />
								<sf:errors path="file" style="color: red" element="em"></sf:errors>
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-md-4" for="categoryId">
								Select Category:</label>
							<div class="col-md-8">
								<sf:select class="control-label" path="categoryId"
									id="categoryId" items="${categories}" itemLabel="name"
									itemValue="id">
								</sf:select>


								<!-- 	<div class="text-right">
										<button type="button" data-toggle="modal"
											data-target="#MyCategoryModal" class="btn btn-warning btn-sm">Add
											category</button>
									</div>
								 -->

								<div class="text-right">
									<br />
									<sf:hidden path="id" />
									<sf:hidden path="code" />
									<sf:hidden path="supplierId" />
									<sf:hidden path="active" />
								</div>

							</div>
						</div>

						<div class="form-group">
							<div class="col-md-offset-4 col-md-4">
								<input type="submit" name="submit" value="Submit" />
							</div>
						</div>



					</sf:form>
					
					<%-- <div style = "margin-left: 180px;">
						<img src="${images}/admin.jpg" />
					</div>
 --%>
				</div>
			</div>
		</div>
	</div>



	<div class="row">
		<div class="col-xs-12">
			<center>
				<h2 style="color: blue">
					<b>Available Products For ADMIN</b>
				</h2>
			</center>
			<hr />
		</div>

		<div class="col-xs-12">
			<div style="overflow: auto">

				<table id="adminProductTable"
					class="table table-striped table-bordered">
					<thead>
						<tr class="table-success">
							<th class="table-success">Id</th>
							<th class="table-success">&#160</th>
							<th class="table-success">Name</th>
							<th class="table-success">Brand</th>
							<th class="table-success">Unit Price</th>
							<th class="table-success">Quantity</th>
							<th class="table-success">Active</th>
							<th class="table-success">Edit</th>
						</tr>
					</thead>

					<tfoot>
						<tr class="table-success">
							<th class="table-success">Id</th>
							<th class="table-success">&#160</th>
							<th class="table-success">Name</th>
							<th class="table-success">Brand</th>
							<th class="table-success">Unit Price</th>
							<th class="table-success">Quantity</th>
							<th class="table-success">Active</th>
							<th class="table-success">Edit</th>
						</tr>
					</tfoot>


				</table>
			</div>
		</div>

	</div>


	<%-- <div class="modal fade" tabindex="-1" id="MyCategoryModal"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add New Category</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<sf:form id="categoryForm" modelAttribute="category"
						action="${contextRoot}/insert/category" method="POST"
						class="form-horizontal">

						<div class="form-group">
							<label class="control-label col-md-4" for="category_name">Category
								Name</label>
							<div class="col-md-8">
								<sf:input path="name" type="text" id="category_id"
									class="form-control" />
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-md-4" for="category_description">Description</label>
							<div class="col-md-8">
								<sf:textarea path="description" id="category_desc" col="10"
									row="5" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-offset-4 col-md-8">
								<input  type="submit" value="Add Category"
									class="btn btn-primary"/>
							</div>
						</div>


					</sf:form>
				</div>
				<!-- <div class="modal-footer">
					<button type="button" class="btn btn-primary">Save changes</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div> -->
			</div>
		</div>
	</div> --%>





</div>

</body>