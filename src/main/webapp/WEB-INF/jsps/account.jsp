<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Account</title>
<style>
<%@include file="/../../css/account-style.css"%>
</style>

</head>

<body>
	<h1>Welcome ${donors}</h1>
	
	
	<a class="button" href="/">Go Back</a>
	<a class="button" href="/logout">Logout</a>

	<!-- 
	<form action="/places" method="POST">
		<input type="text" name="city" /> <input type="text" name="country" />
		<input type="submit" value="submit" />
	</form>-->
	
	<h1>This is my account. Here I want to have the following functions</h1>
	<ul>
		<li>View all my donations &#10003</li>
		<li>Update my user data</li>
		<li>Delete my account</li>
	</ul>
	<!-- 	<p>
		${donations}
		
		${donors}
		blablabla
	</p>
		
	
	
	<c:forEach items="${donations}" var="donation">
		<p>
			${donations}
		</p>
	</c:forEach>	
	 -->
	<table>
	<tr>
	
		<td>ID</td>
		<td>Amount</td>
		<td>Project  </td>
		<td>Date  </td>
		
		<!-- <td>Remove</td> -->
	</tr>
	<c:forEach items="${donations}" var="donation">
		<tr>
		
			<td>${donation.id}</td>
			<td>${donation.amount}</td>
			<td>${donation.project}</td>
			<td>${donation.date}</td>
			
			<!-- <td><a href="/donations/${donation.id}">Remove</a></td> -->
		</tr>
	</c:forEach>	
</table>
	
	<!-- 
	<div class="container">
		<div id="logbox">
			<form id="signup" method="post" action="/donors">
				<h1>Create an account</h1>
				<input class="input pass" name="username" type="text"
					placeholder="What's your username?" pattern="^[\w]{3,16}$"
					autofocus="autofocus" required="required" /> 
				<input class="input pass" name="password" type="password"
					placeholder="Choose a password"  /> 
				 <input class="input pass" name="user[password2]" type="password"
					placeholder="Confirm password" required="required" /> 
				<input class="input pass" name="email" type="email"
					placeholder="Email address" /> 
				<input class="inputButton" type="submit" value="Sign me up!" />
			</form>
		</div>
	</div>
	
	 -->
	
	
	
</body>

</html>