<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

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
<script type="text/javascript">
	function askforconfirmation() {
		let x = confirm("Are you sure you want to proceed?");
		if (x == true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" style="font-size: 250%" href="index.html"><span>Palam
					Palace</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>


			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.html"
						class="nav-link">Home</a></li>
					<!-- <li class="nav-item"><a href="" class="nav-link">Our Rooms</a></li> -->
					<!-- <li class="nav-item"><a href="restaurant.html" class="nav-link">Restaurant</a></li> -->

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown04"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="rooms.html"><b>Rooms</b></a> <a
								class="dropdown-item" href="restaurant.html"><b>Restaurant</b></a>
							<!--  <a class="dropdown-item" href="product-single.html">Single Product</a> -->
							<a class="dropdown-item" href="event.html"><b>Events</b></a> <a
								class="dropdown-item" href="transferservice.html"><b>Transfer
									service</b></a>
						</div> <!-- <li class="nav-item"><a href="event.html" class="nav-link">Event</a></li> -->
					<li class="nav-item"><a href="about.html" class="nav-link">About
							Us</a></li>
					<!-- <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
					<!--   <a href="login.html" class="tn btn-outline-primary rounded text-center" style="margin-top:20px;width:150px;height: 40px;">Sign In/ Sign UP</a> -->
				</ul>
			</div>
		</div>
	</nav>
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
							<span class="mr-2"><a href="index.html">Home</a></span> <span>Restaurant</span>
						</p>
						<h1 class="mb-4 bread">Restaurant</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="heading-section">
		<h3 align="center">Book Your Table Here...</h3>
	</div>
	<div class="container-fluid">
		<form action="BookTable" onsubmit="return askforconfirmation()">
			<div class="form-group row">

				<div class="col-10">
					<select class="form-control" name="table_no">
						<option selected>Select Table no here</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-10">
					<select class="form-control" name="noofguests">
						<option selected>Select no of guests</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-10">
					<input type="date" name="rdate" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-10">
					<input type="time" class="form-control" min="11:00" max="21:00"
						name="rtime" required="required">
				</div>
			</div>

			<small>(* Charges for Table Reservation: Rs 100/- )</small><br>
			<hr>
			<div class="form-group row" align="center">
				<div class="offset-sm-2 col-sm-10">
					<input type="submit" class="btn btn-success">
				</div>
			</div>
		</form>
	</div>
	<br>
	<br>
	<br>
	<footer class="ftco-footer ftco-section img"
		style="background-image: url(images/bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Palam Palace</h2>
						<p>Singapure Best Hotel</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-5">
						<h2 class="ftco-heading-2">Useful Links</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">Blog</a></li>
							<li><a href="#" class="py-2 d-block">Rooms</a></li>
							<li><a href="#" class="py-2 d-block">Amenities</a></li>
							<li><a href="#" class="py-2 d-block">Gift Card</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Privacy</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">Career</a></li>
							<li><a href="#" class="py-2 d-block">About Us</a></li>
							<li><a href="#" class="py-2 d-block">Contact Us</a></li>
							<li><a href="#" class="py-2 d-block">Services</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">203 Fake St. Mountain View,Singapur</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+919979059132</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">PalamPalace@gmail.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
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
