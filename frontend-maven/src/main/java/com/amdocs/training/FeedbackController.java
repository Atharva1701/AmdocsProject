package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.ContactDAO;
import com.amdocs.training.dao.FeedbackDAO;
import com.amdocs.training.dao.impl.ContactDAOImpl;
import com.amdocs.training.dao.impl.FeedbackDAOImpl;
import com.amdocs.training.model.Contact;
import com.amdocs.training.model.Feedback;

@WebServlet("/feedback")
public class FeedbackController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html"); 
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("user_id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int f_id = Integer.parseInt(request.getParameter("f_id"));
		String mess = request.getParameter("feedback");
		
		FeedbackDAO dao = new FeedbackDAOImpl();
		Feedback f = new Feedback(id,name,email,f_id,mess);
		
		boolean saveFeedback = dao.saveFeedback(f);
		
		if(saveFeedback) {
			out.println("<h2>Feedback Saved Successfully!</h2>");
			out.println("<div style=\"text-align:center;\"><button type=\"button\" name=\"back\" onclick=\"history.back()\">Back</button></div>");
		}
		else {
			out.println("Try again!!");
		}
	}
}
