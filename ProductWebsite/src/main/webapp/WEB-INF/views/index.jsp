<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resource/css" />
<spring:url var="js" value="/resource/js" />
<spring:url var="images" value="/resource/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Dunna Website</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Dunna Sekhar">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="${css}/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${css}/animate.css">

<link rel="stylesheet" href="${css}/owl.carousel.min.css">
<link rel="stylesheet" href="${css}/owl.theme.default.min.css">
<link rel="stylesheet" href="${css}/magnific-popup.css">

<link rel="stylesheet" href="${css}/aos.css">

<link rel="stylesheet" href="${css}/ionicons.min.css">

<link rel="stylesheet" href="${css}/bootstrap-datepicker.css">
<link rel="stylesheet" href="${css}/jquery.timepicker.css">


<link rel="stylesheet" href="${css}/flaticon.css">
<link rel="stylesheet" href="${css}/icomoon.css">
<link rel="stylesheet" href="${css}/style.css">
<link href="${css}/dataTables.css" rel="stylesheet" />
<link href="${css}/bootbox.css" rel="stylesheet" />
<link href="${css}/bootstrap.min.css" rel="stylesheet" />

<link href="${css}/bootstrap.css" rel="stylesheet" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

</head>

<body class="goto-here">
	<!-- Navbar 	-->

	<%@include file="./shared/navbar.jsp"%>

	<!--    carousel		-->
	<c:if test="${userClickHome == true}">
		<%@include file="home.jsp"%>
	</c:if>

	<c:if test="${userClickAbout == true}">
		<%@include file="about.jsp"%>
	</c:if>

	<c:if test="${userClickProduct == true }">
		<%@include file="product.jsp"%>
	</c:if>

	<c:if
		test="${userClickAllProducts == true || userClickCategoryProducts == true}">
		<%@include file="product.jsp"%>
	</c:if>

	<c:if test="${userClickContact == true}">
		<%@include file="contact.jsp"%>
	</c:if>

	<c:if test="${userClickSingleProduct == true }">
		<%@include file="singleproduct.jsp"%>
	</c:if>

	<c:if test="${userClickInsertProduct == true }">
		<%@include file="insertproducts.jsp"%>
	</c:if>

	<c:if test="${userClickShowCart==true}">
		<%@ include file="cart.jsp"%>
	</c:if>

	<c:if test="${userClickCheckout==true}">
		<%@ include file="checkout.jsp"%>
	</c:if>

	<c:if test="${userClickThankYou==true}">
		<%@ include file="thankyou.jsp"%>
	</c:if>

	<c:if test="${userClickCoupon==true}">
		<%@ include file="coupon.jsp"%>
	</c:if>
	<!--	footer	-->
	<%@include file="./shared/footer.jsp"%>


	<script src="${js}/cartloading.js"></script>
	<script src="https://kit.fontawesome.com/01b5877446.js" crossorigin="anonymous"></script>
</body>
</html>