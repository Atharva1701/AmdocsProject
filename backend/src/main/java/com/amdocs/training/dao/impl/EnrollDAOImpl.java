package com.amdocs.training.dao.impl;

import com.amdocs.training.model.Enroll;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.amdocs.training.dao.EnrollDAO;
import com.amdocs.training.db.DataSourceUtil;

public class EnrollDAOImpl implements EnrollDAO {
	Connection conn = null;
	DataSource dataSource = DataSourceUtil.dataSource();
	@Override
	public boolean saveEnroll(Enroll enroll) {
		String query = "insert into enroll values(?,?)";
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, enroll.getUid());
			ps.setInt(2, enroll.getCid());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}
