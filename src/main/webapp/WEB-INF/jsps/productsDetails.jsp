<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.srujana.eshopbackend.model.Product" %>
   
    <%@include file="userHeader.jsp" %>
    
<%@page import="java.util.List"%>
<%@page isELIgnored="false" %>
<%@page errorPage="ExceptionalHandler.jsp" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="co" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p><img src="resources/product-images/${showProd.productId }.jpg" alt="Laptop" width="300px" height="300px">
 </p>
 
<p>${showProd.productName}</p>

<p>${showProd.productDescription}</p>

<p>${showProd.productPrice}</p>

<p>${showProd.productSupplier}</p>


 <c:if test="${productQ<5}">
<h2><c:out value="OutOfStock"></c:out></h2>
</c:if>

 
 
<form action="cart" method="post">


<input type="number" name="qnum" value="0" min="1" max="5"/>
<input type="hidden" name="pid" value="${showProd.productId}"/> 
<input type="submit" value="${b}"/>
</form>
 <a href="buyNow">BuyNow</a>

    
</body>
</html>