package com.amdocs.training.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amdocs.training.db.DBUtil;
import com.amdocs.training.model.Login;
import com.amdocs.training.dao.LoginDAO;
public class LoginDAOImpl implements LoginDAO {
	Connection conn = null;
	@Override
	public boolean validate(Login log) {
		String query = "select * from user where user_id = ? and password = ?";
		boolean status = false;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1,log.getId());
			ps.setString(2, log.getPass());
			
			ResultSet rs = ps.executeQuery();
			
			status = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}
