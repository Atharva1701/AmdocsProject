package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.LoginDAO;
import com.amdocs.training.dao.impl.LoginDAOImpl;
import com.amdocs.training.model.Login;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("user_id"));
		String pass = request.getParameter("pass");
		
			Login log = new Login(id,pass);
			LoginDAO dao = new LoginDAOImpl();
			
			boolean  validate = dao.validate(log);
			
			if(validate) {
//				out.println("Logged in Successfully!");
				response.sendRedirect("showuser.jsp");
			}
			else {
				out.println("Try again!");
			}
		
	}
}
