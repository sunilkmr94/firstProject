package com.niit.ShopBackEnd.Dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShopBackEnd.Model.OrderDetail;

@Repository("orderDAO")
@Transactional
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	//@Override
	public boolean receiptGenerate(OrderDetail orderDetail) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(orderDetail);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	//@Override
	public boolean updateCartItemStatus(String username) 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("update CartItem set status='P' where username=:username");
		query.setParameter("username", username);
		int row_eff=query.executeUpdate();
		return row_eff>0;
	}
}
