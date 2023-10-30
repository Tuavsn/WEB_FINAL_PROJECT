package service;

import java.util.List;

import model.OrderItemModel;
import model.CategoryModel;

public interface CartService {
	List<OrderItemModel> findAll();
	OrderItemModel getOne();
}
