package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.LoginDAO;
import com.amdocs.training.dao.impl.LoginDAOImpl;
import com.amdocs.training.model.Login;

@WebServlet("/loginuser")
public class LoginUserController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		int id = Integer.parseInt(request.getParameter("user_id"));
		String pass = request.getParameter("pass");
		if(id != 101 && pass !="atharva") {
			Login log = new Login(id,pass);
			LoginDAO dao = new LoginDAOImpl();
			
			boolean  validate = dao.validate(log);
			
			if(validate) {
//				out.println("Logged in Successfully!");
				request.setAttribute("user_id", id);
//				response.sendRedirect("showonlyuser.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("showonlyuser.jsp");
	            rd.include(request, response);

			}
			else {
				out.println("Try again!");
			}
		}
		else
			out.println("<h1>This is User Login only</h2>");
		
	}
}