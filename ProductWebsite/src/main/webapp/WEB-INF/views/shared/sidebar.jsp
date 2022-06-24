<div class="col-md-3">
	<p class="lead">
		<b>Category List</b>
	</p>
	<div class="list-group">
		<c:forEach items="${categories}" var="category">
			<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item"><b>${category.name}</b></a>
		</c:forEach>
	</div>
</div>
