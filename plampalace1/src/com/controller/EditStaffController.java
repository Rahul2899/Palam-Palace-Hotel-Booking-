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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.BLManager;
import com.model.Staff;

/**
 * Servlet implementation class EditStaffController
 */
@WebServlet("/EditStaffController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 100, // 10MB
maxRequestSize = 1024 * 1024 * 500)
public class EditStaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAV_DIR ="C:\\Users\\Vaibhav Rohade\\Desktop\\Project1\\palamp1\\plampalace1\\WebContent\\pimages";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditStaffController() {
        super();
        // TODO Auto-generated constructor stub
    }

   Staff c=new Staff();
    BLManager bl=new BLManager();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("staff_id"));
		c=bl.getStaffById(id);
		HttpSession ses = request.getSession();
		ses.setAttribute("list", c);
		response.sendRedirect("edit-staff.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String staff_fname=request.getParameter("staff_fname");
		    String staff_lname=request.getParameter("staff_lname");
		    String staff_email=request.getParameter("staff_email");
		    String staff_joinDate=request.getParameter("staff_joinDate");
		    String staff_designationl=request.getParameter("staff_designationl");
		    String staff_geneder=request.getParameter("staff_geneder");
		    String staff_phone=request.getParameter("staff_phone");
		    

		    Part filePart = request.getPart("staff_idproof");

			String fileName = filePart.getSubmittedFileName();
			String path = getServletContext().getRealPath(SAV_DIR + File.separator + fileName);
			try {

				filePart.write(SAV_DIR + File.separator + fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			c.setStaff_fname(staff_fname);
			c.setStaff_lname(staff_lname);
			c.setStaff_email(staff_email);
			c.setStaff_joinDate(staff_joinDate);
			c.setStaff_designationl(staff_designationl);
			c.setStaff_geneder(staff_geneder);
			c.setStaff_phone(staff_phone);
			c.setStaff_idproof(fileName);
		
		bl.updateStaff(c);
		response.sendRedirect("view-staff.jsp");

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
