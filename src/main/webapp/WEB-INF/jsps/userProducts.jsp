<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page isELIgnored="false" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
      <%@include file="userHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>


<body>


<div class="container-fluid">
  <h1>Products </h1>
    
  
 <div class="row">
 
 <c:forEach var="pro" items="${showProd}">
      <div class="col-sm-4" >
<img src="resources/product-images/${pro.productId }.jpg" alt="Laptop" width="50px" height="50px">
 
 <p>${pro.productName}<p>
 
 <p>${pro.productDescription}<p>
 
 <p>${pro.productPrice}<p>
 
 <p><a href="viewProduct?pid=${pro.productId}">ViewProduct</a><p>
  </div>
 </c:forEach> 
 
 
 
</div>
  
  </body>
</html>