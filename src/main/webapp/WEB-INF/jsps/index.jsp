<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>

<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title> Save the tiger foundation - Home Page </title>
	<style><%@include file="/../../css/style.css"%></style>
	<link rel="icon" href="<%=request.getContextPath()%>/../../resources/img/TigerIcon.svg">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet"> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<body>
	
	<div class="page-wrapper">
 <div class="nav-wrapper">
  <div class="grad-bar"></div>
  <nav class="navbar">
    <img src="<%=request.getContextPath()%>/../../img/TigerIcon.svg" alt="Tiger Logo">
    <div class="menu-toggle" id="mobile-menu">
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </div>
    <ul class="nav no-search">
      <li class="nav-item"><a href="/">Home</a></li>
	  <li class="nav-item"><a href="#">About Tigers</a></li>
      <li class="nav-item"><a href="#">What We Do</a></li>
      
      <li class="nav-item">
      
      	<a href="account/${donor.id}">Account </a>
     
      </li>
      
	  <li id="btn" class="nav-item"><a type="button" id="btn" class="btn btn-default" href="/donate" value="DONATE">DONATE</a></li>
	  <li id="btn" class="nav-item"><a type="button" id="btn" class="btn btn-default" href="/register" value="JOIN">JOIN</a></li>
	  
      <button id="btn" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">LOGIN</button>
      <i class="fas fa-search" id="search-icon"></i>
      <input class="search-input" type="text" placeholder="Search..">
    </ul>
  </nav>
  </div>
  
</div>
	

	
	<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/login" method="POST">
    <div class="login-imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="<%=request.getContextPath()%>/../../img/sumatran.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="login-container">
    <input type="hidden" name="donor_id" value="${donor.id}"/>
      <label for="username"><b>Username</b></label>
      <input type="text" class="login" placeholder="Enter Username" name="username" required>

      <label for="password"><b>Password</b></label>
      <input type="password" class="login" placeholder="Enter Password" name="password" required>
        
      <button class="login" type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="login-container" style="background-color:#f1f1f1">
      <button class="login" type="button" onclick="document.getElementById('id01').style.display='none'" id="cancelbtn">Cancel</button>
      <span class="password">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
	
		
<!-- hero -->	
	<section class="hero">
		<div class="hero_content">
			<h1>SAVE THE TIGER!</h1>
			<h2>Only 2,976 tigers left in the wild.</h2>
			<a id="hero_btn" class="button donate" href="/donate">DONATE</a>
		</div>	
		<img id="hero_img" src="<%=request.getContextPath()%>/../../img/Tiger_Hero.jpg" alt="Tiger Hero Image" />
	</section>

<!-- quote -->		
	<section class="quote">
		<h1><q>The hunter has become the hunted</q> &mdash; John F. Smith</h1>
	</section>

