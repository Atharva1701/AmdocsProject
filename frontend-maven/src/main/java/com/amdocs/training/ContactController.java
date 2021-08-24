package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.ContactDAO;
import com.amdocs.training.dao.impl.ContactDAOImpl;
import com.amdocs.training.model.Contact;

@WebServlet("/contact")
public class ContactController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html"); 
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("user_id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		long phone = Long.parseLong(request.getParameter("phone_no"));
		String mess = request.getParameter("message");
		int contact_id = Integer.parseInt(request.getParameter("contact_id"));
		
		ContactDAO dao = new ContactDAOImpl();
		Contact contact = new Contact(id,name,email,phone,mess,contact_id);
		
		boolean saveContact = dao.saveContact(contact);
		
		if(saveContact) {
			out.println("<h1>Contact Saved Successfully!</h1>");
		}
		else {
			out.println("Try again!!");
		}
	}
}
