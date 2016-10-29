<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login</h1><br>
	
	<form action="<%=request.getContextPath()%>/LoginController" method="post">
		Username : <input type="text" name="username" id="username"><br>
		Password : <input type="password" name="password" id="password"><br>
		
		<input type="submit" value="Login" id="login">
	</form>
</body>
</html>