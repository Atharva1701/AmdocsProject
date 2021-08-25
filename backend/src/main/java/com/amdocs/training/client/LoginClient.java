package com.amdocs.training.client;

import com.amdocs.training.dao.LoginDAO;
import com.amdocs.training.dao.impl.LoginDAOImpl;
import com.amdocs.training.model.Login;

public class LoginClient {
	public static void main(String[] args) {
		LoginDAO dao = new LoginDAOImpl();
		Login log = new Login(101,"atharva");
		if(dao.validate(log)) {
		System.out.println("Login Successful!");
		}
		else {
		System.out.println("Error Cannot Login.UserId or password may be incorrect.");
		}
	}
}
