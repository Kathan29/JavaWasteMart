package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.model.Services;
import com.model.SubServices;

/**
 * Servlet implementation class Admin_SubServices
 */
@WebServlet("/Admin_SubServices")
public class Admin_SubServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_SubServices() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action= request.getParameter("action");
		if(action.equals("add"))
		{
			SubServices s1 = new SubServices();
		
			s1.setServiceid(Integer.parseInt(request.getParameter("serviceid")));	
			s1.setSubname(request.getParameter("subname"));
			s1.setPrice(Integer.parseInt(request.getParameter("subprice")));
			int x=new AdminDao().addSubServicesdetails(s1);
			if(x>0)
			{
				response.sendRedirect("admin/dashboard.jsp");
			}
			else
			{
				response.sendRedirect("admin/subservices.jsp");
			}
	}

}
}
