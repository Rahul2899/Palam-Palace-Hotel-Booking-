package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BLManager;
import com.model.Booking;

/**
 * Servlet implementation class DeleteBooking
 */
@WebServlet("/DeleteBookingController")
public class DeleteBookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	BLManager bl=new BLManager();
	Booking c=new Booking();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("b_id"));
		c=bl.getBookingById(id);
		bl.deleteBooking(c);
		response.sendRedirect("view-booking.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
