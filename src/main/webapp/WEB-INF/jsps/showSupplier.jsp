<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>SupplierId</th>
<th>SupplierName</th>
<th>SupplierDescription</th>
<th>SupplierAddress</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<c:forEach var="sup" items="${showSupplier}">
 <tr>
   <td> ${sup.supplierId}</td>
 
   <td> ${sup.supplierName}</td>
 
    <td> ${sup.supplierDescription} </td>
    <td>${sup.supplierAddress} </td>
    <td><a href="update?supId=${sup.supplierId}">Edit</a></td>
     <td><a href="del?supId=${sup.supplierId}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
</body>
</html>