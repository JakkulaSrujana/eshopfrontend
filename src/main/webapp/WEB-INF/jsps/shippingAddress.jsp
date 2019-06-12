<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
    <%@include file="userHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sform:form action="shipA" modelAttribute="order">
ApartmentNumber/HouseNo<sform:input path="apartmentnumber"/>
StreetName<sform:input path="streetname"/>
City<sform:input path="city"/>
State<sform:input path="state"/>
Country<sform:input path="country"/>
ZipCode<sform:input path="zipcode"/>
<input type="submit" value="next">
</sform:form>
</body>
</html>