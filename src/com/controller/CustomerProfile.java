package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.LoginDao;

import com.model.CustomerModel;



@WebServlet("/CustomerProfile")
public class CustomerProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CustomerProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		CustomerModel hmodel = new CustomerModel();
		hmodel.setCustomer_id(Integer.parseInt(request.getParameter("customerid")));
		hmodel.setName(request.getParameter("name"));
		hmodel.setEmail(request.getParameter("email"));
		hmodel.setGender(request.getParameter("gender"));
		hmodel.setAddress(request.getParameter("address"));
		hmodel.setMobno(request.getParameter("mobno"));
		
		int x=new LoginDao().doUpdateUserData(hmodel);
		if(x>0)
		{
			
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Updated Sucessful');");
		       out.println("</script>");
		       request.getRequestDispatcher("home.jsp").include(request, response);
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
		       out.println("alert('Updated not Sucessful');");
		       out.println("</script>");
		       request.getRequestDispatcher("profile.jsp").include(request, response);
		}
	}

}
