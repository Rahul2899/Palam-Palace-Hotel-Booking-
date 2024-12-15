package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BLManager;
import com.model.HotelBranch;
import com.model.Room;


@WebServlet("/CityController")
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int hbid=Integer.parseInt(request.getParameter("hbid"));
		HttpSession session=request.getSession();
		BLManager bl=new BLManager();
		HotelBranch branch=bl.getHotelBranchById(hbid);
		
		//List<Room> rlist=bl.getRoomByHotelBranch(branch);
		session.setAttribute("hotelbranch",branch);
		//System.out.println(rlist);
	response.sendRedirect("index.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
