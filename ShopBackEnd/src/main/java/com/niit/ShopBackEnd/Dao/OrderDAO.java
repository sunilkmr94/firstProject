package com.niit.ShopBackEnd.Dao;

import com.niit.ShopBackEnd.Model.OrderDetail;

public interface OrderDAO {

	public boolean receiptGenerate(OrderDetail orderDetail);
	public boolean updateCartItemStatus(String username);
}
