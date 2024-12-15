package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BLManager;
import com.model.Staff;

/**
 * Servlet implementation class DeleteStaffController
 */
@WebServlet("/DeleteStaffController")
public class DeleteStaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStaffController() {
        super();
        // TODO Auto-generated constructor stub
    }

	BLManager bl=new BLManager();
	Staff c=new Staff();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("staff_id"));
		c=bl.getStaffById(id);
		bl.deleteStaff(c);
		response.sendRedirect("view-staff.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
