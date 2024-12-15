package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.EventDaoImpl;
import com.model.Event;


@WebServlet("/EventBookingConfirmation")
public class EventBookingConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eid=Integer.parseInt(request.getParameter("eid"));
		EventDaoImpl edao=new EventDaoImpl();
		Event event=edao.getEventById(eid);
		System.out.println(event);
		HttpSession session=request.getSession();
		session.setAttribute("event", event);
		response.sendRedirect("event-booking-conf.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