<!-- tiles -->		
	<section class="flex">
			<div class="f1">
				<div class="card hover-zoom">
					<div class="card-image">
						<img src="<%=request.getContextPath()%>/../../img/marathon.jpg">
					</div>
					<div class="card-content">
						<h2>Fund raising marathon in Frankfurt</h2>
						<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil .</p>
						<div>
							<a href="#">Learn more</a>
						</div>
						<br><br><br><br><br><br><br><br><br><br><br><br>
					</div>		
				</div>
			</div>
			<div class="f1">
				<div class="card hover-zoom">
					<div class="card-image">
						<img src="<%=request.getContextPath()%>/../../img/tiger-cage.jpg">
					</div>
					<div class="card-content">
						<h2>Tiger saved from private ranch</h2>
						<p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et .</p>
						<div>
							<a href="#">Learn more</a>
						</div>
						<br><br><br><br><br><br><br><br><br><br><br><br>
					</div>		
				</div>
			</div>
			<div class="f2">
				<div class="card hover-zoom">
					<div class="card-image">
						<img src="<%=request.getContextPath()%>/../../img/rainforest.jpg">
					</div>
					<div class="card-content">
						<h2>1,000 square miles tiger habitat protected</h2>
						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?</p>
						<div>
							<a href="#">Learn more</a>
						</div>
						<br><br><br><br><br><br><br><br><br><br><br><br>
					</div>		
				</div>
			</div>
			<div class="f2">
				<div class="card hover-zoom">
					<div class="card-image">
						<img src="<%=request.getContextPath()%>/../../img/poacher.jpg">
					</div>
					<div class="card-content">
						<h2>Poachers arrested</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
						<div>
							<a href="#">Learn more</a>
						</div>
						<br><br><br><br><br><br><br><br><br><br><br><br>
					</div>		
				</div>
			</div>
			<div class="f1">
				<div class="card hover-zoom">
					<div class="card-image">
						<img src="<%=request.getContextPath()%>/../../img/caterpillar.jpg">
					</div>
					<div class="card-content">
						<h2>Rainforest in Panama threatened</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						<div>
							<a href="#">Learn more</a>
						</div>
						<br><br><br><br><br><br><br><br><br><br><br><br>
					</div>		
				</div>
			</div>
			<div class="f1">
				<div class="card hover-zoom">
					<div class="card-image">
						<img src="<%=request.getContextPath()%>/../../img/german-tiger.png">
					</div>
					<div class="card-content">
						<h2>German tiger endangered</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						<div>
							<a href="#">Learn more</a>
						</div>
						<br><br><br><br><br><br><br><br><br><br><br><br>
					</div>		
				</div>
			</div>
		</section>
		
<!-- TIGER FACTS -->		
		<section class="tiger-main">
			
				<div class="headline"> 
					<h1>Tigers</h1>
				</div>
				<div class="main-content">	
					
					<div class="col col--4 main-r">
						<p>
							"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
						</p>
					</div>
				</div>
				<div>
					<img src="<%=request.getContextPath()%>/../../img/Tiger_img.jpg">
				</div>
			
		</section>

<!-- TIGER 101 -->		
		<section class="tiger-101">
			<div class="headline"> 
				<h1>Tiger 101</h1>
			</div>
			<div class="container">		
				<div class="col col--6">
					<div class="card">
						<div class="tiger-image">
							<img src="<%=request.getContextPath()%>/../../img/desert.jpg">
						</div>
						<div class="card-content">
							<div>	
							<h2>Tiger habitat</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<p>
							</div>
						</div>	
					</div>
					<div class="card">
						<div class="tiger-image">
							<img src="<%=request.getContextPath()%>/../../img/desert.jpg">
						</div>
						<div class="card-content">					
							<h2>Tiger habitat</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<p>
						</div>	
					</div>
					<div class="card">
						<div class="tiger-image">
							<img src="<%=request.getContextPath()%>/../../img/desert.jpg">
						</div>
						<div class="card-content">					
							<h2>Tiger habitat</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<p>
						</div>	
					</div>
				</div>
				<div class="col col--6">
					<div class="card">
						<div class="tiger-image">
							<img src="<%=request.getContextPath()%>/../../img/desert.jpg">
						</div>
						<div class="card-content">					
							<h2>Tiger habitat</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<p>
						</div>	
					</div>
					<div class="card">
						<div class="tiger-image">
							<img src="<%=request.getContextPath()%>/../../img/desert.jpg">
						</div>
						<div class="card-content">					
							<h2>Tiger habitat</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<p>
						</div>	
					</div>
					<div class="card">
						<div class="tiger-image">
							<img src="<%=request.getContextPath()%>/../../img/desert.jpg">
						</div>
						<div class="card-content">					
							<h2>Tiger habitat</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<p>
						</div>	
					</div>
				</div>
			</div>
		</section>

