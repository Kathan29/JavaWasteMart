package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Customerdao;
import com.model.CustomerModel;



@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CustomerController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		CustomerModel cmodel=new CustomerModel();
		
			cmodel.setName(request.getParameter("name"));
			cmodel.setEmail(request.getParameter("email"));
			cmodel.setGender(request.getParameter("gender"));
			cmodel.setAddress(request.getParameter("address"));
			cmodel.setMobno(request.getParameter("mobno"));
			cmodel.setPassword(request.getParameter("password"));
			int x=new Customerdao().doInsertData(cmodel);
			if(x>0)
			{
				 out.println("<script type=\"text/javascript\">");
			       out.println("alert('Registration Sucessful');");
			       out.println("</script>");
			       request.getRequestDispatcher("login.jsp").include(request, response);
			}
			else
			{
				 out.println("<script type=\"text/javascript\">");
			       out.println("alert('Registration not sucessful');");
			       out.println("</script>");
			       request.getRequestDispatcher("registration.jsp").include(request, response);
			}
	}
	
}
