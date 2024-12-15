package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.BLManager;
import com.model.Booking;
import com.model.Customer;
import com.model.HotelBranch;
import com.model.Room;

/**
 * Servlet implementation class BookingController
 */
@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	BLManager bl=new BLManager();
	Customer c=new Customer();
	Room r=new Room();
	HotelBranch hb=new HotelBranch();
	Booking b=new Booking();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String booking_date=request.getParameter("booking_date");
		    
		    Date checkin_date = null;
			try {
				checkin_date = new SimpleDateFormat().parse(request.getParameter("checkin_date"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    String checkin_time=request.getParameter("checkin_time");
		    Date checkout_date = null;
			try {
				checkout_date = new SimpleDateFormat().parse(request.getParameter("checkout_date"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    String checkout_time=request.getParameter("checkout_time");
		    String branch=request.getParameter("branch");
		    int room=Integer.parseInt(request.getParameter("room"));
		    String customer=request.getParameter("customer");
		    hb=bl.SearchByBranch(branch);
		    r=bl.SearchByRoom_no(room);
		    c=bl.SearchByCustomer(customer);		    
			//b.setBooking_date(booking_date);
			//b.setCheckin_date((Local)checkin_date);
			//b.setCheckin_time(checkin_time);
			//b.setCheckout_date(checkout_date);
			//b.setCheckout_time(checkout_time);
			b.setHotel(hb);
			b.setRoom(r);
			b.setCustomer(c);
		bl.saveBooking(b);
		response.sendRedirect("add-booking.jsp");

		    }
		
}
