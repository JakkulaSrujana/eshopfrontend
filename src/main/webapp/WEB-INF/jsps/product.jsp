<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sf:form action="addproduct" method="post" modelAttribute="pro" enctype="multipart/form-data" >
<sf:input  type="hidden" path="productId"/><br>
ProductName<sf:input path="productName"/><br>
ProductDescription<sf:input path="productDescription"/><br>
ProduuctPrice<sf:input path="productPrice"/><br>
ProdutcCatagory<sf:input path="productCatagory"/>
<sf:select path="productCatagory">
<c:forEach items="${catagoryList}" var="cat">
   <sf:option value="${cat.catagoryName}">${cat.catagoryName}</sf:option>
  </c:forEach>
</sf:select>
ProductSupplier<sf:input path="productSupplier"/>
<sf:select path="productSupplier">
<c:forEach items="${supplierList}" var="sup">
 <sf:option value="${sup.supplierName}">${sup.supplierName}</sf:option>
 </c:forEach>
</sf:select><br>
ProductImage<sf:input type="file" path="proImage"/>
<input type="submit" value="${buttonName}">
</sf:form>
</body>
</html>