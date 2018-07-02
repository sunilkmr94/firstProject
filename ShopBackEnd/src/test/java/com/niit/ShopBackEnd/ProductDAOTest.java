package com.niit.ShopBackEnd;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShopBackEnd.Dao.ProductDAO;
import com.niit.ShopBackEnd.Model.Product;



public class ProductDAOTest {
static ProductDAO productDAO;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductName("Jeans");
		product.setProdDesc("Feel Good ");
		product.setPrice(2500);
		product.setCategoryId(1);
		product.setStock(12);
		product.setSupplierId(2);
		
		assertTrue("Problem in Adding Category",productDAO.addProduct(product));
		System.out.println("----Successfully register----");
	}

}
