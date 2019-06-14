<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@include file="userHeader.jsp" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>CartId</th>
<th>ProductId</th>
<th>ProductName</th>
<th>ProductSupplier</th>
<th>Quantity</th>
<th>TotalPrice</th>
<th>UserName</th>
<th>Edit</th>
<th>Delete</th>
<th>Image</th>

</tr>
<c:forEach var="cart" items="${cart}">
 <tr>
 
   <td> ${cart.cartId}</td>
 
   <td> ${cart.productId}</td>
 
    <td>${cart.productName}</td>
    <td>${cart.productSupplier}</td>
     <td>${cart.quantity}</td>
       
     <td>${cart. totalPrice }</td>
     <c:set var="grandTotal" value="${grandTotal+cart.totalPrice}"/>
     
   
     <td>${cart.userName }</td>
     
    <td><a href="u?cartId=${cart.cartId}">Edit</a></td>
     <td><a href="d?cartId=${cart.cartId}">Delete</a></td>
      <td><img src="resources/product-images/${cart.productId }.jpg" alt="Laptop" width="50px" height="50px">
    </tr>
       
    </c:forEach>
    </table>
   <c:out value="GrandTotal=${grandTotal}"></c:out><br>
   <p><a href="continue">ContinueShopping</a></p>
   <p><a href="placeorder">PlaceOrder</a></p>
   
    
  
</body>
</html>