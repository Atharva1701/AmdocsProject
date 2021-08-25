package com.amdocs.training.dao;

import com.amdocs.training.model.Login;

public interface LoginDAO {
	boolean validate(Login log);
	 
}
