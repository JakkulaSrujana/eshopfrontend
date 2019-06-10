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
<th>CatagoryId</th>
<th>CatagoryName</th>
<th>CatgoryDescription</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<c:forEach var="cat" items="${showCatagory}">
 <tr>
   <td> ${cat.catagoryId}</td>
 
   <td> ${cat.catagoryName}</td>
 
    <td>${cat.catagoryDescription}</td>
    <td><a href="edit?catId=${cat.catagoryId}">Edit</a></td>
     <td><a href="delete?catId=${cat.catagoryId}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
</body>
</html>