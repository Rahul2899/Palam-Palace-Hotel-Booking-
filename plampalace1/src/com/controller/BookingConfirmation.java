package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BLManager;
import com.model.Room;


@WebServlet("/BookingConfirmation")
public class BookingConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BLManager bl=new BLManager();
		int rid=Integer.parseInt(request.getParameter("rid"));
		Room room=bl.SearchByRoom(rid);
		HttpSession session=request.getSession();
		session.setAttribute("room", room);
		response.sendRedirect("booking-confirmation.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
