<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donate</title>
<style><%@include file="/../../css/donate-style.css"%></style>

</head>

<body>
<h1>Donate</h1>

<!--  menu -->
	<a class="button" href="/donors">Go Back</a>
	<a class="button" href="/register">Create Account</a>
	<a class="button" href="/">Home</a>

<div class="container">
<div id="logbox">
<h2>Please enter your information</h2>
<!--  donateion form -->	
	<form id="signup" action="/account" method="POST">
	<h3>Donation</h3>
		<input name="donor" type="hidden" value="${donor.id}">  <!-- donors/${donor_id} -->
		Amount<input class="input pass" type="text" name="amount" required="required" autofocus="autofocus">
		Project<select class="input pass" name="project" required="required">
			<option value="" selected>- select -</option>
			<option value="1">Sumatran Tiger</option>
			<option value="2">Chinese Tiger</option>
			<option value="3">Tiger Genome Project</option>
		</select>	
		Date<input class="input pass" type="text" name="date" required="required">
		<!-- 
		Date<input type="date" name="date">  
		 -->
	
	<h3>Personal data</h3>
		First name:<input class="input pass" type="text" name="firstName"/>
		Last name:<input class="input pass" type="text" name="lastName"/>
		Road:<input class="input pass" type="text" name="road"/>
		House number:<input class="input pass"  type="text" name="number"/>
		Address 2:<input class="input pass" type="text" name="address2"/>
		City:<input class="input pass" type="text" name="city"/>
		ZIP-Code:<input class="input pass" type="text" name="zip"/>
		Country:<input class="input pass" type="text" name="country"/>
		Email:<input class="input pass" type="email" name="email" required="required"/>
		
		
	<h3>Payment information</h3>
		Credit Card Number:<input class="input pass" type="text" name="creditCard"/>
		Security Number<input class="input pass" type="text" name="creditSecurity"/>
		<!-- 
		<label for="expiration">Expiration date:</label>
		<input type="month" id="expiration" name="expiration" min="2019-05" value="2018-05">
		 -->
		 Expiration date
		 <select class="input pass" name="exp-month">
			<option value="0" selected>Month</option>
			<option value="1">Jan</option>
			<option value="2">Feb</option>
			<option value="3">Mar</option>
			<option value="1">Apr</option>
			<option value="2">May</option>
			<option value="3">Jun</option>
			<option value="1">Jul</option>
			<option value="2">Aug</option>
			<option value="3">Sep</option>
			<option value="1">Okt</option>
			<option value="2">Nov</option>
			<option value="3">Dez</option>
		</select>
		 
		<select class="input pass" name="exp-year">
			<option value="0" selected>Year</option>
			<option value="1">2019</option>
			<option value="2">2020</option>
			<option value="3">2021</option>
			<option value="1">2022</option>
			<option value="2">2023</option>
			<option value="3">2024</option>
			<option value="2">2025</option>
			<option value="3">2026</option>
			<option value="1">2027</option>
			<option value="2">2028</option>
			<option value="3">2029</option>
			<option value="2">2030</option>
			<option value="3">2031</option>
			<option value="1">2032</option>
			<option value="2">2033</option>
			<option value="3">2034</option>
			<option value="2">2035</option>
			<option value="3">2036</option>
			<option value="1">2037</option>
			<option value="2">2038</option>
			<option value="3">2039</option>
		</select>
		<input class="inputButton" type="submit" value="submit"/>
	</form>
</div>
</div>	
	
</body>

</html>