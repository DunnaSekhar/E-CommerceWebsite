
<body>




<section class="ftco-section ftco-cart">
	<div class="container">
		<c:if test="${not empty message}">
			<div class="alert alert-info">
				<h4 class="text-center">${message}</h4>
			</div>
		</c:if>

		<c:choose>
			<c:when test="${not empty cartLines}">
				<div class="row">
					<div class="col-md-12 ftco-animate">
						<div class="cart-list">
							<table class="table">
								<thead class="thead-primary">
									<tr class="text-center">
										<th></th>
										<th></th>
										<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product name</th>
										<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price</th>
										<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity</th>
										<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${cartLines}" var="cartLine">
										<tr class="text-center">
											<td class="product-remove"><a href="${contextRoot}/cart/${cartLine.id}/delete""><span
													class="ion-ios-close"></span></a></td>
												
																			
												
											<td class="image-prod"><div class="img"
													style="background-image:url(${images}/${cartLine.product.code}.jpeg);"></div></td>

											<td class="product-name">
												<p>
													<a href="#">${cartLine.product.name}</a>
												</p> <a href="#">${cartLine.product.brand}</a>
												<p><b>Description:</b>${cartLine.product.description}</p>
											</td>

											<td class="price">&#8377;${cartLine.buyingPrice}</td>

											<td class="quantity">
												<div class="input-group mb-3">
													<input type="number" id="count_${cartLine.id}
														class="form-control; text-center"
														value="${cartLine.productCount}" min="1" max="100">
												</div>
											</td>




											<td class="total">&#8377;${cartLine.total}</td>



											<td class="col-sm-1 col-md-1"><c:if
													test="${cartLine.available==true}">

													<button type="button" class="btn btn-info"
														value="${cartLine.id}" name="refreshCart">
														Refresh

													</button>
												</c:if></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="row justify-content-end">
					<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
						<div class="cart-total mb-3">
							<h3>Coupon Code</h3>
							<p>Enter your coupon code if you have one</p>
							<form action="#" class="info">
								<div class="form-group">
									<label for="">Coupon code</label> <input type="text"
										class="form-control text-left px-3" placeholder="">
								</div>
							</form>
						</div>
						<p>
							<a href="${contextRoot}/cart/coupon" class="btn btn-primary py-3 px-4">Apply Coupon</a>
						</p>
					</div>
					<!-- <div class="col-lg-4 mt-5 cart-wrap ftco-animate">
						<div class="cart-total mb-3">
							<h3>Estimate shipping and tax</h3>
							<p>Enter your destination to get a shipping estimate</p>
							<form action="#" class="info">
								<div class="form-group">
									<label for="">Country</label> <input type="text"
										class="form-control text-left px-3" placeholder="">
								</div>
								<div class="form-group">
									<label for="country">State/Province</label> <input type="text"
										class="form-control text-left px-3" placeholder="">
								</div>
								<div class="form-group">
									<label for="country">Zip/Postal Code</label> <input type="text"
										class="form-control text-left px-3" placeholder="">
								</div>
							</form>
						</div>
						<p>
							<a href="#" class="btn btn-primary py-3 px-4">Estimate</a>
						</p>
					</div> -->
					<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
						<div class="cart-total mb-3">
							<h3>Cart Totals</h3>
							<p class="d-flex">
								<span>Subtotal</span> <span> &#8377; ${userModel.cart.grandTotal}</span>
							</p>
							<p class="d-flex">
								<span>Delivery</span> <span>&#8377;0.00</span>
							</p>
							<hr>
							<p class="d-flex total-price">
								<span><b>Grand Total &nbsp;&nbsp;&nbsp;=</b></span> <span> &#8377; ${userModel.cart.grandTotal}</span>
							</p>
						</div>
						<p>
							<a href="${contextRoot}/cart/checkout" class="btn btn-primary py-3 px-4">Proceed
								to Checkout</a>
						</p>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="jumbotron">
					<h3 class="text-center">Your cart is empty..!!</h3>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</section>


</body>


