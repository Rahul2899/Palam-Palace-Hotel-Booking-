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
import com.model.Room;
import com.utility.EmailUtility;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 * 
 * @author www.codejava.net
 * 
 */
@WebServlet("/EmailSendingServletForEvent")
public class EmailSendingServletForEvent extends HttpServlet {
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
		LocalDate eventDate = (LocalDate) session.getAttribute("eventDate");
		HotelBranch hotelBranch=(HotelBranch)session.getAttribute("hotelbranch");
		Event event=(Event) session.getAttribute("event");
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		//Room room = (Room) session.getAttribute("room");
		//long noofdays = (long) session.getAttribute("noofdays");
		// CityGuide cityGuide = (CityGuide) session.getAttribute("cityguide");

		String recepient_email = customer.getCust_email();
		String message = "<div><h4>Greetings from Palam Palace team," + customer.getCust_name()
				+ ". You have successfully booked a room in Palam Palace, " + hotelBranch.getBranch_location()
				+ "!!!</h4><hr><br><table border='1px' style='width:100%;background-color: #f1f1c1;border: 1px solid black;border-collapse: collapse;'><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Event ID</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>" +event.getE_id()
				+ "</td></tr><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Event Name</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>" + event.getEname()
				+ "</td></tr><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Event Hall Facility</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>" +event.getEvent_description()
				+ "<tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Event Date</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>" + dtf.format(eventDate)			
				+ "</td></tr><tr><th style='padding: 10px;text-align: left; border-collapse: collapse;'>Event Hall Rent</th><td style='padding: 10px;text-align: left; border-collapse: collapse;'>Rs " +Integer.parseInt(event.getPrice())
				+ "</td>" + "</tr></table></div>";
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