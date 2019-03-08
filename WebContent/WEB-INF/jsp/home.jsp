<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>

	<h1>Hello world!</h1>
	
	<p>The time on the server is ${serverTime}.</p>
	<p>Please login here:</p>
	<form action="user" method="post">
		<input type="text" name="userName"><br>
		<input type="text" name="password"><br>
		<input type="submit" value="Login">
	</form>
</body>
</html>