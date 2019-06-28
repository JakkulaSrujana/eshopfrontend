<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<script type="text/javascript">
function check() {
	
	var name=document.forms["fm"]["em"].value;
	var passwrd=document.forms["fm"]["pw"].value;
	if(name=""){
		alert("user name should be filled");
		return false;
	}
	else
		{
			if(passwrd.length>8&&passwrd.length<=15)
				{
					return true;
				}
			else
				{
				alert("password should be atleast 8 characters and less than 15 characters");
				return false;
				}
		}
		
	
	
}

</script>
<sf:form action="login" name="fm"  modelAttribute="user" onsubmit="return check()" method="POST">

Email<sf:input path="email" name="em"/>
password<sf:input path="password" name="pw"/>
<input type="submit" value="Login"/>

</sf:form>


</body>
</html>