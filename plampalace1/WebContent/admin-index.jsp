<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description" content="Responsive Admin Template" />
    <meta name="author" content="SmartUniversity" />
    <title>Spice Hotel | Bootstrap 4 Admin Dashboard Template + UI Kit</title>
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<!-- icons -->
    <link href="assets/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<!--bootstrap -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/plugins/summernote/summernote.css" rel="stylesheet">
	<!-- morris chart -->
    <link href="assets/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- Material Design Lite CSS -->
	<link rel="stylesheet" href="assets/plugins/material/material.min.css">
	<link rel="stylesheet" href="assets/css/material_style.css">
	<!-- animation -->
	<link href="assets/css/pages/animate_page.css" rel="stylesheet">
	<!-- Template Styles -->
    <link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/theme-color.css" rel="stylesheet" type="text/css" />
	<!-- favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" /> 
 </head>
 <!-- END HEAD -->
<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-sidebar-color logo-dark">
    <div class="page-wrapper">
        <!-- start header -->
        <div class="page-header navbar navbar-fixed-top">
            <div class="page-header-inner ">
                <!-- logo start -->
                <div class="page-logo">
                    <a href="index.jsp">
                    <!-- <img alt="" src="assets/img/logo.png"> -->
                    <span class="logo-default" >Palam Palace</span> </a>
                </div>
                <!-- logo end -->
				<ul class="nav navbar-nav navbar-left in">
					<li><a href="#" class="menu-toggler sidebar-toggler"><i class="icon-menu"></i></a></li>
				</ul>
                 <form class="search-form-opened" action="#" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search..." name="query">
                        <span class="input-group-btn search-btn">
                          <a href="javascript:;" class="btn submit">
                             <i class="icon-magnifier"></i>
                           </a>
                        </span>
                    </div>
                </form>
                
                <!-- start mobile menu -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                    <span></span>
                </a>
               <!-- end mobile menu -->
                <!-- start header menu -->
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">
                        <!-- start notification dropdown -->
                        <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <i class="fa fa-bell-o"></i>
                                <span class="badge headerBadgeColor1"> 6 </span>
                            </a>
                           <!--  <ul class="dropdown-menu animated swing">
                                <li class="external">
                                    <h3><span class="bold">Notifications</span></h3>
                                    <span class="notification-label purple-bgcolor">New 6</span>
                                </li>
                                <li>
                                    <ul class="dropdown-menu-list small-slimscroll-style" data-handle-color="#637283">
                                        <li>
                                            <a href="javascript:;">
                                                <span class="time">just now</span>
                                                <span class="details">
                                                <span class="notification-icon circle deepPink-bgcolor"><i class="fa fa-check"></i></span> Congratulations!. </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="time">3 mins</span>
                                                <span class="details">
                                                <span class="notification-icon circle purple-bgcolor"><i class="fa fa-user o"></i></span>
                                                <b>John Micle </b>is now following you. </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="time">7 mins</span>
                                                <span class="details">
                                                <span class="notification-icon circle blue-bgcolor"><i class="fa fa-comments-o"></i></span>
                                                <b>Sneha Jogi </b>sent you a message. </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="time">12 mins</span>
                                                <span class="details">
                                                <span class="notification-icon circle pink"><i class="fa fa-heart"></i></span>
                                                <b>Ravi Patel </b>like your photo. </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="time">15 mins</span>
                                                <span class="details">
                                                <span class="notification-icon circle yellow"><i class="fa fa-warning"></i></span> Warning! </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="time">10 hrs</span>
                                                <span class="details">
                                                <span class="notification-icon circle red"><i class="fa fa-times"></i></span> Application error. </span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="dropdown-menu-footer">
                                        <a href="javascript:void(0)"> All notifications </a>
                                    </div>
                                </li>
                            </ul>
 -->                        </li>
                        <!-- end notification dropdown -->
                        <!-- start message dropdown -->
 						<li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge headerBadgeColor2"> 2 </span>
                            </a>
                           <!--  <ul class="dropdown-menu animated slideInDown">
                                <li class="external">
                                    <h3><span class="bold">Messages</span></h3>
                                    <span class="notification-label cyan-bgcolor">New 2</span>
                                </li>
                                <li>
                                    <ul class="dropdown-menu-list small-slimscroll-style" data-handle-color="#637283">
                                        <li>
                                            <a href="#">
                                                <span class="photo">
                                                	<img src="assets/img/user/user2.jpg" class="img-circle" alt=""> </span>
                                                <span class="subject">
                                                	<span class="from"> Sarah Smith </span>
                                                	<span class="time">Just Now </span>
                                                </span>
                                                <span class="message"> Jatin I found you on LinkedIn... </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="photo">
                                                	<img src="assets/img/user/user3.jpg" class="img-circle" alt=""> </span>
                                                <span class="subject">
                                                	<span class="from"> John Deo </span>
                                                	<span class="time">16 mins </span>
                                                </span>
                                                <span class="message"> Fwd: Important Notice Regarding Your Domain Name... </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="photo">
                                                	<img src="assets/img/user/user1.jpg" class="img-circle" alt=""> </span>
                                                <span class="subject">
                                                	<span class="from"> Rajesh </span>
                                                	<span class="time">2 hrs </span>
                                                </span>
                                                <span class="message"> pls take a print of attachments. </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="photo">
                                                	<img src="assets/img/user/user8.jpg" class="img-circle" alt=""> </span>
                                                <span class="subject">
                                                	<span class="from"> Lina Smith </span>
                                                	<span class="time">40 mins </span>
                                                </span>
                                                <span class="message"> Apply for Ortho Surgeon </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="photo">
                                                	<img src="assets/img/user/user5.jpg" class="img-circle" alt=""> </span>
                                                <span class="subject">
                                                	<span class="from"> Jacob Ryan </span>
                                                	<span class="time">46 mins </span>
                                                </span>
                                                <span class="message"> Request for leave application. </span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="dropdown-menu-footer">
                                        <a href="#"> All Messages </a>
                                    </div>
                                </li>
                            </ul> -->
                        </li>
                        <!-- end message dropdown -->
 						<!-- start manage user dropdown -->
 						<li class="dropdown dropdown-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <img alt="" class="img-circle " src="assets/img/dp.jpg" />
                                <span class="username username-hide-on-mobile"> Raeesh </span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-default animated jello">
                                <li>
                                    <a href="user_profile.jsp">
                                        <i class="icon-user"></i> Profile </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-settings"></i> Settings
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-directions"></i> Help
                                    </a>
                                </li>
                                <li class="divider"> </li>
                                <li>
                                    <a href="lock_screen.jsp">
                                        <i class="icon-lock"></i> Lock
                                    </a>
                                </li>
                                <li>
                                    <a href="login.html">
                                        <i class="icon-logout"></i> Log Out </a>
                                </li>
                            </ul>
                        </li>
                        <!-- end manage user dropdown -->
                        <li class="dropdown dropdown-quick-sidebar-toggler">
                             <a id="headerSettingButton" class="mdl-button mdl-js-button mdl-button--icon pull-right" data-upgraded=",MaterialButton">
	                           <i class="material-icons">settings</i>
	                        </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- end header -->
        <!-- start page container -->
        <div class="page-container">
 			<!-- start sidebar menu -->
 			<div class="sidebar-container">
 				<div class="sidemenu-container navbar-collapse collapse fixed-menu">
	                <div id="remove-scroll">
	                    <ul class="sidemenu page-header-fixed p-t-20" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
	                        <li class="sidebar-toggler-wrapper hide">
	                            <div class="sidebar-toggler">
	                                <span></span>
	                            </div>
	                        </li>
	                        <li class="sidebar-user-panel">
	                            <div class="user-panel">
	                                <div class="row">
                                            <div class="sidebar-userpic">
                                                <img src="assets/img/dp.jpg" class="img-responsive" alt=""> </div>
                                        </div>
                                        <div class="profile-usertitle">
                                            <div class="sidebar-userpic-name"> Raeesh </div>
                                            <div class="profile-usertitle-job"> Admin </div>
                                        </div>
                                        <div class="sidebar-userpic-btn">
									        <a class="tooltips" href="user_profile.html" data-placement="top" data-original-title="Profile">
									        	<i class="material-icons">person_outline</i>
									        </a>
									        <a class="tooltips" href="email_inbox.html" data-placement="top" data-original-title="Mail">
									        	<i class="material-icons">mail_outline</i>
									        </a>
									        <a class="tooltips" href="chat.html" data-placement="top" data-original-title="Chat">
									        	<i class="material-icons">chat</i>
									        </a>
									        <a class="tooltips" href="login.html" data-placement="top" data-original-title="Logout">
									        	<i class="material-icons">input</i>
									        </a>
									    </div>
	                            </div>
	                        </li>
	                       <!--  <li class="menu-heading">
			                	<span>-- Main</span>
			                </li> -->

                            <!-- Dashboard -->
	                         <li class="nav-item start active">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">dashboard</i>
	                                <span class="title">Dashboard</span>
                                	<span class="selected"></span>
                                	<span class="arrow open"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item active">
	                                    <a href="index.html" class="nav-link ">
	                                        <span class="title">Dashboard 1</span>
	                                        <span class="selected"></span>
	                                    </a>
	                                </li>
	                                <li class="nav-item ">
	                                    <a href="dashboard2.html" class="nav-link ">
	                                        <span class="title">Dashboard 2</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> 
	                       <!--  <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">email</i>
	                                <span class="title">Email</span>
	                                <span class="arrow"></span>
	                                <span class="label label-rouded label-menu label-danger">new</span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="email_inbox.html" class="nav-link ">
	                                        <span class="title">Inbox</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="email_view.html" class="nav-link ">
	                                        <span class="title">View Mail</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="email_compose.html" class="nav-link ">
	                                        <span class="title">Compose Mail</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                        <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">business_center</i>
	                                <span class="title">Booking</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="view-booking.jsp" class="nav-link ">
	                                        <span class="title">View Room Booking</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="view-eventbook.jsp" class="nav-link ">
	                                        <span class="title">View Event Booking </span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="view-tablebook.jsp" class="nav-link ">
	                                        <span class="title">View Table Booking</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">vpn_key</i>
	                                <span class="title">Rooms</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="add_room.jsp" class="nav-link ">
	                                        <span class="title">Add Room Details</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="all_rooms.jsp" class="nav-link ">
	                                        <span class="title">View All Rooms</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="edit_room.html" class="nav-link ">
	                                        <span class="title">Edit Room Details</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li>
	                         <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">vpn_key</i>
	                                <span class="title">Event</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="add-event.jsp" class="nav-link ">
	                                        <span class="title">Add Events Details</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="view-events.jsp" class="nav-link ">
	                                        <span class="title">View All Events</span>
	                                    </a>
	                                </li>
	                             
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">group</i>
	                                <span class="title">Staff</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="add_staff.jsp" class="nav-link ">
	                                        <span class="title">Add Staff Details</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="view_staff.jsp" class="nav-link ">
	                                        <span class="title">View All Staffs</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="edit_staff.html" class="nav-link ">
	                                        <span class="title">Edit Staff Details</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li>

