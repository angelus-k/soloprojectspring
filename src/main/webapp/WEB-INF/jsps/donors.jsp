<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save the tiger</title>
<style><%@include file="/../../css/donors-style.css"%></style>
<!-- 
<style>
* {
	background: #ccc;
}
</style>
 -->
</head>

<body>
<h1>All donors</h1>

<p>${donors}</p>

<table>
	<c:forEach items="${donors}" var="donor">
		<tr>
			<td>${donor.username}</td>
			<td>${donor.email}</td>
			<td><a href="/donors/${donor.id}">Remove</a></td>
		</tr>
	</c:forEach>	
</table>
<br>

<a class="button" href="/welcome">Welcome</a>
<a class="button" href="/">Home</a>
<!-- 
<form>
	<input type="text"></input>
	<input type="text"></input>
	<input type="text"></input>
	<input type="submit"></input>
</form>
 -->
</body>

</html>