package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.UserDAO;
import com.amdocs.training.dao.impl.UserDAOImpl;
import com.amdocs.training.model.User;

import sun.awt.RepaintArea;

@WebServlet("/register")
public class UserController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("user_id"));
		String name = request.getParameter("name");
		long phone = Long.parseLong(request.getParameter("phone_no"));
		String email = request.getParameter("email");
		String add = request.getParameter("address");
		String reg = request.getParameter("reg_date");
		String password = request.getParameter("password");
		String upload = request.getParameter("upload_photo");

		User user = new User(id, name, phone, email, add, reg,password,upload);
		
		UserDAO dao = new UserDAOImpl();
		
		boolean saveUser = dao.saveUser(user);
		
		if(saveUser) {
			out.println("User Saved Successfully!");
		}
		else {
			out.println("try again");
		}
		

	}
}
