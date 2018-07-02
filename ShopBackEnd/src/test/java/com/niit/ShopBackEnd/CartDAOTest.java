package com.niit.ShopBackEnd;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShopBackEnd.Dao.CartDAO;
import com.niit.ShopBackEnd.Model.CartItem;



public class CartDAOTest {
static CartDAO cartDAO;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		cartDAO=(CartDAO)context.getBean("cartDAO");
	}
	
	@Test
	public void addCartTest()
	{
		CartItem cartItem=new CartItem();
		
		cartItem.setProductId(01);
		cartItem.setProductName("Levis Jeans");
		cartItem.setQuantity(20);
		cartItem.setStatus("NP");
		cartItem.setPrice(2500);
		
		assertTrue("Problem in Creating CartItem",cartDAO.addToCart(cartItem));
		System.out.println("----Successfully register----");
	}

}
