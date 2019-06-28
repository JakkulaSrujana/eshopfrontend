<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
    <%@page isELIgnored="false" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>CatagoryPage</title>
</head>
<body>
<div class="container">  
<sf:form class="form-group" action="addcatagory" modelAttribute="cat">
<p><sf:input  type="hidden"  path="catagoryId"/></p>
<p>CatagoryName : <sf:input path="catagoryName"/></p>
<p>CatagoryDescription : <sf:input path="catagoryDescription"/></p>
<p><input type="submit" value="${buttonName}"></p>
</sf:form>
</div>
</body>
</html>