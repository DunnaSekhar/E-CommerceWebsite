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
	<div class="col-md-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">
			<h3> SignUp-Personal</h3>
				
			</div>
			<div class="panel-body">
			
				<sf:form class="form-horizontal" modelAttribute="user" method="POST">

						<div class="form-group">
							<label class="control-label col-md-4" for="firstname"> First Name:</label>
							<div class="col-md-8">
								<sf:input path="firstname" type="text" id="name"
									placeholder="Enter your First Name" class="form-control" />
								<sf:errors path="firstname" style="color: red" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" for="lastname"> Last Name:</label>
							<div class="col-md-8">
								<sf:input path="lastname" type="text" id="name"
									placeholder="Enter your Last Name" class="form-control" />
								<sf:errors path="lastname" style="color: red" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" for="email"> Email:</label>
							<div class="col-md-8">
								<sf:input path="email" type="text" id="name"
									placeholder="Email required" class="form-control" />
								<sf:errors path="email" style="color: red" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" for="contactNo"> Contact Number:</label>
							<div class="col-md-8">
								<sf:input path="contactNo" type="text" id="name"
									placeholder="Enter Contact Number" class="form-control" />
								<sf:errors path="contactNo" style="color: red" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" for="password"> Password:</label>
							<div class="col-md-8">
								<sf:input path="password" type="password" id="name"
									placeholder="*******" class="form-control" />
								<sf:errors path="password" style="color: red" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" for="confirmPassword">Confrim Password:</label>
							<div class="col-md-8">
								<sf:input path="confirmPassword" type="password" id="name"
									placeholder="Renter your password" class="form-control" />
								<sf:errors path="confirmPassword" style="color: red" element="em"></sf:errors>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" for="password"> Select Role:</label>
							<div class="col-md-8">
							<label class="radio-inline">
								<sf:radiobutton path="role" value="USER" checked="checked" />User
							</label>
								
								<label class="radio-inline">
								<sf:radiobutton path="role" value="SUPPLIER"/>Supplier
							</label>
							</div>
						</div>
						
		<div class="form-group">	
							<div class="col-md-offset-4 col-md-8">
								<button type="submit" class="btn btn-primary" name="_eventId_billing">
									Next
								
								</button>
							</div>
						</div>						
			</sf:form>
			
			</div>
		</div>
	</div>
</div>

<%-- <%@include file="../flows-shared/footer.jsp"%> --%>

