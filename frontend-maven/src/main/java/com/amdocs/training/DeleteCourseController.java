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
@WebServlet("/coursedelete")
public class DeleteCourseController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("course_id"));
		
		CourseDAO dao = new CourseDAOImpl();
		Course c = new Course(id);
		
		boolean saveCourse = dao.delCourse(c);
		response.setContentType("text/html"); 
		if(saveCourse) {
			out.println("<h1>Course Deleted Successfully!</h2>");
			out.println("<button type=\"button\" name=\"back\" onclick=\"history.back()\">Back</button>");
		}
		else {
			out.println("Try again!!");
		}
	}
}