<!-- Events -->
                            <li class="nav-item">
                                <a href="#" class="nav-link nav-toggle">
                                    <i class="material-icons">business_center</i>
                                    <span class="title">Events</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item">
                                        <a href="new_booking.html" class="nav-link ">
                                            <span class="title">New Events</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="view_booking.html" class="nav-link ">
                                            <span class="title">View Event</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="edit_booking.html" class="nav-link ">
                                            <span class="title">Edit Event</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

	                        <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">local_taxi</i>
	                                <span class="title">Transportation</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="add_vehicle.html" class="nav-link ">
	                                        <span class="title">Add Vehicle Details</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="all_vehicles.html" class="nav-link ">
	                                        <span class="title">View All Vehicle</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="edit_vehicle.html" class="nav-link ">
	                                        <span class="title">Edit Vehicle Details</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li>
	                        <!-- <li class="menu-heading m-t-20">
			                	<span>-- Layout, Apps &amp; Widget</span>
			                </li> -->
	                      <!--   <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle"> <i class="material-icons">desktop_mac</i>
	                                <span class="title">Layout</span> <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="layout_boxed.html" class="nav-link "> <span class="title">Boxed</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="layout_full_width.html" class="nav-link "> <span class="title">Full Width</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="layout_collapse.html" class="nav-link "> <span class="title">Collapse Menu</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="layout_right_sidebar.html" class="nav-link "> <span class="title">Right Sidebar</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="layout_sidebar_hover_menu.html" class="nav-link "> <span class="title">Hover Sidebar Menu</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="layout_mega_menu.html" class="nav-link "> <span class="title">Mega Menu</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                      <!--   <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle"> <i class="material-icons">grain</i>
	                                <span class="title">Apps</span> <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="chat.html" class="nav-link "> <span class="title">Chat</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="contact_list.html" class="nav-link "> <span class="title">Contact List</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="contact_grid.html" class="nav-link "> <span class="title">Contact Grid</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="gallery.html" class="nav-link "> <span class="title">Gallery</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="support.html" class="nav-link "> <span class="title">Support</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="calendar.html" class="nav-link "> <span class="title">Calendar</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                       <!--  <li class="nav-item">
	                            <a href="widget.html" class="nav-link nav-toggle"> <i class="material-icons">widgets</i>
	                                <span class="title">Widget</span> 
	                            </a>
	                        </li> -->
	                      <!--   <li class="menu-heading m-t-20">
			                	<span>-- Elements, Forms &amp; Tables</span>
			                </li> -->
	                        <!-- <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">dvr</i>
	                                <span class="title">UI Elements</span> 
	                                <span class="label label-rouded label-menu label-warning">new</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="buttons.html" class="nav-link ">
	                                        <span class="title">Buttons</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="alert.html" class="nav-link ">
	                                        <span class="title">Alert</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="tabs_accordions_navs.html" class="nav-link ">
	                                        <span class="title">Tabs &amp; Accordions</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="typography.html" class="nav-link ">
	                                        <span class="title">Typography</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="notification.html" class="nav-link ">
	                                        <span class="title">Notifications</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="sweet_alert.html" class="nav-link ">
	                                        <span class="title">Sweet Alert</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="panels.html" class="nav-link ">
	                                        <span class="title">Panels</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="grid.html" class="nav-link ">
	                                        <span class="title">Grids</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="tree.html" class="nav-link ">
	                                        <span class="title">Tree View</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="carousel.html" class="nav-link ">
	                                        <span class="title">Carousel</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="animation.html" class="nav-link ">
	                                        <span class="title">Animations</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                      <!--   <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle">
	                                <i class="material-icons">store</i>
	                                <span class="title">Material Elements</span> 
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="material_button.html" class="nav-link ">
	                                        <span class="title">Buttons</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_tab.html" class="nav-link ">
	                                        <span class="title">Tabs</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_chips.html" class="nav-link ">
	                                        <span class="title">Chips</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_grid.html" class="nav-link ">
	                                        <span class="title">Grid</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_form.html" class="nav-link ">
	                                        <span class="title">Form</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_datepicker.html" class="nav-link ">
	                                        <span class="title">DatePicker</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_select.html" class="nav-link ">
	                                        <span class="title">Select Item</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_loading.html" class="nav-link ">
	                                        <span class="title">Loading</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_menu.html" class="nav-link ">
	                                        <span class="title">Menu</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_slider.html" class="nav-link ">
	                                        <span class="title">Slider</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_tables.html" class="nav-link ">
	                                        <span class="title">Tables</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_toggle.html" class="nav-link ">
	                                        <span class="title">Toggle</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_badges.html" class="nav-link ">
	                                        <span class="title">Badges</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                       <!--  <li class="nav-item">
	                            <a href="javascript:;" class="nav-link nav-toggle">
	                                <i class="material-icons">subtitles</i>
	                                <span class="title">Forms </span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="layouts_form.html" class="nav-link ">
	                                        <span class="title">Form Layout</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="advance_form.html" class="nav-link ">
	                                        <span class="title">Advance Component</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="validation_form.html" class="nav-link ">
	                                        <span class="title">Form Validation</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="steps.html" class="nav-link ">
	                                        <span class="title">Wizard</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="file_upload.html" class="nav-link ">
	                                        <span class="title">File Upload</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="editable_form.html" class="nav-link ">
	                                        <span class="title">Editor</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                       <!--  <li class="nav-item">
	                            <a href="javascript:;" class="nav-link nav-toggle">
	                                <i class="material-icons">list</i>
	                                <span class="title">Data Tables</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="basic_table.html" class="nav-link ">
	                                        <span class="title">Basic Tables</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="advanced_table.html" class="nav-link ">
	                                        <span class="title">Advance Tables</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="editable_table.html" class="nav-link ">
	                                        <span class="title">Editable Tables</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="group_table.html" class="nav-link ">
	                                        <span class="title">Grouping</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="table_data.html" class="nav-link ">
	                                        <span class="title">Tables With Sourced Data</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                       <!--  <li class="menu-heading m-t-20">
			                	<span>-- Extra Components</span>
			                </li> -->
	                       <!--  <li class="nav-item">
	                            <a href="javascript:;" class="nav-link nav-toggle">
	                                <i class="material-icons">timeline</i>
	                                <span class="title">Charts</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="charts_echarts.html" class="nav-link ">
	                                        <span class="title">eCharts</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="charts_morris.html" class="nav-link ">
	                                        <span class="title">Morris Charts</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="charts_chartjs.html" class="nav-link ">
	                                        <span class="title">Chartjs</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                       <!--  <li class="nav-item">
	                            <a href="javascript:;" class="nav-link nav-toggle">
	                                <i class="material-icons">map</i>
	                                <span class="title">Maps</span>
	                                <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="google_maps.html" class="nav-link ">
	                                        <span class="title">Google Maps</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="vector_maps.html" class="nav-link ">
	                                        <span class="title">Vector Maps</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                       <!--  <li class="nav-item">
	                            <a href="#" class="nav-link nav-toggle"> <i class="material-icons">album</i>
	                                <span class="title">Icons</span> <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="fontawesome_icons.html" class="nav-link "> <span class="title">Font Awesome</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="simpleline_icons.html" class="nav-link "> <span class="title">Simple Line Icon</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="material_icons.html" class="nav-link "> <span class="title">Material Icon</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                       <!--  <li class="nav-item">
	                            <a href="javascript:;" class="nav-link nav-toggle"> <i class="material-icons">description</i>
	                            <span class="title">Extra pages</span> 
	                            <span class="arrow"></span>
	                            </a>
	                            <ul class="sub-menu">
	                            	<li class="nav-item">
	                                    <a href="timeline.html" class="nav-link "> <span class="title">Timeline</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="login.html" class="nav-link "> <span class="title">Login</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="sign_up.html" class="nav-link "> <span class="title">Registration</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                	<a href="user_profile.html" class="nav-link "><span class="title">Profile</span>
										</a>
	                                </li>
	                                <li class="nav-item">
	                                	<a href="pricing.html" class="nav-link "><span class="title">Pricing</span>
										</a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="contactus.html" class="nav-link "> <span class="title">Contact Us</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                	<a href="invoice.html" class="nav-link "><span class="title">Invoice</span>
										</a>
	                                </li>
	                                <li class="nav-item">
	                                	<a href="faq.html" class="nav-link "><span class="title">Faq</span>
										</a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="lock_screen.html" class="nav-link "> <span class="title">Lock Screen</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="page-404.html" class="nav-link "> <span class="title">404 Page</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="page-500.html" class="nav-link "> <span class="title">500 Page</span>
	                                    </a>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="blank_page.html" class="nav-link "> <span class="title">Blank Page</span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                      <!--   <li class="nav-item">
	                            <a href="javascript:;" class="nav-link nav-toggle">
	                                <i class="material-icons">slideshow</i>
	                                <span class="title">Multi Level Menu</span>
	                                <span class="arrow "></span>
	                            </a>
	                            <ul class="sub-menu">
	                                <li class="nav-item">
	                                    <a href="javascript:;" class="nav-link nav-toggle">
	                                        <i class="fa fa-university"></i> Item 1
	                                        <span class="arrow"></span>
	                                    </a>
	                                    <ul class="sub-menu">
	                                        <li class="nav-item">
	                                            <a href="javascript:;" class="nav-link nav-toggle">
	                                                <i class="fa fa-bell-o"></i> Arrow Toggle
	                                                <span class="arrow "></span>
	                                            </a>
	                                            <ul class="sub-menu">
	                                                <li class="nav-item">
	                                                    <a href="javascript:;" class="nav-link">
	                                                        <i class="fa fa-calculator"></i> Sample Link 1</a>
	                                                </li>
	                                                <li class="nav-item">
	                                                    <a href="#" class="nav-link">
	                                                        <i class="fa fa-clone"></i> Sample Link 2</a>
	                                                </li>
	                                                <li class="nav-item">
	                                                    <a href="#" class="nav-link">
	                                                        <i class="fa fa-cogs"></i> Sample Link 3</a>
	                                                </li>
	                                            </ul>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="#" class="nav-link">
	                                                <i class="fa fa-file-pdf-o"></i> Sample Link 1</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="#" class="nav-link">
	                                                <i class="fa fa-rss"></i> Sample Link 2</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="#" class="nav-link">
	                                                <i class="fa fa-hdd-o"></i> Sample Link 3</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="javascript:;" class="nav-link nav-toggle">
	                                        <i class="fa fa-gavel"></i> Arrow Toggle
	                                        <span class="arrow"></span>
	                                    </a>
	                                    <ul class="sub-menu">
	                                        <li class="nav-item">
	                                            <a href="#" class="nav-link">
	                                                <i class="fa fa-paper-plane"></i> Sample Link 1</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="#" class="nav-link">
	                                                <i class="fa fa-power-off"></i> Sample Link 1</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="#" class="nav-link">
	                                                <i class="fa fa-recycle"></i> Sample Link 1
	                                             </a>
	                                        </li>
	                                    </ul>
	                                </li>
	                                <li class="nav-item">
	                                    <a href="#" class="nav-link">
	                                        <i class="fa fa-volume-up"></i> Item 3 </a>
	                                </li>
	                            </ul>
	                        </li> -->
	                    </ul>
	                </div>
                </div>
            </div>
            <!-- end sidebar menu --> 
			<!-- start page content -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div class="page-bar">
                        <div class="page-title-breadcrumb">
                            <div class=" pull-left">
                                <div class="page-title">Dashboard</div>
                            </div>
                            <ol class="breadcrumb page-breadcrumb pull-right">
                                <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                </li>
                                <li class="active">Dashboard</li>
                            </ol>
                        </div>
                    </div>
                   <!-- start widget -->
					<div class="state-overview">
						<div class="row">
					        
					      </div>
						</div>
					<!-- end widget -->
                     <!-- chart start -->
                    <div class="row">
                        <div class="col-md-12">
                           <!--  <div class="card card-box">
                                <div class="card-head">
                                    <header>Chart Survey</header>
                                    <div class="tools">
                                        <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
										<a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
										<a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                    </div>
                                </div>
                                <div class="card-body no-padding height-9">
                                    <div class="row text-center">
			                            <div class="col-sm-3 col-6">
			                                <h4 class="margin-0">$ 209 </h4>
			                                <p class="text-muted"> Today's Income</p>
			                            </div>
			                            <div class="col-sm-3 col-6">
			                                <h4 class="margin-0">$ 837 </h4>
			                                <p class="text-muted">This Week's Income</p>
			                            </div>
			                            <div class="col-sm-3 col-6">
			                                <h4 class="margin-0">$ 3410 </h4>
			                                <p class="text-muted">This Month's Income</p>
			                            </div>
			                            <div class="col-sm-3 col-6">
			                                <h4 class="margin-0">$ 78,000 </h4>
			                                <p class="text-muted">This Year's Income</p>
			                            </div>
			                        </div>
                       				<div class="row">
                                       	<div id="area_line_chart" class="width-100"></div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                     <!-- Chart end -->
                    <div class="row">
                       <!--  <div class="col-md-4 col-sm-12 col-12">
                            <div class="card bg-info">
			                    <div class="text-white py-3 px-4">
			                      <h6 class="card-title text-white mb-0">Page View</h6>
			                      <p>7582</p>
			                      <div id="sparkline26"></div>
			                      <small class="text-white">View Details</small>
			                    </div>
			                  </div>
			                  <div class="card bg-success">
			                    <div class="text-white py-3 px-4">
			                      <h6 class="card-title text-white mb-0">Earning</h6>
			                      <p>3669.25</p>
			                      <div id="sparkline27"></div>
			                      <small class="text-white">View Details</small>
			                    </div>
			                  </div>
                        </div> -->
