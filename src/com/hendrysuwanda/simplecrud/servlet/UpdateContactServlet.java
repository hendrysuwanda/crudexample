package com.hendrysuwanda.simplecrud.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hendrysuwanda.simplecrud.dao.ContactDAO;
import com.hendrysuwanda.simplecrud.domain.Contact;

public class UpdateContactServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String code = req.getParameter("code");
		
		ContactDAO dao = new ContactDAO();
		Contact contact = dao.fetchById(Long.parseLong(code));
		if(contact == null){
			System.out.println("Bah kok null contact");
		}
		req.setAttribute("contact", contact);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/pages/updatecontact.jsp");

		if (dispatcher != null){
		
			dispatcher.forward(req, resp);
		
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Contact contact = new Contact();
		contact.setCode(Long.parseLong(req.getParameter("code")));
		contact.setFirstName(req.getParameter("firstName"));
		contact.setLastName(req.getParameter("lastName"));
		contact.setSex(req.getParameter("sex"));
		contact.setPhone(req.getParameter("phone"));
		contact.setEmail(req.getParameter("email"));
		
		ContactDAO dao = new ContactDAO();
		dao.update(contact);
		
		resp.sendRedirect("/contact");
		
		
	}
}
