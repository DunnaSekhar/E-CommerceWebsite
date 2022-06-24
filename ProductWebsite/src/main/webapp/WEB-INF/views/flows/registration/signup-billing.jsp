<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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
<title>Gemini Website</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
</head>




<%@include file="../flows-shared/header.jsp"%>

<div class="container">
<div class="row">
	<div class="col-md-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3>SignUp-Address</h3>
			</div>

			<div class="panel-body">

				<sf:form class="form-horizontal" modelAttribute="billing"
					method="POST">

					<div class="form-group">
						<label class="control-label col-md-4" for="addressLineOne">Address
							Line One:</label>
						<div class="col-md-8">
							<sf:input path="addressLineOne" type="text" id="name"
								placeholder="address Line One" class="form-control" />
							<sf:errors path="addressLineOne" style="color: red" element="em"></sf:errors>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-4" for="addressLineTwo">
							Address Line Two:</label>
						<div class="col-md-8">
							<sf:input path="addressLineTwo" type="text" id="name"
								placeholder="address Line Two" class="form-control" />
							<sf:errors path="addressLineTwo" style="color: red" element="em"></sf:errors>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-4" for="city"> city:</label>
						<div class="col-md-8">
							<sf:input path="city" type="text" id="name"
								placeholder="Enter City Name" class="form-control" />
							<sf:errors path="city" style="color: red" element="em"></sf:errors>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-4" for="state">State:</label>
						<div class="col-md-8">
							<sf:input path="state" type="text" id="name"
								placeholder="Enter State" class="form-control" />
							<sf:errors path="state" style="color: red" element="em"></sf:errors>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-4" for="country">
							Country:</label>
						<div class="col-md-8">
							<sf:input path="country" type="text" id="name"
								placeholder="Enter Country name" class="form-control" />
							<sf:errors path="country" style="color: red" element="em"></sf:errors>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-4" for="postalcode">Postal
							Code:</label>
						<div class="col-md-8">
							<sf:input path="postalcode" type="text" id="name"
								placeholder="*******" class="form-control" />
							<sf:errors path="postalcode" style="color: red" element="em"></sf:errors>
						</div>
					</div>

					<div class="form-group">
						<div class="col-md-offset-4 col-md-8">
							<button type="submit" class="btn btn-primary"
								name="_eventId_personal">
								<span class="glyphicon glyphicon-chevron-left">Back -> Personal</span>
							</button>
						</div>
						<div class="col-md-offset-4 col-md-8">
							<button type="submit" class="btn btn-primary"
								name="_eventId_confirm">
								Next -> Confirm<span class="glyphicon glyphicon-chevron-right"></span>
							</button>
						</div>
					</div>
				</sf:form>

			</div>
		</div>
	</div>
</div>
</div>
<%-- <%@include file="../flows-shared/footer.jsp"%> --%>