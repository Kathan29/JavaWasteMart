package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ZonalDao;
import com.model.ZonalModel;

/**
 * Servlet implementation class ZonalloginController
 */
@WebServlet("/ZonalloginController")
public class ZonalloginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ZonalloginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ZonalModel z1 = new ZonalModel();
		z1.setUserid(request.getParameter("userid"));
		z1.setPassword(request.getParameter("password"));
		ZonalModel model = new ZonalDao().getZonalData(z1);
		if(model!= null)
		{
			HttpSession session = request.getSession(true);
			
			session.setAttribute("model",model);
			response.sendRedirect("zonalhome.jsp");
		}
		else {
			response.sendRedirect("zonallogin.jsp");
		}
	}

}
