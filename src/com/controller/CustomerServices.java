package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Customerdao;
import com.model.BookServices;


@WebServlet("/CustomerServices")
public class CustomerServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CustomerServices() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookServices b1 = new BookServices();
		b1.setServiceid(Integer.parseInt(request.getParameter("serviceid")));
		b1.setAddress(request.getParameter("address"));
		b1.setPincode(Integer.parseInt(request.getParameter("pincode")));
		b1.setCname(request.getParameter("name"));
		b1.setMobno(request.getParameter("mobno"));
		b1.setTotal(Float.parseFloat(request.getParameter("total")));
		b1.setStatus("Pending");
		b1.setZone(request.getParameter("zone"));
		int x = new Customerdao().bookDetails(b1);
		if(x>0)
		{
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("services.jsp");
		}
	}

}
