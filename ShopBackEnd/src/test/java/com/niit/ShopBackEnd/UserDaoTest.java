package com.niit.ShopBackEnd;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShopBackEnd.Dao.UserDAO;
import com.niit.ShopBackEnd.Model.UserDetail;



public class UserDaoTest {
static UserDAO userDAO;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void addProductTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("sunil");
		user.setEmailId("sunilkmr@gmail.com");
		user.setMobileNo("8220655072");
		user.setAddress("chennai");
		user.setCustomerName("sunilkmr");
		user.setEnabled(true);
		user.setRole("ROLE_ADMIN");
		user.setPassword("sunil123");
		
		assertTrue("Problem in Adding Category",userDAO.registerUser(user));
		System.out.println("----Successfully register----");
	}
	@Test
	public void saveProductTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("divi");
		user.setEmailId("divikmr@gmail.com");
		user.setMobileNo("8220655072");
		user.setAddress("chennai");
		user.setCustomerName("divikmr");
		user.setEnabled(true);
		user.setRole("customer");
		user.setPassword("divi123");
		
		assertTrue("Problem in Adding Category",userDAO.registerUser(user));
		System.out.println("----Successfully register----");
	}

}
