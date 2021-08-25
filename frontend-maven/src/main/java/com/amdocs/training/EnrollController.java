package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.EnrollDAO;
import com.amdocs.training.dao.impl.EnrollDAOImpl;
import com.amdocs.training.model.Enroll;
@WebServlet("/courseenroll")
public class EnrollController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		int uid = Integer.parseInt(request.getParameter("user_id"));
		int cid = Integer.parseInt(request.getParameter("course_id"));
		
		EnrollDAO dao = new EnrollDAOImpl();
		Enroll e = new Enroll(uid, cid);
		
		boolean saveEnroll = dao.saveEnroll(e);
		response.setContentType("text/html"); 
		if(saveEnroll) {
			out.println("<h1>Course Enrolled Successfully!</h2>");
			out.println("<div style=\"text-align:center;\"><button type=\"button\" name=\"back\" onclick=\"history.back()\">Back</button></div>");
		}
		else {
			out.println("Try again!!");
		}
	}
}
