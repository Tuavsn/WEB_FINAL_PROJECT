package service;

import java.util.List;

import model.CartModel;
import model.CategoryModel;

public interface CartService {
	List<CartModel> findAll();
	CartModel getOne();
}
