<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save the tiger</title>
<style><%@include file="/../../css/donations-style.css"%></style>
<!-- 
<style>
* {
	background: #ccc;
}
</style>
 -->
</head>

<body>
<h1>All your donations</h1>

<p>${donations}</p>

<table>
	<tr>
	
		<td>ID</td>
		<td>Amount</td>
		<td>Project  </td>
		<td>Date  </td>
		<td>Remove</td>
	</tr>
	<c:forEach items="${donations}" var="donation">
		<tr>
		
			<td>${donation.id}</td>
			<td>${donation.amount}</td>
			<td>${donation.project}</td>
			<td>${donation.date}</td>
			<td><a href="/donations/${donation.id}">Remove</a></td>
		</tr>
	</c:forEach>	
</table>
<br>

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