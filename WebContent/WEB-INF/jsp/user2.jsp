<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reincercati logarea!</title>
</head>
<body>
<h1>Hello world!</h1>
	
	<p>The time on the server is ${serverTime}.</p>
	<p>Please login here:</p>
	<form action="login" method="post">
		<input type="text" name="userName"><br>
		<input type="text" name="passwordNew"><br>
		<input type="submit" value="Login">
	</form>
</body>
</html>