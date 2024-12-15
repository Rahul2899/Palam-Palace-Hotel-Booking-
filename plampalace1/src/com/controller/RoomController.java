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
import com.model.HotelBranch;
import com.model.Room;
import com.model.RoomType;

/**
 * Servlet implementation class RoomTypeController
 */
@WebServlet("/RoomController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 100, // 10MB
maxRequestSize = 1024 * 1024 * 500)
public class RoomController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAV_DIR ="C:\\Users\\shrih\\OneDrive\\Desktop\\plampalace1\\WebContent\\pimages";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomController() {
        super();
        // TODO Auto-generated constructor stub
    }

Room r=new Room();
BLManager bl= new BLManager();
HotelBranch hb=new HotelBranch();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int room_n=Integer.parseInt(request.getParameter("room_no"));
	RoomType roomType=bl.getRoomTypeByName(request.getParameter("room_type"));
	String ac_nonac=request.getParameter("ac_nonac");
	String meal=request.getParameter("meal");
	String room_summary=request.getParameter("room_summary");
	String tel=request.getParameter("tel");
	String rent=request.getParameter("rent");
	String bed_capacity=request.getParameter("bed_capacity"); 
	String desc=request.getParameter("desc");
	//String img=request.getParameter("fname");

	String	branch=request.getParameter("branch");
	 Part filePart = request.getPart("fname");

		String fileName = filePart.getSubmittedFileName();
		String path = getServletContext().getRealPath(SAV_DIR + File.separator + fileName);
		try {

			filePart.write(SAV_DIR + File.separator + fileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		r.setRoom_no(room_n);
		r.setRoom_description(desc);
		r.setRoom_img(fileName);

		r.setRoom_type(roomType);
		//r.setAc_nonac(ac_nonac);
		//r.setMeal(meal);
		r.setRoom_summary(room_summary);
		//r.setTel(tel);
		r.setRent(rent);
		r.setBed_capacity(bed_capacity);
		hb=bl.SearchByBranch(branch);
		r.setHotelBranch(hb);
		r.setBed_capacity(bed_capacity);
		
		
		
		
		bl.saveRoom(r);
		response.sendRedirect("all_rooms.jsp");
		
		
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