<!--                         <div class="col-md-4 col-sm-12 col-12">
                        	<div class="card  card-box">
                                <div class="card-head">
                                    <header>Notifications</header>
                                    <div class="tools">
                                        <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
	                                    <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
	                                    <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                    </div>
                                </div>
                                <div class="card-body no-padding height-9">
                                    <div class="row">
                                        <div class="noti-information notification-menu">
                                            <div class="notification-list mail-list not-list small-slimscroll-style">
                                                <a href="javascript:;" class="single-mail"> <span class="icon bg-primary"> <i class="fa fa-user-o"></i>
												</span> <span class="text-purple">Abhay Jani</span> Added you as friend
                                                    <span class="notificationtime">
                                                        <small>Just Now</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon blue-bgcolor"> <i class="fa fa-envelope-o"></i>
												</span> <span class="text-purple">John Doe</span> send you a mail
                                                    <span class="notificationtime">
                                                        <small>Just Now</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon bg-success"> <i class="fa fa-check-square-o"></i>
												</span> Success Message
                                                    <span class="notificationtime">
                                                        <small> 2 Days Ago</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon bg-warning"> <i class="fa fa-warning"></i>
												</span> <strong>Database Overloaded Warning!</strong>
                                                    <span class="notificationtime">
                                                        <small>1 Week Ago</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon bg-primary"> <i class="fa fa-user-o"></i>
												</span> <span class="text-purple">Abhay Jani</span> Added you as friend
                                                    <span class="notificationtime">
                                                        <small>Just Now</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon blue-bgcolor"> <i class="fa fa-envelope-o"></i>
												</span> <span class="text-purple">John Doe</span> send you a mail
                                                    <span class="notificationtime">
                                                        <small>Just Now</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon bg-success"> <i class="fa fa-check-square-o"></i>
												</span> Success Message
                                                    <span class="notificationtime">
                                                        <small> 2 Days Ago</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon bg-warning"> <i class="fa fa-warning"></i>
												</span> <strong>Database Overloaded Warning!</strong>
                                                    <span class="notificationtime">
                                                        <small>1 Week Ago</small>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail"> <span class="icon bg-danger"> <i class="fa fa-times"></i>
												</span> <strong>Server Error!</strong>
                                                    <span class="notificationtime">
                                                        <small>10 Days Ago</small>
                                                    </span>
                                                </a>
                                            </div>
											<div class="full-width text-center p-t-10" >
												<button type="button" class="btn purple btn-outline btn-circle margin-0">View All</button>
											</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                       <!--  <div class="col-md-4 col-sm-12 col-12">
                            <div class="card  card-box">
                                <div class="card-head">
                                    <header>Earning</header>
                                    <div class="tools">
                                        <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
	                                    <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
	                                    <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                    </div>
                                </div>
                                <div class="card-body no-padding height-9">
                                    <div class="row text-center">
			                            <div class="col-sm-4 col-6">
			                                <h4 class="margin-0">$ 209 </h4>
			                                <p class="text-muted"> Today</p>
			                            </div>
			                            <div class="col-sm-4 col-6">
			                                <h4 class="margin-0">$ 837 </h4>
			                                <p class="text-muted">This Week</p>
			                            </div>
			                            <div class="col-sm-4 col-6">
			                                <h4 class="margin-0">$ 3410 </h4>
			                                <p class="text-muted">This Month</p>
			                            </div>
			                        </div>
			                        <div class="row">
                                        <div id="donut_chart" class="width-100 height-250"></div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                     <!-- start Payment Details -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="card  card-box">
                                <div class="card-head">
                                    <header>Booking Details</header>
                                    <div class="tools">
                                        <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
	                                    <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
	                                    <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                    </div>
                                </div>
                                <div class="card-body ">
                                  <div class="table-wrap">
										<div class="table-responsive">
											<table class="table display product-overview mb-30" id="support_table5">
												<thead>
													<tr>
														<th>No</th>
														<th>Name</th>
														<th>Check In</th>
														<th>Check Out</th>
														<th>Status</th>
														<th>Phone</th>
														<th>Room Type</th>
														<th>Edit</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Jens Brincker</td>
														<td>23/05/2016</td>
														<td>27/05/2016</td>
														<td>
															<span class="label label-sm label-success">paid</span>
														</td>
														<td>123456789</td>
														<td>Single</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Mark Hay</td>
														<td>24/05/2017</td>
														<td>26/05/2017</td>
														<td>
															<span class="label label-sm label-warning">unpaid </span>
														</td>
														<td>123456789</td>
														<td>Double</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Anthony Davie</td>
														<td>17/05/2016</td>
														<td>21/05/2016</td>
														<td>
															<span class="label label-sm label-success ">paid</span>
														</td>
														<td>123456789</td>
														<td>Queen</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
													<tr>
														<td>4</td>
														<td>David Perry</td>
														<td>19/04/2016</td>
														<td>20/04/2016</td>
														<td>
															<span class="label label-sm label-danger">unpaid</span>
														</td>
														<td>123456789</td>
														<td>King</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
													<tr>
														<td>5</td>
														<td>Anthony Davie</td>
														<td>21/05/2016</td>
														<td>24/05/2016</td>
														<td>
															<span class="label label-sm label-success ">paid</span>
														</td>
														<td>123456789</td>
														<td>Single</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
													<tr>
														<td>6</td>
														<td>Alan Gilchrist</td>
														<td>15/05/2016</td>
														<td>22/05/2016</td>
														<td>
															<span class="label label-sm label-warning ">unpaid</span>
														</td>
														<td>123456789</td>
														<td>King</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
													<tr>
														<td>7</td>
														<td>Mark Hay</td>
														<td>17/06/2016</td>
														<td>18/06/2016</td>
														<td>
															<span class="label label-sm label-success ">paid</span>
														</td>
														<td>123456789</td>
														<td>Single</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
													<tr>
														<td>8</td>
														<td>Sue Woodger</td>
														<td>15/05/2016</td>
														<td>17/05/2016</td>
														<td>
															<span class="label label-sm label-danger">unpaid</span>
														</td>
														<td>123456789</td>
														<td>Double</td>
														<td>
															<a href="edit_booking.html" class="btn btn-tbl-edit btn-xs">
																<i class="fa fa-pencil"></i>
															</a>
															<button class="btn btn-tbl-delete btn-xs">
																<i class="fa fa-trash-o "></i>
															</button>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>	
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end Payment Details -->
                    <!-- <div class="row">
							<div class="col-lg-8 col-md-12 col-sm-12 col-12">
                                   <div class="card-box ">
                                <div class="card-head">
                                    <header>Guest Review</header>
                                    <div class="tools">
                                        <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
	                                    <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
	                                    <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                    </div>
                                </div>
                                <div class="card-body ">
                                  <div class="row">
                                        <ul class="docListWindow small-slimscroll-style">
                                            <li>
                                            	<div class="row">
	                                            	<div class="col-md-8 col-sm-8">
		                                                <div class="prog-avatar">
		                                                    <img src="assets/img/user/user1.jpg" alt="" width="40" height="40">
		                                                </div>
		                                                <div class="details">
		                                                    <div class="title">
		                                                        <a href="#">Rajesh Mishra</a> 
		                                                        <p class="rating-text">Awesome!!! Highly recommend</p>
		                                                    </div>
		                                                </div>
	                                                </div>
	                                                <div class="col-md-4 col-sm-4 rating-style">
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star_half</i>
		                                                <i class="material-icons">star_border</i>
	                                                </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
	                                            	<div class="col-md-8 col-sm-8">
		                                                <div class="prog-avatar">
		                                                    <img src="assets/img/user/user2.jpg" alt="" width="40" height="40">
		                                                </div>
		                                                <div class="details">
		                                                    <div class="title">
		                                                        <a href="#">Sarah Smith</a> 
		                                                        <p class="rating-text">Very bad service :(</p>
		                                                    </div>
		                                                </div>
	                                                </div>
	                                                <div class="col-md-4 col-sm-4 rating-style">
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star_half</i>
		                                                <i class="material-icons">star_border</i>
		                                                <i class="material-icons">star_border</i>
		                                                <i class="material-icons">star_border</i>
	                                                </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
	                                            	<div class="col-md-8 col-sm-8">
		                                                <div class="prog-avatar">
		                                                    <img src="assets/img/user/user3.jpg" alt="" width="40" height="40">
		                                                </div>
		                                                <div class="details">
		                                                    <div class="title">
		                                                        <a href="#">John Simensh</a> 
		                                                        <p class="rating-text"> Staff was good nd i'll come again</p>
		                                                    </div>
		                                                </div>
	                                                </div>
	                                                <div class="col-md-4 col-sm-4 rating-style">
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
	                                                </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
	                                            	<div class="col-md-8 col-sm-8">
		                                                <div class="prog-avatar">
		                                                    <img src="assets/img/user/user4.jpg" alt="" width="40" height="40">
		                                                </div>
		                                                <div class="details">
		                                                    <div class="title">
		                                                        <a href="#">Priya Sarma</a> 
		                                                        <p class="rating-text">The price I received was good value.</p>
		                                                    </div>
		                                                </div>
	                                                </div>
	                                                <div class="col-md-4 col-sm-4 rating-style">
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star_half</i>
	                                                </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
	                                            	<div class="col-md-8 col-sm-8">
		                                                <div class="prog-avatar">
		                                                    <img src="assets/img/user/user5.jpg" alt="" width="40" height="40">
		                                                </div>
		                                                <div class="details">
		                                                    <div class="title">
		                                                        <a href="#">Serlin Ponting</a> 
		                                                        <p class="rating-text">Not Satisfy !!!1</p>
		                                                    </div>
		                                                </div>
	                                                </div>
	                                                <div class="col-md-4 col-sm-4 rating-style">
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star_border</i>
		                                                <i class="material-icons">star_border</i>
		                                                <i class="material-icons">star_border</i>
		                                                <i class="material-icons">star_border</i>
	                                                </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
	                                            	<div class="col-md-8 col-sm-8">
		                                                <div class="prog-avatar">
		                                                    <img src="assets/img/user/user6.jpg" alt="" width="40" height="40">
		                                                </div>
		                                                <div class="details">
		                                                    <div class="title">
		                                                        <a href="#">Priyank Jain</a> 
		                                                        <p class="rating-text">Good....</p>
		                                                    </div>
		                                                </div>
	                                                </div>
	                                                <div class="col-md-4 col-sm-4 rating-style">
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star</i>
		                                                <i class="material-icons">star_half</i>
		                                                <i class="material-icons">star_border</i>
	                                                </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="full-width text-center p-t-10" >
												<a href="#" class="btn purple btn-outline btn-circle margin-0">View All</a>
											</div>
                                    </div>	
                                </div>
                            </div>
							</div>
							<div class="col-lg-4 col-md-12 col-sm-12 col-12">
                             <div class="card-box">
                                 <div class="card-head">
                                     <header>Todo List</header>
                                     <button id = "panel-button" 
				                           class = "mdl-button mdl-js-button mdl-button--icon pull-right" 
				                           data-upgraded = ",MaterialButton">
				                           <i class = "material-icons">more_vert</i>
				                        </button>
				                        <ul class = "mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
				                           data-mdl-for = "panel-button">
				                           <li class = "mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
				                           <li class = "mdl-menu__item"><i class="material-icons">print</i>Another action</li>
				                           <li class = "mdl-menu__item"><i class="material-icons">favorite</i>Something else here</li>
				                        </ul>
                                 </div>
                                 <div class="card-body ">
                                 	<ul class="to-do-list ui-sortable" id="sortable-todo">
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check1">
                                                    <label for="todo-check1"></label>
                                                </div>
                                                <p class="todo-title">Add fees details in system
                                                </p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check2">
                                                    <label for="todo-check2"></label>
                                                </div>
                                                <p class="todo-title">Announcement for holiday
                                                </p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check3">
                                                    <label for="todo-check3"></label>
                                                </div>
                                                <p class="todo-title">call bus driver</p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check4">
                                                    <label for="todo-check4"></label>
                                                </div>
                                                <p class="todo-title">School picnic</p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check5">
                                                    <label for="todo-check5"></label>
                                                </div>
                                                <p class="todo-title">Exam time table generate
                                                </p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                 </div>
                             </div>
                         </div>
						</div> -->
                </div>
            </div>
            <!-- end page content -->
            <!-- start chat sidebar -->
            <div class="chat-sidebar-container" data-close-on-body-click="false">
                <div class="chat-sidebar">
                    <ul class="nav nav-tabs">
                    	<li class="nav-item">
                            <a href="#quick_sidebar_tab_1" class="nav-link active tab-icon"  data-toggle="tab">Theme
                                </a>
                        </li>
                        <li class="nav-item">
                            <a href="#quick_sidebar_tab_2" class="nav-link tab-icon"  data-toggle="tab"> Chat
                                </a>
                        </li>
                        <li class="nav-item">
                            <a href="#quick_sidebar_tab_3" class="nav-link tab-icon"  data-toggle="tab">  Settings
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                    	<div class="tab-pane chat-sidebar-settings in show active animated shake" role="tabpanel" id="quick_sidebar_tab_1">
							<div class="slimscroll-style">
								<div class="theme-light-dark">
									<h6>Sidebar Theme</h6>
									<button type="button" data-theme="white" class="btn lightColor btn-outline btn-circle m-b-10 theme-button">Light Sidebar</button>
									<button type="button" data-theme="dark" class="btn dark btn-outline btn-circle m-b-10 theme-button">Dark Sidebar</button>
								</div>
								<div class="theme-light-dark">
									<h6>Sidebar Color</h6>
									<ul class="list-unstyled">
										<li class="complete">
											<div class="theme-color sidebar-theme">
												<a href="#" data-theme="white"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="dark"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="blue"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="indigo"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="cyan"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="green"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="red"><span class="head"></span><span class="cont"></span></a>
											</div>
										</li>
									</ul>
									<h6>Header Brand color</h6>
									<ul class="list-unstyled">
										<li class="theme-option">
											<div class="theme-color logo-theme">
								             	<a href="#" data-theme="logo-white"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="logo-dark"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="logo-blue"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="logo-indigo"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="logo-cyan"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="logo-green"><span class="head"></span><span class="cont"></span></a>
												<a href="#" data-theme="logo-red"><span class="head"></span><span class="cont"></span></a>
								           	</div>
								        </li>
									</ul>
									<h6>Header color</h6>
									<ul class="list-unstyled">
										<li class="theme-option">
											<div class="theme-color header-theme">
								             	<a href="#" data-theme="header-white"><span class="head"></span><span class="cont"></span></a>
								             	<a href="#" data-theme="header-dark"><span class="head"></span><span class="cont"></span></a>
								             	<a href="#" data-theme="header-blue"><span class="head"></span><span class="cont"></span></a>
								             	<a href="#" data-theme="header-indigo"><span class="head"></span><span class="cont"></span></a>
								             	<a href="#" data-theme="header-cyan"><span class="head"></span><span class="cont"></span></a>
								             	<a href="#" data-theme="header-green"><span class="head"></span><span class="cont"></span></a>
								             	<a href="#" data-theme="header-red"><span class="head"></span><span class="cont"></span></a>
								          	</div>
								        </li>
									</ul>
								</div>
							</div>
						</div>
                        <!-- Start Doctor Chat --> 
 						<div class="tab-pane chat-sidebar-chat animated slideInRight" id="quick_sidebar_tab_2">
                        	<div class="chat-sidebar-list">
	                            <div class="chat-sidebar-chat-users slimscroll-style" data-rail-color="#ddd" data-wrapper-class="chat-sidebar-list">
	                                <div class="chat-header"><h5 class="list-heading">Online</h5></div>
	                                <ul class="media-list list-items">
	                                    <li class="media"><img class="media-object" src="assets/img/user/user3.jpg" width="35" height="35" alt="...">
	                                        <i class="online dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">John Deo</h5>
	                                            <div class="media-heading-sub">Spine Surgeon</div>
	                                        </div>
	                                    </li>
	                                    <li class="media">
	                                        <div class="media-status">
	                                            <span class="badge badge-success">5</span>
	                                        </div> <img class="media-object" src="assets/img/user/user1.jpg" width="35" height="35" alt="...">
	                                        <i class="busy dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Rajesh</h5>
	                                            <div class="media-heading-sub">Director</div>
	                                        </div>
	                                    </li>
	                                    <li class="media"><img class="media-object" src="assets/img/user/user5.jpg" width="35" height="35" alt="...">
	                                        <i class="away dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Jacob Ryan</h5>
	                                            <div class="media-heading-sub">Ortho Surgeon</div>
	                                        </div>
	                                    </li>
	                                    <li class="media">
	                                        <div class="media-status">
	                                            <span class="badge badge-danger">8</span>
	                                        </div> <img class="media-object" src="assets/img/user/user4.jpg" width="35" height="35" alt="...">
	                                        <i class="online dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Kehn Anderson</h5>
	                                            <div class="media-heading-sub">CEO</div>
	                                        </div>
	                                    </li>
	                                    <li class="media"><img class="media-object" src="assets/img/user/user2.jpg" width="35" height="35" alt="...">
	                                        <i class="busy dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Sarah Smith</h5>
	                                            <div class="media-heading-sub">Anaesthetics</div>
	                                        </div>
	                                    </li>
	                                    <li class="media"><img class="media-object" src="assets/img/user/user7.jpg" width="35" height="35" alt="...">
	                                        <i class="online dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Vlad Cardella</h5>
	                                            <div class="media-heading-sub">Cardiologist</div>
	                                        </div>
	                                    </li>
	                                </ul>
	                                <div class="chat-header"><h5 class="list-heading">Offline</h5></div>
	                                <ul class="media-list list-items">
	                                    <li class="media">
	                                        <div class="media-status">
	                                            <span class="badge badge-warning">4</span>
	                                        </div> <img class="media-object" src="assets/img/user/user6.jpg" width="35" height="35" alt="...">
	                                        <i class="offline dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Jennifer Maklen</h5>
	                                            <div class="media-heading-sub">Nurse</div>
	                                            <div class="media-heading-small">Last seen 01:20 AM</div>
	                                        </div>
	                                    </li>
	                                    <li class="media"><img class="media-object" src="assets/img/user/user8.jpg" width="35" height="35" alt="...">
	                                        <i class="offline dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Lina Smith</h5>
	                                            <div class="media-heading-sub">Ortho Surgeon</div>
	                                            <div class="media-heading-small">Last seen 11:14 PM</div>
	                                        </div>
	                                    </li>
	                                    <li class="media">
	                                        <div class="media-status">
	                                            <span class="badge badge-success">9</span>
	                                        </div> <img class="media-object" src="assets/img/user/user9.jpg" width="35" height="35" alt="...">
	                                        <i class="offline dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Jeff Adam</h5>
	                                            <div class="media-heading-sub">Compounder</div>
	                                            <div class="media-heading-small">Last seen 3:31 PM</div>
	                                        </div>
	                                    </li>
	                                    <li class="media"><img class="media-object" src="assets/img/user/user10.jpg" width="35" height="35" alt="...">
	                                        <i class="offline dot"></i>
	                                        <div class="media-body">
	                                            <h5 class="media-heading">Anjelina Cardella</h5>
	                                            <div class="media-heading-sub">Physiotherapist</div>
	                                            <div class="media-heading-small">Last seen 7:45 PM</div>
	                                        </div>
	                                    </li>
	                                </ul>
	                            </div>
                            </div>
                            <div class="chat-sidebar-item">
                                <div class="chat-sidebar-chat-user">
                                    <div class="page-quick-sidemenu">
                                        <a href="javascript:;" class="chat-sidebar-back-to-list">
                                            <i class="fa fa-angle-double-left"></i>Back
                                        </a>
                                    </div>
                                    <div class="chat-sidebar-chat-user-messages">
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/img/dp.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:10</span>
                                                <span class="body-out"> could you send me menu icons ? </span>
                                            </div>
                                        </div>
                                        <div class="post in">
                                            <img class="avatar" alt="" src="assets/img/user/user5.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:10</span>
                                                <span class="body"> please give me 10 minutes. </span>
                                            </div>
                                        </div>
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/img/dp.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:11</span>
                                                <span class="body-out"> ok fine :) </span>
                                            </div>
                                        </div>
                                        <div class="post in">
                                            <img class="avatar" alt="" src="assets/img/user/user5.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:22</span>
                                                <span class="body">Sorry for
													the delay. i sent mail to you. let me know if it is ok or not.</span>
                                            </div>
                                        </div>
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/img/dp.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:26</span>
                                                <span class="body-out"> it is perfect! :) </span>
                                            </div>
                                        </div>
                                        <div class="post out">
                                            <img class="avatar" alt="" src="assets/img/dp.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:26</span>
                                                <span class="body-out"> Great! Thanks. </span>
                                            </div>
                                        </div>
                                        <div class="post in">
                                            <img class="avatar" alt="" src="assets/img/user/user5.jpg" />
                                            <div class="message">
                                                <span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:27</span>
                                                <span class="body"> it is my pleasure :) </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="chat-sidebar-chat-user-form">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Type a message here...">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn deepPink-bgcolor">
                                                    <i class="fa fa-arrow-right"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Doctor Chat --> 
 						<!-- Start Setting Panel --> 
 						<div class="tab-pane chat-sidebar-settings animated slideInUp" id="quick_sidebar_tab_3">
                            <div class="chat-sidebar-settings-list slimscroll-style">
                                <div class="chat-header"><h5 class="list-heading">Layout Settings</h5></div>
	                            <div class="chatpane inner-content ">
									<div class="settings-list">
					                    <div class="setting-item">
					                        <div class="setting-text">Sidebar Position</div>
					                        <div class="setting-set">
					                           <select class="sidebar-pos-option form-control input-inline input-sm input-small ">
	                                                <option value="left" selected="selected">Left</option>
	                                                <option value="right">Right</option>
                                            	</select>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">Header</div>
					                        <div class="setting-set">
					                           <select class="page-header-option form-control input-inline input-sm input-small ">
	                                                <option value="fixed" selected="selected">Fixed</option>
	                                                <option value="default">Default</option>
                                            	</select>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">Sidebar Menu </div>
					                        <div class="setting-set">
					                           <select class="sidebar-menu-option form-control input-inline input-sm input-small ">
	                                                <option value="accordion" selected="selected">Accordion</option>
	                                                <option value="hover">Hover</option>
                                            	</select>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">Footer</div>
					                        <div class="setting-set">
					                           <select class="page-footer-option form-control input-inline input-sm input-small ">
	                                                <option value="fixed">Fixed</option>
	                                                <option value="default" selected="selected">Default</option>
                                            	</select>
					                        </div>
					                    </div>
					                </div>
									<div class="chat-header"><h5 class="list-heading">Account Settings</h5></div>
									<div class="settings-list">
					                    <div class="setting-item">
					                        <div class="setting-text">Notifications</div>
					                        <div class="setting-set">
					                            <div class="switch">
					                                <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" 
									                  for = "switch-1">
									                  <input type = "checkbox" id = "switch-1" 
									                     class = "mdl-switch__input" checked>
									               	</label>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">Show Online</div>
					                        <div class="setting-set">
					                            <div class="switch">
					                                <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" 
									                  for = "switch-7">
									                  <input type = "checkbox" id = "switch-7" 
									                     class = "mdl-switch__input" checked>
									               	</label>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">Status</div>
					                        <div class="setting-set">
					                            <div class="switch">
					                                <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" 
									                  for = "switch-2">
									                  <input type = "checkbox" id = "switch-2" 
									                     class = "mdl-switch__input" checked>
									               	</label>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">2 Steps Verification</div>
					                        <div class="setting-set">
					                            <div class="switch">
					                                <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" 
									                  for = "switch-3">
									                  <input type = "checkbox" id = "switch-3" 
									                     class = "mdl-switch__input" checked>
									               	</label>
					                            </div>
					                        </div>
					                    </div>
					                </div>
                                    <div class="chat-header"><h5 class="list-heading">General Settings</h5></div>
                                    <div class="settings-list">
					                    <div class="setting-item">
					                        <div class="setting-text">Location</div>
					                        <div class="setting-set">
					                            <div class="switch">
					                                <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" 
									                  for = "switch-4">
									                  <input type = "checkbox" id = "switch-4" 
									                     class = "mdl-switch__input" checked>
									               	</label>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">Save Histry</div>
					                        <div class="setting-set">
					                            <div class="switch">
					                                <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" 
									                  for = "switch-5">
									                  <input type = "checkbox" id = "switch-5" 
									                     class = "mdl-switch__input" checked>
									               	</label>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="setting-item">
					                        <div class="setting-text">Auto Updates</div>
					                        <div class="setting-set">
					                            <div class="switch">
					                                <label class = "mdl-switch mdl-js-switch mdl-js-ripple-effect" 
									                  for = "switch-6">
									                  <input type = "checkbox" id = "switch-6" 
									                     class = "mdl-switch__input" checked>
									               	</label>
					                            </div>
					                        </div>
					                    </div>
					                </div>
	                        	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end chat sidebar -->
        </div>
        <!-- end page container -->
        <!-- start footer -->
        <div class="page-footer">
            <div class="page-footer-inner"> 2018 &copy; Hotel Palam Palace
            <a href="mailto:redstartheme@gmail.com" target="_top" class="makerCss"></a>
            </div>
            <div class="scroll-to-top">
                <i class="icon-arrow-up"></i>
            </div>
        </div>
        <!-- end footer -->
    </div>
    <!-- start js include path -->
    <script src="assets/plugins/jquery/jquery.min.js" ></script>
    <script src="assets/plugins/popper/popper.min.js" ></script>
    <script src="assets/plugins/jquery-blockui/jquery.blockui.min.js" ></script>
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- bootstrap -->
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js" ></script>
    <script src="assets/plugins/sparkline/jquery.sparkline.min.js" ></script>
	<script src="assets/js/pages/sparkline/sparkline-data.js" ></script>
    <!-- Common js-->
	<script src="assets/js/app.js" ></script>
    <script src="assets/js/layout.js" ></script>
    <script src="assets/js/theme-color.js" ></script>
    <!-- material -->
    <script src="assets/plugins/material/material.min.js"></script>
    <!-- animation -->
    <script src="assets/js/pages/ui/animations.js" ></script>
    <!-- morris chart -->
    <script src="assets/plugins/morris/morris.min.js" ></script>
    <script src="assets/plugins/morris/raphael-min.js" ></script>
    <script src="assets/js/pages/chart/morris/morris_home_data.js" ></script>
    <!-- end js include path -->
  </body>
</html>