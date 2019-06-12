<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>
    <%@ include file="userHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p>${uo.date}</p>
<p>${uo.grandTotal }</p>
<p>${uo.user.shippingAdress.apartmentnumber }
${uo.user.shippingAdress.streetname }
${uo.user.shippingAdress.city }
${uo.user.shippingAdress.state }
${uo.user.shippingAdress.country }
${uo.user.shippingAdress.zipcode }</p>
<p>${uo.user.email}
${uo.user.userName}
${uo.user.mobile}
</p>
    


</body>
</html>