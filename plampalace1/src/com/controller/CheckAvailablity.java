package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BLManager;
import com.model.Booking;
import com.model.Customer;
import com.model.HotelBranch;
import com.model.Room;
import com.model.RoomType;

/**
 * Servlet implementation class CheckAvailablity
 */
@WebServlet("/CheckAvailablity")
public class CheckAvailablity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAvailablity() {
        super();
        // TODO Auto-generated constructor stub
    }

	BLManager bl=new BLManager();
	HotelBranch hb=new HotelBranch();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int rid=Integer.parseInt(request.getParameter("rid"));
		HttpSession session=request.getSession();
		HotelBranch hotelBranch=(HotelBranch) session.getAttribute("hotelbranch");
		Customer customer=(Customer) session.getAttribute("customer");
		String noofGuests=request.getParameter("noofguests");
		session.setAttribute("noofGuests", noofGuests);
		DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate checkin_date=LocalDate.parse(request.getParameter("checkin_date"), dtf);
		LocalDate checkout_date=LocalDate.parse(request.getParameter("checkout_date"), dtf);
		
		//checkin_date  = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("checkin_date"));
		session.setAttribute("checkin_date", checkin_date);
		//checkout_date=new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("checkout_date"));
		session.setAttribute("checkout_date", checkout_date);
		
				
		String roomType=request.getParameter("roomType");
		System.out.println(checkin_date+", "+checkout_date+", "+roomType);
		RoomType type=bl.getRoomTypeByName(roomType);
		//SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		List<Booking> list=bl.getRoomByCheckinCheckout(checkin_date, checkout_date, hotelBranch, type);
		checkin_date=LocalDate.of(checkin_date.getYear(),checkin_date.getMonthValue(),checkin_date.getDayOfMonth());
		checkout_date=LocalDate.of(checkout_date.getYear(),checkout_date.getMonthValue(),checkout_date.getDayOfMonth());
		//Period p=Period.between(checkin_date, checkout_date);
		//System.out.println("Days: "+p.getDays());
		
		long noofdays = ChronoUnit.DAYS.between(checkin_date, checkout_date);
		System.out.println("Days: "+noofdays);
		session.setAttribute("noofdays",noofdays);
		PrintWriter pw=response.getWriter();
		System.out.println("Hi");
		if(list.size()>0) {
			pw.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			pw.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			pw.println("<script>");
			pw.println("$(document).ready(function(){");
			pw.println("swal ( 'SORRY' ,  'No room available for selectives !' ,  'error' );");
			pw.println("});");
			pw.println("</script>"); 
			RequestDispatcher rd = request.getRequestDispatcher("index_ahmedabad.jsp");
			rd.include(request, response);
		}
		else {
			List<Room> rlist=bl.getRoomsByHbAndRoomType(hotelBranch, type);
			session.setAttribute("rlist", rlist);
			rlist.forEach(System.out::println);
			response.sendRedirect("room.jsp");
		}
		
		
		//				 Booking booking=new Booking(); booking.setCheckin_date(checkin_date);
//		 booking.setCheckout_date(checkout_date); booking.setHotel(hotelBranch);
//		 booking.setRoomType(type); booking.setCustomer(customer);
//		 System.out.println(booking); session.setAttribute("booking",booking);
//		 bl.saveBooking(booking);
		 
		/*
		 * List<Booking> blist=bl. List<Room>list=bl.checkRooms(id);
		 */
		//session.setAttribute("list",list);
	//	System.out.println(list);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
