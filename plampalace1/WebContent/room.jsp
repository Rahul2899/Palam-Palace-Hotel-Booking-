<%@page import="com.model.Room"%>
<%@page import="com.model.HotelBranch"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BLManager"%>
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
			<a class="navbar-brand" style="font-size: 250%" href="index.html">Palam<span>Palace</span></a>
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
					<!--  <a href="login.html" class="tn btn-outline-primary rounded text-center" style="margin-top:20px;width:150px;height: 40px;">Sign In/ Sign UP</a> -->
				</ul>
			</div>
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
							<span class="mr-2"><a href="index.html">Home</a></span> <span></span>
						</p>
						<h1 class="mb-4 bread">Rooms</h1>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- check availability -->
	<section class="ftco-booking ftco-section ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-lg-12">
					<form action="#" class="booking-form aside-stretch">
						<div class="row">
							<div class="col-md d-flex py-md-4">
								<div
									class="form-group align-self-stretch d-flex align-items-end">
									<div class="wrap align-self-stretch py-3 px-4">
										<label for="#">Check-in Date</label> <input type="text"
											class="form-control checkin_date" placeholder="Check-in date">
									</div>
								</div>
							</div>
							<div class="col-md d-flex py-md-4">
								<div
									class="form-group align-self-stretch d-flex align-items-end">
									<div class="wrap align-self-stretch py-3 px-4">
										<label for="#">Check-out Date</label> <input type="text"
											class="form-control checkout_date"
											placeholder="Check-out date">
									</div>
								</div>
							</div>
							<div class="col-md d-flex py-md-4">
								<div
									class="form-group align-self-stretch d-flex align-items-end">
									<div class="wrap align-self-stretch py-3 px-4">
										<label for="#">Room</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">Suite</option>
													<option value="">Family Room</option>
													<option value="">Deluxe Room</option>
													<option value="">Classic Room</option>
													<option value="">Superior Room</option>
													<option value="">Luxury Room</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="col-md d-flex py-md-4">
								<div
									class="form-group align-self-stretch d-flex align-items-end">
									<div class="wrap align-self-stretch py-3 px-4">
										<label for="#">Guests</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">1</option>
													<option value="">2</option>
													<option value="">3</option>
													<option value="">4</option>
													<option value="">5</option>
													<option value="">6</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!--     <div class="col-md d-flex py-md-4">
                  <div class="form-group align-self-stretch d-flex align-items-end">
                    <div class="wrap align-self-stretch py-3 px-4">
                      <label for="#">Children</label>
                      <div class="form-field">
                        <div class="select-wrap">
                          <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                          <select name="" id="" class="form-control">
                            <option value="">0 </option>
                            <option value="">1 </option>
                            <option value="">2 </option>
                            <option value="">3 </option>
                            <option value="">4 </option>
                            <option value="">5 </option>
                            <option value="">6 </option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> -->


							<!-- <div class="col-md d-flex py-md-4">
                <div class="form-group align-self-stretch d-flex align-items-end">
                  <div class="wrap align-self-stretch py-3 px-4">
                     <label for="#">Price</label>
                      <div class="form-field">
                        <div class="select-wrap">
                          <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <div class="form-group">
                      <div class="range-slider">
                      <span>
                        <input type="number" value="25000" min="0" max="120000"/> 
                        <input type="number" value="50000" min="0" max="120000"/>
                      </span>
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div> -->


							<div class="col-md d-flex">
								<div class="form-group d-flex align-self-stretch">
									<a href="#"
										class="btn btn-primary py-5 py-md-3 px-4 align-self-stretch d-block"><span>Check
											Availability <small>Best Price Guaranteed!</small>
									</span></a>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>





	<section class="ftco-section ftco-no-pb ftco-room">
		<div class="container-fluid px-0">
			<div class="row no-gutters justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Palam Palace Rooms</span>
					<h2 class="mb-4">Hotel Master's Rooms</h2>
				</div>
			</div>
			<div class="row no-gutters">
				<c:forEach var="room" items="${sessionScope.rlist}">
					<div class="col-lg-6">

						<div class="room-wrap d-md-flex ftco-animate">
							<a href="#" class="img"
								style="background-image: url(images/${room.room_img});"></a>
							<div class="half left-arrow d-flex align-items-center">
								<div class="text p-4 text-center">
									<p class="star mb-0">
										<span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
											class="ion-ios-star"></span><span class="ion-ios-star"></span><span
											class="ion-ios-star"></span>
									</p>
									<p class="mb-0">
										<span class="price mr-1">Rs ${room.rent}</span> <span
											class="per">per night</span>
									</p>
									<h3 class="mb-3">
										<a href="#">${room.room_type.room_type} Room</a>
									</h3>
									<p class="pt-1">
										<a href="ViewSingleRoomController?rid=${room.room_id}"
											class="btn-custom px-3 py-2 rounded">View Details <span
											class="icon-long-arrow-right"></span></a>
									</p>
									<p class="pt-1">
										<a href="BookingConfirmation?rid=${room.room_id}"
											class="btn-custom px-3 py-2 rounded">Book Now<span
											class="icon-long-arrow-right"></span></a>
									</p>

								</div>
							</div>
						</div>

					</div>
				</c:forEach>
				<%-- 	<div class="col-lg-6">
					<div class="room-wrap d-md-flex ftco-animate">
						<a href="#" class="img"
							style="background-image: url(images/${room.room_img});"></a>
						<div class="half left-arrow d-flex align-items-center">
							<div class="text p-4 text-center">
								<p class="star mb-0">
									<span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span>
								</p>
								<p class="mb-0">
									<span class="price mr-1">₹15000</span> <span class="per">per
										night</span>
								</p>
								<h3 class="mb-3">
									<a href="rooms.html">Suite Room</a>
								</h3>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">View Details <span
										class="icon-long-arrow-right"></span></a>
								</p>
								<p class="pt-1">
									<a href="CheckAvailability?rid=${room.room_id}"
										class="btn-custom px-3 py-2 rounded">Book Now<span
										class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="room-wrap d-md-flex ftco-animate">
						<a href="#" class="img order-md-last"
							style="background-image: url(images/room-2.jpg);"></a>
						<div class="half right-arrow d-flex align-items-center">
							<div class="text p-4 text-center">
								<p class="star mb-0">
									<span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span>
								</p>
								<p class="mb-0">
									<span class="price mr-1">₹14000</span> <span class="per">per
										night</span>
								</p>
								<h3 class="mb-3">
									<a href="rooms.html">Family Room</a>
								</h3>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">View Details <span
										class="icon-long-arrow-right"></span></a>
								</p>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">Book Now<span
										class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="room-wrap d-md-flex ftco-animate">
						<a href="#" class="img order-md-last"
							style="background-image: url(images/room-3.jpg);"></a>
						<div class="half right-arrow d-flex align-items-center">
							<div class="text p-4 text-center">
								<p class="star mb-0">
									<span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span>
								</p>
								<p class="mb-0">
									<span class="price mr-1">₹18000</span> <span class="per">per
										night</span>
								</p>
								<h3 class="mb-3">
									<a href="rooms.html">Deluxe Room</a>
								</h3>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">View Details <span
										class="icon-long-arrow-right"></span></a>
								</p>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">Book Now<span
										class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="room-wrap d-md-flex ftco-animate">
						<a href="#" class="img"
							style="background-image: url(images/room-4.jpg);"></a>
						<div class="half left-arrow d-flex align-items-center">
							<div class="text p-4 text-center">
								<p class="star mb-0">
									<span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span>
								</p>
								<p class="mb-0">
									<span class="price mr-1">₹20000</span> <span class="per">per
										night</span>
								</p>
								<h3 class="mb-3">
									<a href="rooms.html">Luxury Room</a>
								</h3>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">View Details <span
										class="icon-long-arrow-right"></span></a>
								</p>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">Book Now<span
										class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div> --%>
				<!-- 	<div class="col-lg-6">
					<div class="room-wrap d-md-flex ftco-animate">
						<a href="#" class="img"
							style="background-image: url(images/room-5.jpg);"></a>
						<div class="half left-arrow d-flex align-items-center">
							<div class="text p-4 text-center">
								<p class="star mb-0">
									<span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span><span class="ion-ios-star"></span><span
										class="ion-ios-star"></span>
								</p>
								<p class="mb-0">
									<span class="price mr-1">₹21000</span> <span class="per">per
										night</span>
								</p>
								<h3 class="mb-3">
									<a href="rooms.html">Superior Room</a>
								</h3>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">View Details <span
										class="icon-long-arrow-right"></span></a>
								</p>
								<p class="pt-1">
									<a href="rooms-single.html"
										class="btn-custom px-3 py-2 rounded">Book Now<span
										class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div> -->
			</div>
		</div>
	</section>


	<footer class="ftco-footer ftco-section img"
		style="background-image: url(images/bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Palam Palace</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
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
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@yourdomain.com</span></a></li>
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
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>