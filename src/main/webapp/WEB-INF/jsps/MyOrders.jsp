<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
    <%@include file="userHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>DateOfPurchase</th>
<th>GrandTotal</th>
<th>UserName</th>
<th>Address</th>
</tr>

<c:forEach var="var" items="${my}">
<tr>
<td>${var.date }</td>
<td>${var.grandTotal }</td>
<td>${var.user.userName }</td>
<td> ${var.shippingAdress.city}</td>
</tr>
</c:forEach>
</table>
</body>
</html>