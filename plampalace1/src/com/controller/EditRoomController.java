package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BLManager;
import com.model.HotelBranch;
import com.model.Room;

/**
 * Servlet implementation class EditRoomController
 */
@WebServlet("/EditRoomController")
public class EditRoomController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditRoomController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    BLManager bl=new BLManager();
    Room r=new Room();
    HotelBranch hb=new HotelBranch();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String id1 = request.getParameter("id");
		int id = Integer.parseInt(id1);
		r= bl.SearchByRoom(id);

		HttpSession ses = request.getSession();
		ses.setAttribute("list", r);

		response.sendRedirect("edit_room.jsp");

	
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int room_n=Integer.parseInt(request.getParameter("room_no"));
		String room_type=request.getParameter("room_type");
		String ac_nonac=request.getParameter("ac_nonac");
		String meal=request.getParameter("meal");
		String room_summary=request.getParameter("room_summary");
		String tel=request.getParameter("tel");
		String rent=request.getParameter("rent");
		String branch=request.getParameter("branch");

		//	r.setRoom_no(room_n);
		//	r.setRoom_type(room_type);
		//	r.setAc_nonac(ac_nonac);
		//	r.setMeal(meal);
			r.setRoom_summary(room_summary);
		//	r.setTel(tel);
			r.setRent(rent);
			
			hb=bl.SearchByBranch(branch);
		//	r.setBranch(hb);
			bl.updateRoom(r);
			response.sendRedirect("all_rooms.jsp");
		
		
	}

}
