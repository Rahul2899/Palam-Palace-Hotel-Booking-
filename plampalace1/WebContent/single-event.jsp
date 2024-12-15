<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Palam Palace</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">Palam <span>Palace</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>


			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a href="index.html"
					class="nav-link">Home</a></li>
				<!-- <li class="nav-item"><a href="" class="nav-link">Our Rooms</a></li> -->
				<!-- <li class="nav-item"><a href="restaurant.html" class="nav-link">Restaurant</a></li> -->

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown04"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
					<div class="dropdown-menu" aria-labelledby="dropdown04">
						<a class="dropdown-item" style="color: black;" href="rooms.html"><b>Rooms</b></a>
						<a class="dropdown-item" style="color: black;"
							href="restaurant.html"><b>Restaurant</b></a>
						<!--  <a class="dropdown-item" href="product-single.html">Single Product</a> -->
						<a class="dropdown-item" style="color: black;" href="event.html"><b>Events</b></a>

						<a class="dropdown-item" style="color: black;"
							href="transferservice.html"><b>Transfer service</b></a>
					</div> <!-- <li class="nav-item"><a href="event.html" class="nav-link">Event</a></li> -->
				<li class="nav-item"><a href="about.html" class="nav-link">About
						Us</a></li>
				<!-- <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
				<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
				<a href="login.html"
					class="tn btn-outline-primary rounded text-center"
					style="margin-top: 20px; width: 150px; height: 40px;">Sign In/
					Sign UP</a>
			</ul>
		</div>
		</div>
	</nav>
	</ul>
	</div>
	</div>
	</nav>
	<!-- END nav -->
	<div class="hero-wrap"
		style="background-image: url('images/bg_3.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text d-flex align-itemd-center justify-content-center">
				<div
					class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
					<div class="text">
						<p class="breadcrumbs mb-2">
							<span class="mr-2"><a href="index.html">Home</a></span> <span
								class="mr-2"><a href="banquet.html">${sessionScope.event.ename}</a></span>
						</p>
						<h1 class="mb-4 bread">${sessionScope.event.ename}</h1>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-md-12 ftco-animate">
							<div class="single-slider owl-carousel">
								<div class="item">
									<div class="room-img"
										style="background-image: url(images/${sessionScope.event.eimg});"></div>
								</div>
								<!-- <div class="item">
          					<div class="room-img" style="background-image: url(images/banquet2.jpg);"></div>
          				</div>
          				<div class="item">
          					<div class="room-img" style="background-image: url(images/banquet3.jpg);"></div>
          				</div> -->
							</div>
						</div>
						<div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
							<h2 class="mb-4">${sessionScope.event.ename}</h2>
							<p>${sessionScope.event.event_summary}</p>
							<div class="d-md-flex mt-5 mb-5">
								<ul class="list">
									<li><span>Max:</span> 500 Persons</li>
									<li><span>Size:</span> 5000 sqft</li>
									<li><span>Price:</span>Rs ${sessionScope.event.price}</li>
								</ul>


							</div>
							<!-- <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p> -->
						</div>

					</div>
				</div>



				<!-- loader -->
				<div id="ftco-loader" class="show fullscreen">
					<svg class="circular" width="48px" height="48px">
						<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
							stroke-width="4" stroke="#eeeeee" />
						<circle class="path" cx="24" cy="24" r="22" fill="none"
							stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
				</div>


				<script src="js/jquery.min.js"></script>
				<script src="js/jquery-migrate-3.0.1.min.js"></script>
				<script src="js/popper.min.js"></script>
				<script src="js/bootstrap.min.js"></script>
				<script src="js/jquery.easing.1.3.js"></script>
				<script src="js/jquery.waypoints.min.js"></script>
				<script src="js/jquery.stellar.min.js"></script>
				<script src="js/owl.carousel.min.js"></script>
				<script src="js/jquery.magnific-popup.min.js"></script>
				<script src="js/aos.js"></script>
				<script src="js/jquery.animateNumber.min.js"></script>
				<script src="js/bootstrap-datepicker.js"></script>
				<script src="js/scrollax.min.js"></script>
				<script
					src="https://maps.googleapis.com/maps/api/js?key=Map_api&sensor=false"></script>
				<script src="js/google-map.js"></script>
				<script src="js/main.js"></script>
</body>
</html>
