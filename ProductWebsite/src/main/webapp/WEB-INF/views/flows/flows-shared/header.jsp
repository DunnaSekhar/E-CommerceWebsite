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
<%-- <link href="${css}/bootstrap.css" rel="stylesheet" /> --%>
</head>

<body class="goto-here">
	
	<div class="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top role="navigation">
		<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${flowExecutionUrl}&_eventId=home">Home</a>
		
		</div>
		
		</div>
		
		</nav>
	
	</div>
