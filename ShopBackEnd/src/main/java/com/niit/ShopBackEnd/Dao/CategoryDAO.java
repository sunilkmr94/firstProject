package com.niit.ShopBackEnd.Dao;

import java.util.List;

import com.niit.ShopBackEnd.Model.Category;



public interface CategoryDAO {
	public boolean addCategory(Category category);
	public Category getCategory(int categoryId);
	public boolean deleteCategory(Category category);
	public boolean updateCategory(Category category);
	public List<Category> getCategories();

}
