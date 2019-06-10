<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
    <%@page isELIgnored="false" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sf:form action="addcatagory" modelAttribute="cat">
<sf:input  type="hidden"  path="catagoryId"/><br>
CatagoryName<sf:input path="catagoryName"/><br>
CatagoryDescription<sf:input path="catagoryDescription"/><br>
<input type="submit" value="${buttonName}">
</sf:form>
</body>
</html>