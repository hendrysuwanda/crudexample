package com.hendrysuwanda.simplecrud.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hendrysuwanda.simplecrud.dao.ContactDAO;
import com.hendrysuwanda.simplecrud.domain.Contact;

public class AddContactServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/pages/addcontact.jsp");

		if (dispatcher != null){
		
			dispatcher.forward(req, resp);
		
		} 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		System.out.println("ada di panggil");
		
		Contact contact = new Contact();
		contact.setFirstName(req.getParameter("firstName"));
		contact.setLastName(req.getParameter("lastName"));
		contact.setSex(req.getParameter("sex"));
		contact.setPhone(req.getParameter("phone"));
		contact.setEmail(req.getParameter("email"));
		
		ContactDAO dao = new ContactDAO();
		dao.insert(contact);
		
		resp.sendRedirect("/contact");
	}
}


