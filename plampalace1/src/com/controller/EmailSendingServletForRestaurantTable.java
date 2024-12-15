package com.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.model.Customer;
import com.model.Event;
import com.model.HotelBranch;
import com.model.RestaurantTableBooking;
import com.model.Room;
import com.utility.EmailUtility;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 * 
 * @author www.codejava.net
 * 
 */
@WebServlet("/EmailSendingServletForRestaurantTable")
public class EmailSendingServletForRestaurantTable extends HttpServlet {
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// reads form fields
		HttpSession session = request.getSession();
		Customer customer = (Customer) session.getAttribute("customer");
		// LocalDate eventDate = (LocalDate) session.getAttribute("eventDate");
		HotelBranch hotelBranch = (HotelBranch) session.getAttribute("hotelbranch");
		Event event = (Event) session.getAttribute("event");
		RestaurantTableBooking tableBooking = (RestaurantTableBooking) session.getAttribute("resttab");
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("hh:mm a");
		// Room room = (Room) session.getAttribute("room");
		// long noofdays = (long) session.getAttribute("noofdays");
		// CityGuide cityGuide = (CityGuide) session.getAttribute("cityguide");

		String recepient_email = customer.getCust_email();
		String message = "<div><h4>Greetings from Palam Palace team," + customer.getCust_name()
				+ ". You have successfully booked a room in Palam Palace, " + tableBooking.getHotelBranch().getBranch_location()
				+ "!!!</h4><hr><br><table border='1px' style='width:100%;background-color: #f1f1c1;border: 1px solid black;border-collapse: collapse;'><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Booking Charges</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>Rs 100</td></tr><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Table No</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>"
				+ tableBooking.getTableno()
				+ "</td></tr><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>No of Guests</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>"
				+ tableBooking.getNoofGuests()
				+ "<tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Date</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>"
				+ dtf.format(tableBooking.getReservationDate())
				+ "</td></tr><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Time</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>"
				+ dtf1.format(tableBooking.getReservationTime()) + "</td>" + "</tr></table></div>";
		String resultMessage = "";
		session.removeAttribute("id");

		try {
			EmailUtility.sendEmail(host, port, user, pass, recepient_email, message);
			resultMessage = "The e-mail was sent successfully";
			session.invalidate();
			System.out.println(resultMessage);
			response.sendRedirect("index.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		}

	}
}