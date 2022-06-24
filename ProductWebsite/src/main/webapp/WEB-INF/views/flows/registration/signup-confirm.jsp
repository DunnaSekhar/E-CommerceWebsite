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
<div class="row">
	<div class="col-md-6 ">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3>Personal Confirmation Window</h3>

			</div>
			<div class="panel-body">

				<div class="text-center">
					<h3>
						Name:<strong>${registerModel.user.firstname}
							${registerModel.user.lastname}</strong>
					</h3>
					<h3>
						Email:<strong>${registerModel.user.email}</strong>
					</h3>
					<h3>
						Contact Number:<strong>${registerModel.user.contactNo}</strong>
					</h3>
					<h3>
						Role:<strong>${registerModel.user.role}</strong>
					</h3>

					<p>
						<a href="${flowExecutionUrl}&_eventId_personal"
							class="btn btn-primary">Edit Personal</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-6 ">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3>Billing Confirmation Window</h3>

			</div>
			<div class="panel-body">
				<div class="text-center">
				<h3><strong>${registerModel.billing.addressLineOne},</strong></h3>
				<h3><strong>${registerModel.billing.addressLineTwo},</strong></h3>
				<h3><strong>${registerModel.billing.city},${registerModel.billing.postalcode}</strong></h3>
				<h3><strong>${registerModel.billing.state},</strong></h3>
				<h3><strong>${registerModel.billing.country}</strong></h3>
								
					<p><a href="${flowExecutionUrl}&_eventId_billing"
						class="btn btn-primary">Edit Billing</a></p>
				</div>			
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-4 col-sm-offset-4">
		<div class="text-center">
			<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary">Submit</a>
		</div>
	</div>
</div>
<%-- <%@include file="../flows-shared/footer.jsp"%> --%>

