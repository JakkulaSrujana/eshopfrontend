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
<sf:form action="addsupplier" modelAttribute="sup">
<sf:input type="hidden" path="supplierId"/>
SupplierName<sf:input path="supplierName"/>
SupplierDescription<sf:input path="supplierDescription"/>
SupplierAddress<sf:input path="supplierAddress"/>
<input type="submit" value="${buttonName }">
</sf:form>
</body>
</html>