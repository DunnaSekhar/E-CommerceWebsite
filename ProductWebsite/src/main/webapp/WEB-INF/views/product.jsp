<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
<div class="Container">
	<div class="row">


		<%@ include file="./shared/sidebar.jsp"%>


		<div class="col-md-9">
			<div class="row">
				<div class="col-lg-12">

					<c:if test="${userClickAllProducts==true}">
						<script>
							window.categoryId ='';
						</script>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li><a href="${contextRoot}/home">Home</a></li>
								<li class="active">All Products</li>
							</ol>
						</nav>
					</c:if>


					<c:if test="${userClickCategoryProducts==true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li><a href="${contextRoot}/home">Home</a></li>
								<li class="breadcrumb-item active">Category</li>
								<li class="breadcrumb-item active">${category.name}</li>
							</ol>
						</nav>
					</c:if>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<table id="productListTable"
						class="table table-striped table-bordered ">
						<thead>
							<tr class="bg-warning">
								<th  class="bg-warning">Id</th>
								<th  class="bg-warning">Images</th>
								<th  class="bg-warning">Name</th>
								<th  class="bg-warning">Brand</th>
								<th  class="bg-warning">Price</th>
								<th  class="bg-warning">Quantity</th>							
							<th></th>
							</tr>
						</thead>
						
						<tfoot>
							<tr class="bg-warning">
								<th>Id</th>
								<th>Images</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Quantity</th>
								<th></th>
								
							</tr>
						</tfoot>
					</table>
				</div>
			</div>


		</div>


	</div>
</div>


</body>
</html>


