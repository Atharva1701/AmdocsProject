package com.amdocs.training;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import com.amdocs.training.db.DataSourceUtil;
@WebServlet("/showonlyuser")
public class ShowUserController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		DataSource dataSource = DataSourceUtil.dataSource();
		response.setContentType("text/html");  
        out.println("<html><body>");  
        out.println("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\"><style> .float-container{padding: 10px;margin: 20px;} .float-child-left{float: left;	}	.float-child-right{width: 100px;float: right;	}</style>");
        int id = Integer.parseInt(request.getParameter("user_id"));
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery("select * from user where user_id = "+id);
            out.println("<table  class=\"table table-bordered\">");  
            out.println("<tr><th>User Id</th><th>Name</th><th>Phone</th><th>Email</th><th>Address</th><th>Reg. Date</th><th>Password</th><th>Photo</th><tr>");
            while(rs.next()) {
				int uid = rs.getInt("user_id");
				String name = rs.getString("name");
				long phone = rs.getLong("phone_no");
				String email = rs.getString("email");
				String add = rs.getString("address");
				String reg = rs.getString("reg_date");
				String password = rs.getString("password");
				String upload = rs.getString("upload_photo");
				out.println("<tr><td>" + uid + "</td><td>" + name + "</td><td>" + phone + "</td><td>" + email + "</td><td>"+add+"</td><td>"+reg+"</td><td>"+password+"</td><td>"+upload+"</td></tr>");
			}
            out.println("</table>");  
            out.println("</html></body>");  
            out.println("<div style=\"text-align:center;\"><button type=\"button\" name=\"back\" onclick=\"history.back()\">Back</button></div>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
