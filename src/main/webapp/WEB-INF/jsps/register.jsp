<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page isELIgnored="false" %>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<div class="container">

<sform:form class="form-inline" action="addUser" method="post" modelAttribute="user" >

 <div class="form-group">
 
 
<sform:label   for="userName" path="userName"/>User Name:
 <sform:input path="userName" class="form-control" id="userName" placeholder="Enter UserName"/>
</div>

<div class="form-group">
 <sform:label  for="email" path="email">Email:</sform:label>
  <sform:input path="email" class="form-control" id="email" placeholder="Enter Email"/>
 </div>
 <div class="form-group">
 <sform:label  for="password" path="password">Password:</sform:label>
  <sform:input path="password" class="form-control" id="password" placeholder="Enter Password"/>
 </div>
 <div class="form-group">
 <sform:label  for="mobile" path="mobile">MobileNo:</sform:label>
  <sform:input path="mobile" class="form-control" id="mobile" placeholder="Enter MobileNo"/>
 </div>
 <div class="form-group">
 <sform:label  for="address" path="address">Address:</sform:label>
  <sform:input path="address" class="form-control" id="address" placeholder="Enter address"/>
 </div>
 
 <button type="submit" class="btn btn-default">Register</button>
 
 </sform:form>

</div>
</body>
</html>




