package com.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ZonalDao;
import com.model.ZonalModel;


@WebServlet("/ZonalController")
public class ZonalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public ZonalController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ZonalModel z1 =new ZonalModel();
		z1.setName(request.getParameter("name"));
		z1.setEmail(request.getParameter("email"));
		z1.setGender(request.getParameter("gender"));
		z1.setZone(request.getParameter("zone"));
		z1.setMobno(request.getParameter("mobno"));
		z1.setUserid(z1.getName()+z1.getMobno());
		z1.setPassword(z1.getMobno());
		int x = new ZonalDao().addZonaldetails(z1);
		if(x>0)
		{
			String userid=z1.getUserid();
			String password=z1.getPassword();
			String emailid = z1.getEmail();
			final String Senderid = "ldcollege4@gmail.com";
			final String pass = "dummy@2021";

			Properties props = new Properties();

			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
			Session session = Session.getInstance(props, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(Senderid, pass);
				}
			});
try {
	Message message = new MimeMessage(session);
	message.setFrom(new InternetAddress(Senderid));
	message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailid));// to
																					// mail
																					// address.
	message.setSubject("Zonal Credintials");
	String msg1 = "<!DOCTYPE html><html><head></head><body><center><div style='background-color:#f8f8f8; width:500px; height:200px'><div style='background-color:#00e58b; width:500px; height:50px'><h3 style='color:white; padding-top:10px;'>EmailDemo.com </h3></div><p style='color:gray; margin-left:-300px;'>This is your userid "
			+ userid + ",</p><br><p style='color:gray; margin-top:-10px;'>"  + password
			+ "  is your  Password.Do NOT share this with anyone for security reasons.</p><div></center></body></html>";
	message.setContent(msg1, "text/html; charset=utf-8");

	Transport.send(message);
	response.sendRedirect("admin/zonalinfo.jsp");
} catch (Exception e) {
//	request.setAttribute("SendOtpError", "Otp Not Send");
//	request.getRequestDispatcher("admin/dashboard.jsp").forward(request, response);
	response.sendRedirect("admin/dashboard.jsp");
}
			
		}
		else
		{
			response.sendRedirect("admin/zonalregistration.jsp");
		}
	}

}
