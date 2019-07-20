<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
<style><%@include file="/../../css/register-style.css"%></style>

</head>

<body>
<h1>Welcome</h1>

	<a class="button" href="/donors">Go Back</a>
	<a class="button" href="/register">Create Account</a>
	<a class="button" href="/">Home</a>
	<a class="button" href="/donate">Donate</a>
	
	<form action="/donors" method="POST">
		<input type="text" name="city"/>
		<input type="text" name="country"/>
		<input type="submit" value="submit"/>
	</form>
	
	
</body>

</html>