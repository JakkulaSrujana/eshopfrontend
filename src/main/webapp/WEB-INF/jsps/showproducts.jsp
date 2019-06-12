<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page isELIgnored="false" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
      <%@include file="adminHeader.jsp" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>ProductId</th>
<th>ProductName</th>
<th>ProductDescription</th>
<th>ProductPrice</th>
<th>ProductCatagory</th>
<th>ProductSupplier</th>
<th>Update</th>
<th>Delete</th>
<th>ProductImage</th>
<th>ProductQuantity</th>

</tr>

<c:forEach var="pro" items="${showpro}">
 <tr>
   <td> ${pro.productId}</td>
 <td> ${pro.productName}</td>
 <td>${pro.productDescription}</td>
    <td>${pro.productPrice}</td>
    <td>${pro.productCatagory}</td>
    <td>${pro.productSupplier}</td>
    
    <td><a href="up?proId=${pro.productId}">Edit</a></td>
     <td><a href="de?proId=${pro.productId}">Delete</a></td>
     <td><img src="resources/product-images/${pro.productId }.jpg" alt="Laptop" width="50px" height="50px"></td>
     <td>${pro.quantity}</td>
    
    </tr>
    </c:forEach>
    </table>
</body>
</html>