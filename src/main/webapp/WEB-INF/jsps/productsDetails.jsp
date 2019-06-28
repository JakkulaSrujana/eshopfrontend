<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.srujana.eshopbackend.model.Product" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
   
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

 
 <sf:form action="cart" method="post" modelAttribute="crt">
 <sf:input type="hidden" path="cartId"/>
 <sf:input type="hidden" path="productId" value="${showProd.productId}"/>
 <sf:input type="hidden" path="productName" value="${showProd.productName}"/>
 <sf:input type="hidden" path="productPrice" value="${showProd.productPrice}"/>
<sf:input type="hidden" path="productSupplier" value="${showProd.productSupplier}"/>

 <sf:input path ="quantity" type="number" name="qnum" value="0" min="1" max="5"/>
<input type="hidden" name="pid" value="${showProd.productId}"/> 
 <input type="submit" value="${b}"/>
 </sf:form>
 <a href="buyNow">BuyNow</a>

    
</body>
</html>