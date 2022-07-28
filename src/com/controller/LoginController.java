package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDao;
import com.model.CustomerModel;



@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		CustomerModel lmodel= new CustomerModel();
		
			lmodel.setEmail(request.getParameter("email"));
			lmodel.setPassword(request.getParameter("password"));
			CustomerModel model= new LoginDao().getuserdata(lmodel);
			if(model != null)
			{
				HttpSession session = request.getSession(true);
				
				session.setAttribute("model",model);
				 out.println("<script type=\"text/javascript\">");
			       out.println("alert('Login Sucessful');");
			       out.println("</script>");
			       request.getRequestDispatcher("home.jsp").include(request, response);
			}
			else
			{
				 out.println("<script type=\"text/javascript\">");
			       out.println("alert('Login not Sucessful');");
			       out.println("</script>");
			       request.getRequestDispatcher("login.jsp").include(request, response);
			}
		}
	}


