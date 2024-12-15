package com.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.dao.RestaurantTableDaoImpl;
import com.model.Customer;
import com.model.HotelBranch;
import com.model.RestaurantTableBooking;


@WebServlet("/BookTable")
public class BookTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tableno=Integer.parseInt(request.getParameter("table_no"));
		String noofguests=request.getParameter("noofguests");
		LocalDate date=LocalDate.parse(request.getParameter("rdate"),DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		//System.out.println(req);
		HttpSession session=request.getSession();
		LocalTime time=LocalTime.parse(request.getParameter("rtime"));
		Customer customer=(Customer) session.getAttribute("customer");
		HotelBranch hotelBranch=(HotelBranch) session.getAttribute("hotelbranch");
		RestaurantTableDaoImpl restdao=new RestaurantTableDaoImpl();
		RestaurantTableBooking booking=new RestaurantTableBooking();
		booking.setCustomer(customer);
		booking.setHotelBranch(hotelBranch);
		booking.setNoofGuests(noofguests);
		booking.setReservationCharges("100");
		booking.setTableno(tableno);
		booking.setReservationDate(date);
		booking.setReservationTime(time);
		session.setAttribute("resttab",booking);
		restdao.bookTable(booking);
		response.sendRedirect("EmailSendingServletForRestaurantTable");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
