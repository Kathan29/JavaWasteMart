package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.model.Services;


@WebServlet("/Admin_Services")
public class Admin_Services extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Admin_Services() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Services s1 = new Services();
		s1.setServicename(request.getParameter("servicename"));
		s1.setPrice(Integer.parseInt(request.getParameter("price")));
		int x = new AdminDao().addServicesdetails(s1);
		if(x>0)
		{
			response.sendRedirect("admin/dashboard.jsp");
		}
		else
		{
			response.sendRedirect("admin/addservices.jsp");
		}
	}
}
