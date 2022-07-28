package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.model.BookServices;


@WebServlet("/UpdateServices")
public class UpdateServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServices() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookServices b1 = new BookServices();
		b1.setStatus("Approved");
		b1.setZone(request.getParameter("zone"));
		b1.setBid(Integer.parseInt(request.getParameter("bid")));
		int x = new AdminDao().doUpdateBookData(b1);
		if(x>0)
		{
			response.sendRedirect("admin/book.jsp");
		}
		else
		{
			response.sendRedirect("admin/approveservices.jsp");
		}
	}

}
