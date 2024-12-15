<%@page import="com.model.RoomType"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BLManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Palam Palace, Mumbai</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700&display=swap"
	rel="stylesheet">

<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>

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
	<%
		BLManager bl = new BLManager();
		List<RoomType> rt = bl.getAllRoomType();
		session.setAttribute("rt", rt);
	%>
	<!-- top-navigation
<div class="top-navigation">
	<div class="container">
		<div class="row">
			<div class="col d-flex align-items-center p-0">
				<a class="smaller d-flex align-items-center collapsed" data-toggle="collapse" data-target="#top-navigation-drawer" aria-expanded="false">
				"select property"


			</div>
			
		</div>
		
	</div>
		
</div>
 -->


	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar"">
		<div class="container">
			<a class="navbar-brand" style="font-size: 250%" href="index.jsp">Palam<span>
					Palace, Mumbai</span></a>
			<!--       <img src="images\PalamPalace .png" alt="#" style="height: 150px;"> -->

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">


					<li class="nav-item active"><a href="index.jsp"
						class="nav-link" style="color: black;">Home</a></li>
					<!-- <li class="nav-item"><a href="" class="nav-link">Our Rooms</a></li> -->
					<!-- <li class="nav-item"><a href="restaurant.html" class="nav-link">Restaurant</a></li> -->

					<!-- 	          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: black;">Select City</a>
              <div class="dropdown-menu"  aria-labelledby="dropdown04">
              <a class="dropdown-item" style="color: black;" href="rooms.html"><b>Ahmedabad</b></a>
              <a class="dropdown-item" style="color: black; " href="restaurant.html"><b>Mumbai</b></a>

              <a class="dropdown-item" style="color: black; "href="event.html"><b>Delhi</b></a>
                

              </div>		
 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown04"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						style="color: black;">Services</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" style="color: black;"
								href="fc-recom/room_list.jsp"><b>Rooms</b></a> <a
								class="dropdown-item" style="color: black;"
								href="pato-master/index.jsp"><b>Restaurant</b></a>
							<!--  <a class="dropdown-item" href="product-single.html">Single Product</a> -->
							<a class="dropdown-item" style="color: black;" href="event.jsp"><b>Events</b></a>

							<!-- <a class="dropdown-item" style="color: black;"href="transferservice.html"><b>Transfer service</b></a> -->
						</div> <!-- <li class="nav-item"><a href="event.html" class="nav-link">Event</a></li> -->
					<li class="nav-item"><a href="about.jsp" class="nav-link"
						style="color: black;">About Us</a></li>
					<!-- <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
					<li class="nav-item"><a href="contact.jsp" class="nav-link"
						style="color: black;">Contact</a></li>



					<a href="login.jsp"
						class="tn btn-outline-primary rounded text-center"
						style="margin-top: 20px; width: 150px; height: 40px;">Sign In/
						Sign UP</a>

				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	<div class="hero">
		<section class="home-slider owl-carousel">
			<div class="slider-item"
				style="background-image: url(images/hero_background.jpg);">
				<!-- <div class="overlay"></div> -->
				<div class="container-fluid">
					<div
						class="row no-gutters slider-text align-items-center justify-content-end">
						<div class="col-md-6 ftco-animate">
							<div class="text">
								<h2>More than a hotel... an experience</h2>
								<h1 class="mb-3">Hotel for the whole family, all year
									round.</h1>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="slider-item"
				style="background-image: url(images/image5.jpg);">
				<!-- <div class="overlay"></div> -->
				<div class="container">
					<div
						class="row no-gutters slider-text align-items-center justify-content-end">
						<div class="col-md-6 ftco-animate">
							<div class="text">
								<h2>Palam Palace Hotel &amp; Resort</h2>
								<h1 class="mb-3">It feels like staying in your own home.</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slider-item"
				style="background-image: url(images/image_5.jpg);">
				<!-- <div class="overlay"></div> -->
				<div class="container">
					<div
						class="row no-gutters slider-text align-items-center justify-content-end">
						<div class="col-md-6 ftco-animate">
							<div class="text">
								<h2>Palam Palace &amp; Resort</h2>
								<h1 class="mb-3">It feels like staying in your own home.</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

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
										<label for="#">Check-in Date</label> <input type="text" name="checkin_date"
											class="form-control checkin_date" placeholder="Check-in date">
									</div>
								</div>
							</div>
							<div class="col-md d-flex py-md-4">
								<div
									class="form-group align-self-stretch d-flex align-items-end">
									<div class="wrap align-self-stretch py-3 px-4">
										<label for="#">Check-out Date</label> <input type="text" name="checkout_date"
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
												<select name="roomType" id="" class="form-control">
													<option value="">Select Room Type</option>
													<c:forEach var="roomtype" items="${sessionScope.rt}">
														<option>${roomtype.room_type}</option>
													</c:forEach>
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
												<select name="noofguests" id="" class="form-control">
													<option value="">1 Adult</option>
													<option value="">2 Adult</option>
													<option value="">3 Adult</option>
													<option value="">4 Adult</option>
													<option value="">5 Adult</option>
													<option value="">6 Adult</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
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


	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Welcome to Palam Palace Hotel</span>
					<h2 class="mb-4">You'll Never Want To Leave</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services active py-4 d-block text-center">
						<div class="d-flex justify-content-center">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="ion-ios-bed"></span>
							</div>
						</div>
						<div class="media-body">
							<a href="rooms.html"><button type="button"
									class="btn btn-outline-primary"
									style="color: #198754; border-color: #198754; background-color: transparent;">Rooms</button></a>
							<!-- <h3 class="heading mb-3">Rooms</h3> -->
						</div>
					</div>
				</div>
				<!-- <div class="col-md px-md-1 d-flex align-sel Searchf-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-car"></span>
              	</div>
              </div>
              <div class="media-body">
              	<a href="transferservice.html"<button type="button" class="btn btn-outline-primary" style="color: #198754;border-color: #198754;background-color: transparent;">Transfer Services</button></a>
                <h3 class="heading mb-3">Transfer Services</h3>
              </div>
            </div>      
          </div> -->
				<div
					class="col-md px-md-1 d-flex align-sel Searchf-stretch ftco-animate">
					<div class="media block-6 services py-4 d-block text-center">
						<div class="d-flex justify-content-center">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-"></span>
								<svg xmlns="http://www.w3.org/2000/svg" width="50" height="40"
									fill="#21cc7a" class="bi bi-calendar2-event"
									viewBox="0 0 16 16">
					  <path
										d="M11 7.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
					  <path
										d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z" />
					  <path
										d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z" />
					</svg>
							</div>
						</div>
						<div class="media-body">
							<a href="event.html"><button type="button"
									class="btn btn-outline-primary"
									style="color: #198754; border-color: #198754; background-color: transparent;">Events</button></a>
							<!-- <h3 class="heading mb-3">Events</h3> -->
						</div>
					</div>
				</div>

				<div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services active py-4 d-block text-center">
						<div class="d-flex justify-content-center">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-serving-dish"></span>
							</div>
						</div>
						<div class="media-body">
							<a href="restaurant.html">
								<button type="button" class="btn btn-outline-primary"
									style="color: #198754; border-color: #198754; background-color: transparent;">Restaurant</button>
							</a>
							<!-- <h3 class="heading mb-3">Restaurant</h3> -->
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<section class="ftco-section ftco-wrap-about ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-md-7 order-md-last d-flex">
					<div class="img img-1 mr-md-2 ftco-animate"
						style="background-image: url(images/about-1.jpg);"></div>
					<div class="img img-2 ml-md-2 ftco-animate"
						style="background-image: url(images/about-2.jpg);"></div>
				</div>
				<div
					class="col-md-5 wrap-about pb-md-3 ftco-animate pr-md-5 pb-md-5 pt-md-4">
					<div class="heading-section mb-4 my-5 my-md-0">
						<span class="subheading">About Palam Palace Hotel</span>
						<h2 class="mb-4">Palam Palace Hotel the Most Recommended
							Hotel All Over the World</h2>
					</div>
					<p>Come, stay and enjoy your day.</p>
					<p>We give you a legendary welcome</p>
					<p>every time you come back</p>
					<p>The best place to be.</p>
					<p>We make the ordinary, extraordinary.</p>
					<p>The most memorable rest time starts here.</p>
					<p>We give you everything right here, where you need it.</p>
					<p>Check into another plane of existence.</p>
					<p>Facilities designed to live with joy.</p>
					<p>We aim to redefine a new dimension of luxury and relaxation.</p>
					<p>
						<a href="rooms.html" class="btn btn-secondary rounded">Reserve
							Your Room Now</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!--  <section class="testimony-section">
      <div class="container">
        <div class="row no-gutters ftco-animate justify-content-center">
        	<div class="col-md-5 d-flex">
        		<div class="testimony-img aside-stretch-2" style="background-image: url(images/testimony-img.jpg);"></div>
        	</div>
          <div class="col-md-7 py-5 pl-md-5">
          	<div class="py-md-5">
	          	<div class="heading-section ftco-animate mb-4">
	          		<span class="subheading">Feedback</span>
			          <h2 class="mb-0">Happy Customer</h2>
			        </div>
	            <div class="carousel-testimony owl-carousel ftco-animate">
	              <div class="item">
	                <div class="testimony-wrap pb-4">
	                  <div class="text">
	                    <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	                  </div>
	                  <div class="d-flex">
		                  <div class="user-img" style="background-image: url(images/person_1.jpg)">
		                  </div>
		                  <div class="pos ml-3">
		                  	<p class="name">Gerald Hodson</p>
		                    <span class="position">Businessman</span>
		                  </div>
		                </div>
	                </div>
	              </div>
	              <div class="item">
	                <div class="testimony-wrap pb-4">
	                  <div class="text">
	                    <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	                  </div>
	                  <div class="d-flex">
		                  <div class="user-img" style="background-image: url(images/person_2.jpg)">
		                  </div>
		                  <div class="pos ml-3">
		                  	<p class="name">Tom holland</p>
		                    <span class="position">Businessman</span>
		                  </div>
		                </div>
	                </div>
	              </div>
	              <div class="item">
	                <div class="testimony-wrap pb-4">
	                  <div class="text">
	                    <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	                  </div>
	                  <div class="d-flex">
		                  <div class="user-img" style="background-image: url(images/person_3.jpg)">
		                  </div>
		                  <div class="pos ml-3">
		                  	<p class="name">Gerald Hodson</p>
		                    <span class="position">Businessman</span>
		                  </div>
		                </div>
	                </div>
	              </div>
	              <div class="item">
	                <div class="testimony-wrap pb-4">
	                  <div class="text">
	                    <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
	                  </div>
	                  <div class="d-flex">
		                  <div class="user-img" style="background-image: url(images/person_4.jpg)">
		                  </div>
		                  <div class="pos ml-3">
		                  	<p class="name">Gerald Hodson</p>
		                    <span class="position">Businessman</span>
		                  </div>
		                </div>
	                </div>
	              </div>
	            </div>
	          </div>
          </div>
        </div>
      </div>
    </section>
 -->


	<!-- rooms -->

	<!-- <section class="ftco-section ftco-no-pb ftco-room">
    	<div class="container-fluid px-0">
    		<div class="row no-gutters justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Palam Palace Rooms</span>
            <h2 class="mb-4">Hotel Master's Rooms</h2>
          </div>
        </div>  
    		<div class="row no-gutters">
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img" style="background-image: url(images/room-6.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹12000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">King Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img" style="background-image: url(images/room-1.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹15000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Suite Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>

    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img order-md-last" style="background-image: url(images/room-2.jpg);"></a>
    					<div class="half right-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹14000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Family Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img order-md-last" style="background-image: url(images/room-3.jpg);"></a>
    					<div class="half right-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹18000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Deluxe Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>

    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img" style="background-image: url(images/room-4.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹20000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Luxury Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img" style="background-image: url(images/room_1.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹14500</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Suite Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img order-md-last" style="background-image: url(images/room-5.jpg);"></a>
    					<div class="half right-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹21000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Superior Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img order-md-last" style="background-image: url(images/room_2.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹16500</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Suite Room</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="rooms-single.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section> -->







	<!-- Restaurant -->

	<!-- <section class="ftco-section ftco-menu bg-light">
			<div class="container-fluid px-md-4">
				<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Restaurant</span>
            <h2>Restaurant</h2>
          </div>
        </div>
				<div class="row">
        	<div class="col-lg-6 col-xl-4 d-flex">
        		<div class="pricing-entry rounded d-flex ftco-animate">
        			<div class="img" style="background-image: url(images/menu-1.jpg);"></div>
        			<div class="desc p-4">
	        			<div class="d-md-flex text align-items-start">
	        				<h3><span>Black Current Cake</span></h3>
	        				<span class="price">₹1500</span>
	        			</div>
	        			<div class="d-block">
	        				<a href="restaurant.html" class="btn-custom px-3 py-2 rounded">Order Now
                      <span class="icon-long-arrow-right"></span>
                  </a>
	        				
	        			</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-6 col-xl-4 d-flex">
        		<div class="pricing-entry rounded d-flex ftco-animate">
        			<div class="img" style="background-image: url(images/menu-2.jpg);"></div>
        			<div class="desc p-4">
	        			<div class="d-md-flex text align-items-start">
	        				<h3><span>Banana Tawa Icecream</span></h3>
	        				<span class="price">₹750</span>
	        			</div>
	        			<div class="d-block">
	        				<a href="restaurant.html" class="btn-custom px-3 py-2 rounded">Order Now
                      <span class="icon-long-arrow-right"></span>
                  </a>
	        				
	        			</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-6 col-xl-4 d-flex">
        		<div class="pricing-entry rounded d-flex ftco-animate">
        			<div class="img" style="background-image: url(images/menu-3.jpg);"></div>
        			<div class="desc p-4">
	        			<div class="d-md-flex text align-items-start">
	        				<h3><span>Strawberry Pie</span></h3>
	        				<span class="price">₹850</span>
	        			</div>
	        			<div class="d-block">
	        				<a href="restaurant.html" class="btn-custom px-3 py-2 rounded">Order Now
                      <span class="icon-long-arrow-right"></span>
                  </a>
	        			
	        			</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-6 col-xl-4 d-flex">
        		<div class="pricing-entry rounded d-flex ftco-animate">
        			<div class="img" style="background-image: url(images/menu-4.jpg);"></div>
        			<div class="desc p-4">
	        			<div class="d-md-flex text align-items-start">
	        				<h3><span>Fry Potato kebab With Brocalli</span></h3>
	        				<span class="price">₹1050</span>
	        			</div>
	        			<div class="d-block">
	        				<a href="restaurant.html" class="btn-custom px-3 py-2 rounded">Order Now
                      <span class="icon-long-arrow-right"></span>
                  </a>
	        				
	        			</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-6 col-xl-4 d-flex">
        		<div class="pricing-entry rounded d-flex ftco-animate">
        			<div class="img" style="background-image: url(images/menu-5.jpg);"></div>
        			<div class="desc p-4">
	        			<div class="d-md-flex text align-items-start">
	        				<h3><span>Grilled Crab with Onion</span></h3>
	        				<span class="price">₹949</span>
	        			</div>
	        			<div class="d-block">
	        				<a href="restaurant.html" class="btn-custom px-3 py-2 rounded">Order Now
                      <span class="icon-long-arrow-right"></span>
                  </a>
	        				
	        			</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-6 col-xl-4 d-flex">
        		<div class="pricing-entry rounded d-flex ftco-animate">
        			<div class="img" style="background-image: url(images/menu-6.jpg);"></div>
        			<div class="desc p-4">
	        			<div class="d-md-flex text align-items-start">
	        				<h3><span>Vegitables Salad</span></h3>
	        				<span class="price">₹550</span>
	        			</div>
	        			<div class="d-block">
	        				<a href="restaurant.html" class="btn-custom px-3 py-2 rounded">Order Now
                      <span class="icon-long-arrow-right"></span>
                  </a>
	        				
	        			</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-12 text-center ftco-animate">
        		<p><a href="#" class="btn btn-primary rounded">View All Menu</a></p>
        	</div>
        </div>
			</div>
		</section> -->


	<!-- Events -->
	<!-- <section class="ftco-section ftco-no-pb ftco-room">
    	<div class="container-fluid px-0">
    		<div class="row no-gutters justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Palam Palace Rooms</span>
            <h2 class="mb-4">Events In Hotel</h2>
          </div>
        </div>  
    		<div class="row no-gutters">
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img" style="background-image: url(images/banquet.jfif);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹500000</span> <span class="per"></span></p>
	    						<h3 class="mb-3"><a href="banquet.html">Banquet</a></h3>
	    						<p class="pt-1"><a href="banquet.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="banquet.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img" style="background-image: url(images/ringCeremony.jfif);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹100000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Ring Ceremony</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="banquet.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>

    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img order-md-last" style="background-image: url(images/corporateEvent.jfif);"></a>
    					<div class="half right-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹55000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Corporate Event</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="banquet.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="room-wrap d-md-flex ftco-animate">
    					<a href="#" class="img order-md-last" style="background-image: url(images/Dance.jfif);"></a>
    					<div class="half right-arrow d-flex align-items-center">
    						<div class="text p-4 text-center">
    							<p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">₹250000</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.html">Dance</a></h3>
	    						<p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2 rounded">View Details <span class="icon-long-arrow-right"></span></a></p>
	    						<p class="pt-1"><a href="banquet.html" class="btn-custom px-3 py-2 rounded">Book Now<span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    </section> -->




	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Read Blog</span>
					<h2>Recent Blog</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_1.jpg');"> </a>
						<div class="text mt-3 text-center">
							<div class="meta mb-2">
								<div>
									<a href="#">Oct. 30, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_2.jpg');"> </a>
						<div class="text mt-3 text-center">
							<div class="meta mb-2">
								<div>
									<a href="#">Oct. 30, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_3.jpg');"> </a>
						<div class="text mt-3 text-center">
							<div class="meta mb-2">
								<div>
									<a href="#">Oct. 30, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="instagram">
		<div class="container-fluid">
			<div class="row no-gutters justify-content-center pb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading">Photos</span>
					<h2>
						<span>Instagram</span>
					</h2>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col-sm-12 col-md ftco-animate">
					<a href="images/insta-1.jpg" class="insta-img image-popup"
						style="background-image: url(images/insta-1.jpg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="images/insta-2.jpg" class="insta-img image-popup"
						style="background-image: url(images/insta-2.jpg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="images/insta-3.jpg" class="insta-img image-popup"
						style="background-image: url(images/insta-3.jpg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="images/insta-4.jpg" class="insta-img image-popup"
						style="background-image: url(images/insta-4.jpg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="images/insta-5.jpg" class="insta-img image-popup"
						style="background-image: url(images/insta-5.jpg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
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