<!-- TIGER SPECIES -->		
		<section class="tiger-species">
			<div class="row">
				<div class="headline">
					<h1>Tiger Species<h1>
				</div>	
			</div>
			<div class="row">
			<div class="container">
				  <div class="slides">
					<div id="slide-1">
						<div class="slide-image">
							<img src="<%=request.getContextPath()%>/../../img/sumatran.jpg">
						</div>
						<div class="card-content">					
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.
							<br><br>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
						</div>	
					</div>
					<div id="slide-2">
						<div class="slide-image">
							<img src="<%=request.getContextPath()%>/../../img/indochinese.jpg">
						</div>
						<div class="card-content">					
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.
							<br><br>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
						</div>
					</div>
					<div id="slide-3">
						<div class="slide-image">
							<img src="<%=request.getContextPath()%>/../../img/malayan.jpg">
						</div>
						<div class="card-content">					
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.
							<br><br>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
						</div>
					</div>
					<div id="slide-4">
						<div class="slide-image">
							<img src="<%=request.getContextPath()%>/../../img/southchinese.jpg">
						</div>
						<div class="card-content">					
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.
							<br><br>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
						</div>
					</div>
					<div id="slide-5">
						<div class="slide-image">
							<img src="<%=request.getContextPath()%>/../../img/caspian.jpg">
						</div>
						<div class="card-content">					
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.
							<br><br>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
						</div>
					</div>
				  </div>
				  <div class="controls">
					  <a href="#slide-1">1</a>
					  <a href="#slide-2">2</a>
					  <a href="#slide-3">3</a>
					  <a href="#slide-4">4</a>
					  <a href="#slide-5">5</a>
				  </div>
				</div>
			</div>
			</div>
		</section>

<!-- SUPPORT -->			
		
		
		
		
		<section class="help--ligt-grey-bg">
			
			<div class="row">
				<div class="col col--4">
					<div class="info-card info-card--green">
						<h2 class="info-card_title">Our partners</h2>
						<br>
						<p class="info-card_text">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						</p>
						<br>
						<a class="button" href="applyNow.html">Learn more</a>
					</div>
				</div>
				<div class="col col--4">
					<div class="info-card info-card--orange">
						<h2 class="info-card_title">Our experts</h2>
						<br>
						<p class="info-card_text">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						</p>
						<br>
						<a class="button" href="applyNow.html">Learn more</a>
					</div>
				</div>
				
				<div class="col col--4 col--last">
					<div class="info-card info-card--blue">
						<h2 class="info-card_title">Get involved</h2>
						<br>
						<p class="info-card_text">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						</p>
						<br>
						<a class="button" href="applyNow.html">Learn more</a>
					</div>
				</div>
			</div>
		</section>

		
<!-- FOOTER -->
	<section class="social">
		<div class="row social">
			<div class="footer-social-icons">
				<a href="#" class="icon-button twitter"><i class="fab fa-twitter"></i></i><span></span></a>
				<a href="#" class="icon-button facebook"><i class="fab fa-facebook-f"></i><span></span></a>
				<a href="#" class="icon-button google-plus"><i class="fab fa-google"></i></i><span></span></a>
				<a href="#" class="icon-button youtube"><i class="fab fa-youtube"></i><span></span></a>
				<a href="#" class="icon-button pinterest"><i class="fab fa-pinterest"></i><span></span></a>
			</div>
		</div>
	</section>
	<section class="footer">
		<div class="row">
			<a class="button donate" href="/donate">DONATE</a>
			<a id="soso" class="button donate" href="/register">JOIN</a>	
			<!-- 
			<button class="button donate">DONATE</button>
			 
			<button class="button join" href="/register">JOIN</button>
			-->
		</div>
		<div class="row">
			<p>Save the tiger&reg; is a registered charity in Frankfurt, Germany. 
				<br>
				Photos and graphics&copy; used with permission.
				<br>Save the tiger&reg; is a registered Trademark.</p>
		</div>
	</section>	
	
<!--  JAVA SCRIPT -->	

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>	
<!--  JAVA SCRIPT  - NAVBAR -->	
<script>

$("#search-icon").click(function() {
  $(".nav").toggleClass("search");
  $(".nav").toggleClass("no-search");
  $(".search-input").toggleClass("search-active");
});

$('.menu-toggle').click(function(){
   $(".nav").toggleClass("mobile-nav");
   $(this).toggleClass("is-active");
});


</script>
	
</body>