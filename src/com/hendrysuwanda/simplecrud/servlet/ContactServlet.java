package com.hendrysuwanda.simplecrud.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hendrysuwanda.simplecrud.dao.ContactDAO;
import com.hendrysuwanda.simplecrud.domain.Contact;

public class ContactServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ContactDAO dao = new ContactDAO();
		List<Contact> contacts = dao.fetchAll();
		req.setAttribute("data", contacts);
		RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/pages/contacts.jsp");

		if (dispatcher != null){
		
			dispatcher.forward(req, resp);
		
		} 
	}
}
