<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<script>
	window.userRole = '${userModel.role}';
</script>

<nav
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="${contextRoot}/home">
		<img src="${images}/hh2.jpg" width=100px height=50px style="margin-top:-15px"/></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active" id="home1"><a
					href="${contextRoot}/home" class="nav-link" style="color: white">Home</a></li>

				<li class="nav-item" id="about"><a href="${contextRoot}/about"
					class="nav-link" style="color: white">About</a></li>
				<li class="nav-item" id="product"><a
					href="${contextRoot}/show/all/products" class="nav-link"
					style="color: white">Product</a></li>
				<li class="nav-item" id="contact"><a
					href="${contextRoot}/contact" class="nav-link" style="color: white">Contact</a></li>

				<security:authorize access="hasAuthority('ADMIN')">
					<li class="nav-item" id="insertproducts"><a
						href="${contextRoot}/insert/products" class="nav-link"
						style="color: white">ManagingProducts</a></li>
				</security:authorize>


				<security:authorize access="isAnonymous()">
					<li class="nav-item" id="contact"><a
						href="${contextRoot}/registration" class="nav-link"
						style="color: white">SignUp</a></li>
					<li class="nav-item" id="contact"><a
						href="${contextRoot}/login" class="nav-link" style="color: white">LogIn</a></li>
				</security:authorize>


				<ul class="nav navbar-nav navbar-right" style="margin-left: 350px;">
					<security:authorize access="isAuthenticated()">
						<li class="dropdown"><a class="btn btn-default"
							href="javascript:void(0)" id="dropdownMenu1"
							data-toggle="dropdown"> ${userModel.fullName} <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby=dropdownMenu1>

								<security:authorize access="hasAuthority('USER')">
									<li id="cart"><a href="${contextRoot}/cart/show">
									 &#160;
				<span class="badge">${userModel.cart.cartLines}</span>-&#8377;${userModel.cart.grandTotal}
											<!-- <span>CART</span> -->
									</a></li>
									<li role="seperator" class="divider"></li>
								</security:authorize>

								<li id="logout"><a href="${contextRoot}/logout"><b>Logout</b></a>
								</li>
							</ul></li>
					</security:authorize>
				</ul>
			</ul>
		</div>
	</div>
</nav>