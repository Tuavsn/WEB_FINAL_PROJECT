package service;

import java.util.List;

import model.CartModel;

public interface CartService {
	List<CartModel> findAll();
	
	CartModel getOne();
}
