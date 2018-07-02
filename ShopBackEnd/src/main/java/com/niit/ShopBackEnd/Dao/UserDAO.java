package com.niit.ShopBackEnd.Dao;

import java.util.List;

import com.niit.ShopBackEnd.Model.UserDetail;



public interface UserDAO {
	public boolean registerUser(UserDetail user);
	public boolean updateDetail(UserDetail user);
	public UserDetail getUserDetail(String username);
	public List<UserDetail> listUser();
	public UserDetail validate(String username,String password);

}
