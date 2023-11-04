package service;

import java.util.List;

import model.OrderItemModel;
import model.CategoryModel;

public interface OrderItemService {
	List<OrderItemModel> findAll();
	OrderItemModel getOne();
	
	Long insertOrderItem(OrderItemModel orderitem);
	void updateOrderItem(OrderItemModel orderitem);
	void deleteOrderItem(Long id);
}
