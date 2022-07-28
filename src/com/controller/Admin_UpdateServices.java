package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;

import com.model.Services;


@WebServlet("/Admin_UpdateServices")
public class Admin_UpdateServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Admin_UpdateServices() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String action= request.getParameter("action");
	int serviceid;
	if(action.equals("delete"))
	{
		serviceid=Integer.parseInt(request.getParameter("serviceid"));
		int x= new AdminDao().deletedetails(serviceid);
		if(x>0)
		{
			 response.sendRedirect("admin/dashboard.jsp");
		}
		else
		{
			 response.sendRedirect("admin/viewservices.jsp");
		}
	}
	
	}
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action= request.getParameter("action");
		if(action.equals("edit"))
		{
			Services s2 = new Services();
			s2.setServiceid(Integer.parseInt(request.getParameter("serviceid")));			
			s2.setServicename(request.getParameter("servicename"));
			s2.setPrice(Integer.parseInt(request.getParameter("price")));
			int x = new AdminDao().doUpdateServiceData(s2);
			if(x>0)
			{
			 request.setAttribute("s2", s2);
			 response.sendRedirect("admin/dashboard.jsp");
			}
		
		else
		{
			request.getRequestDispatcher("admin/viewservices.jsp").include(request, response);
		}

}
}}
