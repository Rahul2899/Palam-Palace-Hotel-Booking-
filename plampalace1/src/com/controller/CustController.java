package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.BLManager;
import com.model.Customer;

/**
 * Servlet implementation class CustController
 */
@WebServlet("/CustController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 100, // 10MB
maxRequestSize = 1024 * 1024 * 500)

public class CustController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAV_DIR ="C:\\Users\\shrih\\OneDrive\\Desktop\\plampalace1\\WebContent\\pimages";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	BLManager bl=new BLManager();
	Customer c=new Customer();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String cust_name=request.getParameter("cust_name");
	    String cust_address=request.getParameter("cust_address");
	    String password=request.getParameter("password");
	    String cust_email=request.getParameter("cust_email");
	    String cust_phone=request.getParameter("cust_phone");
	    

	    Part filePart = request.getPart("cust_idproof");

		String fileName = filePart.getSubmittedFileName();
		String path = getServletContext().getRealPath(SAV_DIR + File.separator + fileName);
		try {

			filePart.write(SAV_DIR + File.separator + fileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
	c.setCust_name(cust_name);
	c.setCust_address(cust_address);
	c.setPassword(password);
	c.setCust_email(cust_email);
	c.setCust_phone(cust_phone);
	c.setCust_idproof(fileName);
	
	bl.saveCust(c);
	response.sendRedirect("add-cust.jsp");

	    }
	boolean uploadFile(InputStream is, String path1) {

		boolean test = false;
		try {
			byte[] by = new byte[is.available()];
			is.read();
			FileOutputStream fops = new FileOutputStream(path1);
			fops.write(by);
			fops.flush();
			fops.close();
			test = true;
		} catch (Exception e) {

			e.printStackTrace();
		}
		return test;

	}

	}


