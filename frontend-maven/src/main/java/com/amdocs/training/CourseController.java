package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.CourseDAO;
import com.amdocs.training.dao.impl.CourseDAOImpl;
import com.amdocs.training.model.Course;
@WebServlet("/course")
public class CourseController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("course_id"));
		String c_name = request.getParameter("c_name");
		double c_fees = Double.parseDouble(request.getParameter("c_fees"));
		String c_desp = request.getParameter("c_desp");
		String c_resource = request.getParameter("c_resource");
		
		CourseDAO dao = new CourseDAOImpl();
		Course c = new Course(id, c_name, c_fees, c_desp, c_resource);
		
		boolean saveCourse = dao.saveCourse(c);
		response.setContentType("text/html"); 
		if(saveCourse) {
			out.println("<h1>Course Saved Successfully!</h2>");
		}
		else {
			out.println("Try again!!");
		}
	}
}
