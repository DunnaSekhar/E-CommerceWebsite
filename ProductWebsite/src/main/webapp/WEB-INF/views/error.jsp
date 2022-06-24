<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
  <spring:url var="css" value="/resource/css"/>
  <spring:url var="js" value="/resource/js"/>
    <spring:url var="images" value="/resource/images"/>
    <c:set var="contextRoot" value="${pageContext.request.contextPath}"/> 
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>${title}</title>
      
      <script>
        window.menu='${title}';
      	window.contextRoot='${contextRoot}';
      </script>
      
      
      
       <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${css}/styles.css" rel="stylesheet" />
         <link href="${css}/bootstrap.min.css" rel="stylesheet" />
         <link href="${css}/bootstrap.css" rel="stylesheet" />       
          <link href="${css}/dataTables.css" rel="stylesheet" />
         
         <script src="${js}/Jquery.min.js"></script>
 
    	<script src="${js}/bootstrap.min.js"></script>
    	<script src="${js}/dataTables.js"></script>
      
    	
    </head>
    
    
    <body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-lg-5">
            
            <a class="navbar-brand" href="${contextRoot}/home">RedirectToHome</a>
            
            </div>
            </nav>
   
   <div class="content">
   	<div class="container">
   		<div class="row">
   		<div class="col-xs-12">
   				<div class="jumbotron">
   				<h2>${errorTitle}</h2>   				
   				</div>
   				<blockquote>
   					${errorDescription}
   				</blockquote>
   				</div>
   		</div>
   	</div>
   </div>
        
        <!-- Footer-->
		 <%@include file="./shared/footer.jsp" %>

    </body>
</html>
