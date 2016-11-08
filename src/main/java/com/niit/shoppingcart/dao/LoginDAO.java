package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Login;

public interface LoginDAO {

	
	public List<Login> list();
	
	public Login get(int id);
	
	public Login getSingleLogin(int id);
	//CRUD functions
	public void save(Login login);
	
	public void update(Login login);
	
	public List getAllLogins();
	
	public void delete(int id);
}
