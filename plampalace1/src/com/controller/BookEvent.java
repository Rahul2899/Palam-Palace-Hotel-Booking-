package com.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.EventDaoImpl;
import com.model.Customer;
import com.model.Event;
import com.model.EventBooking;
import com.model.HotelBranch;


@WebServlet("/BookEvent")
public class BookEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate eventDate=LocalDate.parse(request.getParameter("edate"), dtf);
		HttpSession session=request.getSession();
		session.setAttribute("eventDate",eventDate);
		Event event=(Event) session.getAttribute("event");
		Customer customer=(Customer) session.getAttribute("customer");
		HotelBranch hotelBranch=(HotelBranch) session.getAttribute("hotelbranch");
		EventBooking eb=new EventBooking(eventDate, event, hotelBranch,customer);
		EventDaoImpl edao=new EventDaoImpl();
		edao.bookEvent(eb);
		response.sendRedirect("EmailSendingServletForEvent");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
