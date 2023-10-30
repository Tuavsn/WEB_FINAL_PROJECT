package dao;

import java.util.List;

import model.OrderItemModel;

public interface OrderItemDao {
	List<OrderItemModel> findAll();
	
	OrderItemModel getOne();
}
