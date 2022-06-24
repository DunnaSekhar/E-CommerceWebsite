<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<div class="container">

	<div class="row">
		<div class="col-xs-12">

			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home">Home</a>
				<li><a href="${contextRoot}/show/all/products">Products</a>
				<li class="active">${product.name}
			</ol>
		</div>
	</div>

	<!-- Left Hand side image part -->
	<div class="row">
		<div class="col-xs-12 col-sm-4">
			<div class="thumbnail">
				<img src="${images}/${product.code}.jpeg" class="img img-responsive" />
			</div>
			
		</div>


		<!-- Right Hand Side parts -->
		<div class="col-xs-12 col-sm-8">
			<h3>${product.name}</h3>
			<hr />
			<p>${product.description}</p>
			<hr />
			<h3>
				Price:<strong>&#8377;</strong>${product.unitPrice}</h3>

			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h5>
						Quantity.Available:<span style="color: red">Out Of Stock</span>
					</h5>
				</c:when>
				<c:otherwise>
					<h5>Quantity.Available:${product.quantity}</h5>
				</c:otherwise>
			</c:choose>

			<security:authorize access="isAnonymous() or hasAuthority('USER')">
				<c:choose>
					<c:when test="${product.quantity < 1}">
						<h5>
							<a href="javascript:void(0)" class="btn btn-success disabled"><strike>Add
									To Cart</strike></a>
						</h5>

					</c:when>
					<c:otherwise>
						<a href="${contextRoot}/cart/add/${product.id}/product"
							class="btn btn-success">Add To Cart</a>
					</c:otherwise>
				</c:choose>
			</security:authorize>

			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/insert/${product.id}/product"
					class="btn btn-success"><span
					class="glyphicon glyphicon-pencil"></a>
			</security:authorize>

		</div>
	</div>
	<a href="${contextRoot}/show/all/products" class="btn btn-info">Back</a>



 
 


<%--  <section class="ftco-section">
    	<div class="container">
				<div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Products</span>
            <h2 class="mb-4">Related Products</h2>
               </div>
        </div>   		
    	</div>
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${images}/${product.code}.jpeg" >
    						<span class="status">30%</span>
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Product 1</a></h3>
    						
	    					
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${images}/${product.code}.jpeg" >
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Product 2</a></h3>
    						
    						
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${images}/${product.code}.jpeg" >
	    					<div class="overlay"></div>
	    				</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Product 3</a></h3>
    						
    						
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="${images}/${product.code}.jpeg" >
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">Product 4</a></h3>
    						
    						
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section> --%>




</div>