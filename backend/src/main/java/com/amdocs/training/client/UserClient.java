package com.amdocs.training.client;

import com.amdocs.training.dao.UserDAO;
import com.amdocs.training.dao.impl.UserDAOImpl;
import com.amdocs.training.model.User;
public class UserClient {
public static void main(String[] args) {
	
		UserDAO dao = new UserDAOImpl();
		User user = new User(101, "Atharva", 7894561327L,"atharva@gmail.com","nashik","2021-11-21","atharva","img.jpg");
		if(dao.saveUser(user)) {
		System.out.println("User Added Successfully");
		}
		else {
		System.out.println("Error Cannot Insert");
		}
	}
}