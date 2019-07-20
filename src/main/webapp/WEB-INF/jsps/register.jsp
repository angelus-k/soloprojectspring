<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
<style>
<%@include file="/../../css/register-style.css"%>
</style>

</head>

<body>
	<h1>Register</h1>

	<a class="button" href="/">Go Back</a>

	<!-- 
	<form action="/places" method="POST">
		<input type="text" name="city" /> <input type="text" name="country" />
		<input type="submit" value="submit" />
	</form>
	<p>	${error1}</p>
	<p> ${error2}</p>
	-->

	<div class="container">
		<div id="logbox">
			<form id="signup" method="post" action="/regsuccess">
				<h1>Create an account</h1>
				<input class="input pass" name="username" type="text"
					placeholder="What's your username?" pattern="^[\w]{3,16}$"
					autofocus="autofocus" required="required" /> 
				<input class="input pass" name="password" type="password"
					placeholder="Choose a password"  /> 
				<!-- <input class="input pass" name="user[password2]" type="password"
					placeholder="Confirm password" required="required" /> -->
				<input class="input pass" name="email" type="email"
					placeholder="Email address" /> 
				<input class="inputButton" type="submit" value="Sign me up!" />
			</form>
		</div>
	</div>
	
	
</body>

</html>