package com.niit.ShopBackEnd.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.ShopBackEnd.Dao.CartDAO;
import com.niit.ShopBackEnd.Dao.CartDAOImpl;
import com.niit.ShopBackEnd.Dao.CategoryDAO;
import com.niit.ShopBackEnd.Dao.CategoryDAOImpl;
import com.niit.ShopBackEnd.Dao.OrderDAO;
import com.niit.ShopBackEnd.Dao.OrderDAOImpl;
import com.niit.ShopBackEnd.Dao.ProductDAO;
import com.niit.ShopBackEnd.Dao.ProductDAOImpl;
import com.niit.ShopBackEnd.Dao.UserDAO;
import com.niit.ShopBackEnd.Dao.UserDAOImpl;
import com.niit.ShopBackEnd.Model.CartItem;
import com.niit.ShopBackEnd.Model.Category;
import com.niit.ShopBackEnd.Model.OrderDetail;
import com.niit.ShopBackEnd.Model.Product;
import com.niit.ShopBackEnd.Model.UserDetail;



@Configuration
@ComponentScan("com.niit")
@EnableTransactionManagement
public class DBConfig {
	@Bean(name="dataSource")
	public DataSource getH2DataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/Shop");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		
		System.out.println("---Data Source Created---");
		return dataSource;
	}
	
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		
		Properties hibernateProp=new Properties();
		
		hibernateProp.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProp.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		
		LocalSessionFactoryBuilder factoryBuilder=new LocalSessionFactoryBuilder(getH2DataSource());
		factoryBuilder.addAnnotatedClass(Category.class);
		factoryBuilder.addAnnotatedClass(Product.class);
		factoryBuilder.addAnnotatedClass(UserDetail.class);
		factoryBuilder.addAnnotatedClass(CartItem.class);
		factoryBuilder.addAnnotatedClass(OrderDetail.class);
		
		factoryBuilder.addProperties(hibernateProp);
		
		System.out.println("Creating SessionFactory Bean");
		return factoryBuilder.buildSessionFactory();
	}
	
	
	@Bean(name="categoryDAO")
	public CategoryDAO getCategoryDAO()
	{
		System.out.println("----Category DAO Implementation---");
		return new CategoryDAOImpl();
	}
	
	@Bean(name="productDAO")
	public ProductDAO getProductDAO()
	{
		System.out.println("---Product DAO Implementation ---");
		return new ProductDAOImpl();
	}
	@Bean(name="userDAO")
	public UserDAO getUserDAO()
	{
		System.out.println("---Product DAO Implementation ---");
		return new UserDAOImpl();
	}
	
	@Bean(name="cartDAO")
	public CartDAO getCartDAO()
	{
		System.out.println("-- Cart DAO Implementation ----");
		return new CartDAOImpl();
	}
	
	@Bean(name="orderDAO")
	public OrderDAO getOrderDAO()
	{
		System.out.println("-- Order DAO Implementation ----");
		return new OrderDAOImpl();
	}
	
	@Bean(name="txManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		System.out.println("---Transaction Manager----");
		return new HibernateTransactionManager(sessionFactory);
	}
	

}
