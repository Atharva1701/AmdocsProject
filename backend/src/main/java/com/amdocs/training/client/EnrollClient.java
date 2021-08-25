package com.amdocs.training.client;

import com.amdocs.training.dao.EnrollDAO;
import com.amdocs.training.dao.impl.EnrollDAOImpl;
import com.amdocs.training.model.Enroll;

public class EnrollClient {
public static void main(String[] args) {
		
		EnrollDAO dao = new EnrollDAOImpl();
		
		Enroll Enroll = new Enroll(101, 3001);
		if(dao.saveEnroll(Enroll)) {
			System.out.println("Enroll Added Successfully");
			}
			else {
			System.out.println("Error Cannot Insert");
			}
	}
}
