package com.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.EventDaoImpl;
import com.model.Event;

/**
 * Servlet implementation class EventController
 */
@WebServlet("/EventController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 100, // 10MB
maxRequestSize = 1024 * 1024 * 500)
public class EventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAV_DIR ="C:\\Users\\shrih\\OneDrive\\Desktop\\plampalace1\\WebContent\\pimages";
       
 
    public EventController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ename=request.getParameter("ename");
		String eprice=request.getParameter("eprice");
		String esummary=request.getParameter("esummary");
		 Part filePart = request.getPart("fname");

			String fileName = filePart.getSubmittedFileName();
			String path = getServletContext().getRealPath(SAV_DIR + File.separator + fileName);
			try {

				filePart.write(SAV_DIR + File.separator + fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		Event e=new Event();
		e.setEname(ename);
		e.setPrice(eprice);
		e.setEimg(fileName);
		e.setEvent_summary(esummary);
		EventDaoImpl edao=new EventDaoImpl();
		edao.addEvent(e);
		response.sendRedirect("add-event.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
