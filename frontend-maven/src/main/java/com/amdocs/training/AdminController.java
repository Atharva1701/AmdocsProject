package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.AdminDAO;
import com.amdocs.training.dao.impl.AdminDAOImpl;
import com.amdocs.training.model.Admin;


@WebServlet("/admin")
public class AdminController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String pass = request.getParameter("password");
		String email = request.getParameter("email");
		
		AdminDAO dao = new AdminDAOImpl();
		Admin ad = new Admin(id,name,pass,email);
		
		boolean saveAdmin = dao.saveAdmin(ad);
		
		if(saveAdmin) {
			out.println("Admin Saved Successfully!");
		}
		else {
			out.println("Try again!!");
		}
	}

}
