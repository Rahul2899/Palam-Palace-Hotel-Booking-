<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="hotel, bed and breakfast, accommodations, travel, motel">
    <meta name="description" content="FC Recom - Hotel and Bed&amp;Breakfast">
    <meta name="author" content="Ansonika">
    <title>Palam Palace</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">
    
    <!-- SPECIFIC CSS -->
    <link rel="stylesheet" type="text/css" href="css/DateTimePicker.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!--[if lte IE 8]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
    <![endif]-->
    
    <div class="layer"></div>
    <!-- Mobile menu overlay mask -->
    
    <div id="preloader">
        <div data-loader="circle-side"></div>
    </div><!-- End Preload -->
    
     <!-- Header ================================================== -->
    <header>
    <div class="container">
        <div class="row">
            <div class="col--md-3 col-sm-3 col-xs-3">
                <a href="index.jsp" id="logo">
                <img src="img/logo.png" width="190" height="23" alt="" data-retina="true">
                </a>
            </div>
            <nav class="col--md-9 col-sm-9 col-xs-9">
            <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
            <ul id="lang_top">
                <li><a href="#" class="active">EN</a></li>
                <li><a href="#">FR</a></li>
                <li><a href="#">ES</a></li>
            </ul>
            <div class="main-menu">
                <div id="header_menu">
                     <img src="img/logo_m.png" width="141" height="40" alt="" data-retina="true">
                </div>
                <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                 <ul>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Home<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="index.html">Home Booking</a></li>
                        <li><a href="index_5.html">Home Booking date 2</a></li>
                        <li><a href="index_4.html">Home Carousel</a></li>
                        <li><a href="index_2.html">Home Layer Slider</a></li>
                        <li><a href="index_6.html">Home Video bg</a></li>
                        <li><a href="index_3.html">Home Text Rotator</a></li>
                    </ul>
                    </li>
                    <li><a href="room_list.jsp">Rooms</a></li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Pages<i class="icon-down-open-mini"></i></a>
                    <ul>
                    	<li><a href="header_2/index.html">Header transparent</a></li>
                    	<li><a href="room_detail.html">Room detail</a></li>
                        <li><a href="room_detail_2.html">Room detail date 2</a></li>
                        <li><a href="about.html">About us</a></li>
                        <li><a href="faq.html">Faq</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="coming_soon/index.html">Site launch/Coming soon</a></li>
                        <li><a href="shortcodes.html">Shortcodes</a></li>
                        <li><a href="icon_pack_1.html">Icon pack 1</a></li>
                         <li><a href="icon_pack_2.html">Icon pack 2</a></li>
                        <li><a href="icon_pack_3.html">Icon pack 3</a></li>
                    </ul>
                    </li>
                    <li><a href="contacts.html">Contacts</a></li>
                </ul>
            </div><!-- End main-menu -->
            
            </nav>
        </div><!-- End row -->
    </div><!-- End container -->
    </header>
    <!-- End Header =============================================== -->
    
	<!-- SubHeader =============================================== -->
    <div class="parallax-window" id="booking" data-parallax="scroll" data-image-src="img/sub_header_home.jpg" data-natural-width="1400" data-natural-height="550">
        <div id="subheader_home">
            <div id="sub_content">
                <div id="book_container">
                    <form method="post" action="assets/check_avail_home.php" id="check_avail_home" autocomplete="off">
                        <div id="group_1">
                            <div id="container_1">
                                <label>Arrival date</label>
                            	<input class="startDate1 form-control datepick" type="text" data-field="date" data-startend="start" data-startendelem=".endDate1" readonly placeholder="Arrival" id="check_in" name="check_in">
                                <span class="input-icon"><i class="icon-calendar-7"></i></span>
                            </div>
                            <div id="container_2">
                                <label>Departure date</label>
                                 <input class="endDate1 form-control datepick" type="text" data-field="date" data-startend="end" data-startendelem=".startDate1" readonly placeholder="Departure" id="check_out" name="check_out" >
                                <span class="input-icon"><i class="icon-calendar-7"></i></span>
                            </div>
                        </div><!-- End group_1 -->
                        <div id="group_2">
                            <div id="container_3">
                                <label>Adults</label>
                                <div class="qty-buttons">
                                    <input type="button" value="-" class="qtyminus" name="adults">
                                    <input type="text" name="adults" id="adults" value="" class="qty form-control" placeholder="0">
                                    <input type="button" value="+" class="qtyplus" name="adults">
                                </div>
                            </div>
                            <div id="container_4">
                                <label>Children</label>
                                <div class="qty-buttons">
                                    <input type="button" value="-" class="qtyminus" name="children">
                                    <input type="text" name="children" id="children" value="" class="qty form-control" placeholder="0">
                                    <input type="button" value="+" class="qtyplus" name="children">
                                </div>
                            </div>
                        </div><!-- End group_2 -->
                        <div id="group_3">
                            <div id="container_5">
                                <label>Name</label>
                                <input type="text" class="form-control" name="name_booking" id="name_booking" placeholder="Name and Last name">
                            </div>
                            <div id="container_6">
                                <label>Email</label>
                                <input type="text" class="form-control" name="email_booking" id="email_booking" placeholder="Your email">
                            </div>
                        </div><!-- End group_3 -->
                        <div id="container_7">
                            <input type="submit" value="Check availability" class="btn_1" id="submit-booking">
                        </div>
                    </form>
                    <div id="message-booking"></div>
                </div><!-- End book_container -->
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </div><!-- End parallax-window -->
    <!-- End SubHeader ============================================ -->
            
    <div class="container margin_60_35">
        <h1 class="main_title"><em></em>Welcome to Recom <span>Hotel and Bed&amp;Breakfast</span></h1>
        <p class="lead styled">
            Usu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestie. Sed ad debet scaevola, ne mel lorem legendos. Unum etiam cum te, an elit assueverit vix, falli aliquam complectitur ex ius.
        </p>
        <div class="row">
            <div class="col-sm-6">
                <div class="mosaic_container">
                    <img src="img/mosaic_1.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2">Nice Outdoor</span>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12">
                    <div class="mosaic_container">
                        <img src="img/mosaic_2.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2">Large Bedroom</span>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="mosaic_container">
                        <img src="img/mosaic_3.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2">Modern Bathroom</span>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="mosaic_container">
                        <img src="img/mosaic_4.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2">Wellness</span>
                    </div>
                </div>
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
    
    <div class="container_styled_1">
        <div class="container margin_60">
            <div class="row">
                <div class="col-md-5 col-md-offset-1">
                    <figure class="room_pic"><a href="#"><img src="img/room_home_1.jpg" alt="" class="img-responsive"></a><span class="wow zoomIn" data-wow-delay="0.2s"><sup>$</sup>140<small>Per night</small></span></figure>
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <div class="room_desc_home">
                        <h3>Single Room </h3>
                        <p>
                             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
                        </p>
                        <ul>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_2_icon-104"></i></span>
                                <div class="tooltip-content">
                                    King size bed
                                </div>
                            </div>
                            </li>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_2_icon-118"></i></span>
                                <div class="tooltip-content">
                                    Shower
                                </div>
                            </div>
                            </li>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_2_icon-116"></i></span>
                                <div class="tooltip-content">
                                    Plasma TV
                                </div>
                            </div>
                            </li>
                        </ul>
                        <a href="room_list.html" class="btn_1_outline">Read more</a>
                    </div><!-- End room_desc_home -->
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div><!-- End container_styled_1 -->
    
    <div class="container margin_60">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 col-md-push-5">
                  <figure class="room_pic left"><a href="#"><img src="img/room_home_3.jpg" alt="" class="img-responsive"></a><span class="wow zoomIn" data-wow-delay="0.2s"><sup>$</sup>180<small>Per night</small></span></figure>
            </div>
            <div class="col-md-4 col-md-offset-1 col-md-pull-6">
                <div class="room_desc_home">
                    <h3>Double Room </h3>
                    <p>
                         Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
                    </p>
                    <ul>
                        <li>
                        <div class="tooltip_styled tooltip-effect-4">
                            <span class="tooltip-item"><i class="icon_set_2_icon-104"></i></span>
                            <div class="tooltip-content">
                                King size bed
                            </div>
                        </div>
                        </li>
                        <li>
                        <div class="tooltip_styled tooltip-effect-4">
                            <span class="tooltip-item"><i class="icon_set_2_icon-111"></i></span>
                            <div class="tooltip-content">
                                Bathtub
                            </div>
                        </div>
                        </li>
                        <li>
                        <div class="tooltip_styled tooltip-effect-4">
                            <span class="tooltip-item"><i class="icon_set_2_icon-116"></i></span>
                            <div class="tooltip-content">
                                Plasma TV
                            </div>
                        </div>
                        </li>
                        <li>
                        <div class="tooltip_styled tooltip-effect-4">
                            <span class="tooltip-item"><i class="icon_set_2_icon-106"></i></span>
                            <div class="tooltip-content">
                                Safe box
                            </div>
                        </div>
                        </li>
                    </ul>
                    <a href="room_list.html" class="btn_1_outline">Read more</a>
                </div><!-- End room_desc_home -->
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
    
    <div class="container_styled_1">
        <div class="container margin_60">
            <div class="row">
                <div class="col-md-5 col-md-offset-1">
                    <figure class="room_pic"><a href="#"><img src="img/room_home_2.jpg" alt="" class="img-responsive"></a><span class="wow zoomIn" data-wow-delay="0.2s"><sup>$</sup>200<small>Per night</small></span></figure>
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <div class="room_desc_home">
                        <h3>Suite Room </h3>
                        <p>
                             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
                        </p>
                        <ul>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_2_icon-104"></i></span>
                                <div class="tooltip-content">
                                    King size bed
                                </div>
                            </div>
                            </li>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_2_icon-111"></i></span>
                                <div class="tooltip-content">
                                    Bathtub
                                </div>
                            </div>
                            </li>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_2_icon-116"></i></span>
                                <div class="tooltip-content">
                                    Plasma TV
                                </div>
                            </div>
                            </li>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_1_icon-15"></i></span>
                                <div class="tooltip-content">
                                    Welcome bottle
                                </div>
                            </div>
                            </li>
                            <li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="icon_set_2_icon-106"></i></span>
                                <div class="tooltip-content">
                                    Safe box
                                </div>
                            </div>
                            </li>
                        </ul>
                        <a href="room_list.html" class="btn_1_outline">Read more</a>
                    </div><!-- End room_desc_home -->
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div><!-- End container_styled_1 -->
    
    <section class="promo_full">
    <div class="promo_full_wp">
        <div>
            <h3>What Clients say<span>Id tale utinam ius, an mei omnium recusabo iracundia.</span></h3>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="carousel_testimonials">
                        
                            <div>
                                <div class="box_overlay">
                                    <div class="pic">
                                        <figure><img src="img/testimonial_1.jpg" alt="" class="img-circle"></figure>
                                        <h4>Roberta<small>12 October 2015</small></h4>
                                    </div>
                                    <div class="comment">
                                        "Mea ad postea meliore fuisset. Timeam repudiare id eum, ex paulo dictas elaboraret sed, mel cu unum nostrud. No nam indoctum accommodare, vix ei discere civibus philosophia. Vis ea dicant diceret ocurreret."
                                    </div>
                                </div><!-- End box_overlay -->
                            </div>
                            
                            <div>
                                <div class="box_overlay">
                                    <div class="pic">
                                        <figure><img src="img/testimonial_1.jpg" alt="" class="img-circle"></figure>
                                        <h4>Roberta<small>12 October 2015</small></h4>
                                    </div>
                                    <div class="comment">
                                        "Mea ad postea meliore fuisset. Timeam repudiare id eum, ex paulo dictas elaboraret sed, mel cu unum nostrud. No nam indoctum accommodare, vix ei discere civibus philosophia. Vis ea dicant diceret ocurreret."
                                    </div>
                                </div><!-- End box_overlay -->
                            </div>
                            
                            <div>
                                <div class="box_overlay">
                                    <div class="pic">
                                        <figure><img src="img/testimonial_1.jpg" alt="" class="img-circle"></figure>
                                        <h4>Roberta<small>12 October 2015</small></h4>
                                    </div>
                                    <div class="comment">
                                        "Mea ad postea meliore fuisset. Timeam repudiare id eum, ex paulo dictas elaboraret sed, mel cu unum nostrud. No nam indoctum accommodare, vix ei discere civibus philosophia. Vis ea dicant diceret ocurreret."
                                    </div>
                                </div><!-- End box_overlay -->
                            </div>
                            
                        </div><!-- End carousel_testimonials -->
                    </div><!-- End col-md-8 -->
                </div><!-- End row -->
            </div><!-- End container -->
        </div><!-- End promo_full_wp -->
    </div><!-- End promo_full -->
    </section><!-- End section -->    
    
    <div id="dtBox"></div><!-- End datepicker -->
    
     <footer >
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <img src="img/logo_footer.png" width="141" height="40" alt="" id="logo_footer" data-retina="true">
					<ul id="contact_details_footer">
          				<li>Route de Sablet 1023, Marseille<br>France 01920</li>
                        <li><a href="tel://004542344599">+45 423 445 998</a> / <a href="#0"><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script></a></li>
                    </ul>  
                </div>
                <div class="col-md-2 col-sm-4">
                    <h3>About</h3>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Rooms</a></li>
                        <li><a href="#">Activities</a></li>
                        <li><a href="#">Contact us</a></li>
                         <li><a href="#">Gallery</a></li>
                    </ul>
                </div>                
                <div class="col-md-3 col-sm-4">
                    <h3>Change language</h3>
                   <ul>
                        <li><a href="#">English</a></li>
                        <li><a href="#">French</a></li>
                        <li><a href="#">Spanish</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-4"  id="newsletter">
                    <h3>Newsletter</h3>
                    <p>Join our newsletter to keep be informed about offers and news.</p>
					<div id="message-newsletter_2"></div>
						<form method="post" action="assets/newsletter.php" name="newsletter_2" id="newsletter_2">
                        <div class="form-group">
                            <input name="email_newsletter_2" id="email_newsletter_2"  type="email" value=""  placeholder="Your mail" class="form-control">
                          </div>
                            <input type="submit" value="Subscribe" class="btn_1 white" id="submit-newsletter_2">
                    	</form>
                </div>
            </div><!-- End row -->
            <div class="row">
                <div class="col-md-12">
                    <div id="social_footer">
                        <ul>
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-google"></i></a></li>
                            <li><a href="#"><i class="icon-instagram"></i></a></li>
                            <li><a href="#"><i class="icon-pinterest"></i></a></li>
                            <li><a href="#"><i class="icon-vimeo"></i></a></li>
                            <li><a href="#"><i class="icon-youtube-play"></i></a></li>
                        </ul>
                          <p>Copyright � 2016 <a target="_blank" title="Free CSS Themes" href="http://freecssthemes.com/">FreeCSSThemes</a>  |  All Right Reserved</p>

                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </footer><!-- End footer -->

<div id="toTop"></div><!-- Back to top button -->
        
<!-- COMMON SCRIPTS -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="assets/validate.js"></script>
<script src="js/functions.js"></script>

<script type="text/javascript" src="js/DateTimePicker.js"></script>
<script type="text/javascript">$("#dtBox").DateTimePicker();</script>
</body>
</html>