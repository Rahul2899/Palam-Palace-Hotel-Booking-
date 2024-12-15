package com.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BLManager;
import com.model.Booking;
import com.model.Customer;
import com.model.Room;


@WebServlet("/BookNowServ")
public class BookNowServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		Room room=(Room) session.getAttribute("room");
		session.getAttribute("checkin_date");
		session.getAttribute("checkout_date");
		Customer customer=(Customer) session.getAttribute("customer");
		Booking b=new Booking();
		b.setCheckin_date((LocalDate)session.getAttribute("checkin_date"));
		b.setCheckout_date((LocalDate)session.getAttribute("checkout_date"));
		b.setCustomer(customer);
		b.setRoom(room);
		b.setHotel(room.getHotelBranch());
		b.setRoomType(room.getRoom_type());
		BLManager bl=new BLManager();
		bl.saveBooking(b);
		System.out.println("Booked Successfully");
		response.sendRedirect("EmailSendingServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
