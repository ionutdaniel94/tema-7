<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
</head>
<body>
       
       
       <%
	if (request.getAttribute("password").equals("parola")) {
	
	%>
	   <h3>Hello ${userName}, tocmai v-ati logat!</h3>
	<%
	} else {	
	%>
	   <span>Parola Gresita! Schimba parola apasand buton de mai jos.</span> <br/>
       <form action="LostPassword" method="post">
		<input type="submit" value="Lost Password">
	</form>
	<% 
	}
	%>
</body>
</html>
