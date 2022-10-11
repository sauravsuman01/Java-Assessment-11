package com.test;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
	    HttpSession http = request.getSession();
		Random rand = new Random();
		

	    int booking_id = rand.nextInt(1000);

		System.out.println("==============Register servlet called=================");
		
		String name = request.getParameter("name");
		String city = request.getParameter("city");
		String phone = request.getParameter("phone");
		String destination =request.getParameter("destination");
		int weight = Integer.parseInt(request.getParameter("weight"));		
		
		Details details = new Details();
		details.setName(name);
		details.setCity(city);
		details.setPhone(phone);
		details.setDestination(destination);
		details.setWeight(weight);
		details.setBooking_id(booking_id);
		http.setAttribute("booking_id", details.getBooking_id());
		DetailsDao.save(details);
						
		RequestDispatcher rd = request.getRequestDispatcher("Payment.jsp");
		rd.include(request, response);
		
	}

}
