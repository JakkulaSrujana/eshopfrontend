<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.srujana.eshopbackend.model.Product" %>
    <%@include file="userHeader.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@page import="java.util.List"%>
<%@page isELIgnored="false" %>
<%@page errorPage="ExceptionalHandler.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<img src="resources/product-images/${showProd.productId }.jpg" alt="Laptop" width="300px" height="300px">
 <br>
${showProd.productName}
<br>
${showProd.productDescription}
<br>
${showProd.productPrice}
<br>
${showProd.productSupplier}

<br>
 
 
 
<form action="cart">
<input type="number" name="qnum" value="0" min="1" max="5"/>
<input type="hidden" name="pid" value="${showProd.productId}"/> 
<input type="submit" value="AddToCart">
</form>
 
  </div>
 
 <a href="buyNow">BuyNow</a>

    
</body>
</html>