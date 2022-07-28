package com.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ZonalDao;
import com.model.ConfirmModel;


@WebServlet("/ZonalConfirm")
public class ZonalConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ZonalConfirm() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		ConfirmModel m1 = new ConfirmModel();
		m1.setZid(Integer.parseInt(request.getParameter("zid")));
		m1.setServiceid(Integer.parseInt(request.getParameter("serviceid")));
		m1.setBid(Integer.parseInt(request.getParameter("bid")));
		m1.setDate(request.getParameter("date"));
		m1.setTime(request.getParameter("time"));
		int x = new ZonalDao().confirmZonaldetails(m1);
		if(x>0)
		{
			response.sendRedirect("zonalprofile.jsp");
		}
		else 
		{
			response.sendRedirect("confirmservices.jsp");
		}
	}

}
