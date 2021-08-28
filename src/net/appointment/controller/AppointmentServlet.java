package net.appointment.controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.net.PasswordAuthentication;
import javax.mail.*;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;
import com.sun.xml.internal.fastinfoset.sax.Properties;

import net.appointment.model.Appointment;

/**
 * Servlet implementation class AppointmentServlet
 */
@WebServlet("/register")
public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private net.appointment.dao.appointmentdao appointmentdao=new net.appointment.dao.appointmentdao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentServlet()
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("/First.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String Name=request.getParameter("Name");
		String Age=request.getParameter("Age");
		String DOB=request.getParameter("DOB");
		String Blood_Group=request.getParameter("Blood_Group");
		String Address=request.getParameter("Address");
		String Mobile_Number=request.getParameter("Mobile_Number");
		String Email=request.getParameter("Email");
		String Date=request.getParameter("Date");
		
		Appointment appointment=new Appointment();
		appointment.setName(Name);
		appointment.setAge(Age);
		appointment.setDOB(DOB);
		appointment.setBlood_Group(Blood_Group);
		appointment.setAddress(Address);
		appointment.setMobile_Number(Mobile_Number);
		appointment.setEmail(Email);
		appointment.setDate(Date);
		
		
		final String email=request.getParameter(Email);
		final String from="cityhospital@gmail.com";
		final String pass="A12345678B";
		final String messg= "Doctor is avialable That Day";
		String host="smpt.gmail.com";
		Properties prop=new Properties(); 
	
		try {
		appointmentdao.appointment(appointment);
		
		}catch (ClassNotFoundException e)
		{
			e.printStackTrace();
			// TODO: handle exception
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("/Upload.jsp");
		dispatcher.forward(request, response);
	}

}
