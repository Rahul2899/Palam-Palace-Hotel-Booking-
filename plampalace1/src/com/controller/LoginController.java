package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BLManager;
import com.model.Customer;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();

		String cust_email = request.getParameter("cust_email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		Customer c = new Customer();
		BLManager bl = new BLManager();
		if (cust_email.equals("admin@gmail.com") && password.equals("admin")) {

			pw.println(
					"<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			pw.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			pw.println("<script>");
			pw.println("$(document).ready(function(){");
			pw.println("swal ( 'WELCOME' ,  'successfull !' ,  'success' );");
			pw.println("});");
			pw.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("admin-index.jsp");
			rd.include(request, response);
		} else if (bl.validate(cust_email, password, session)) {

			session.setAttribute("c", c);
			pw.println(
					"<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			pw.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			pw.println("<script>");
			pw.println("$(document).ready(function(){");
			pw.println("swal ( 'WELCOME' ,  'successfull !' ,  'success' );");
			pw.println("});");
			pw.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		} else {
			pw.println(
					"<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			pw.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			pw.println("<script>");
			pw.println("$(document).ready(function(){");
			pw.println("swal ( 'SORRY' ,  'Incorrect username or password !' ,  'error' );");
			pw.println("});");
			pw.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}

	}

}
