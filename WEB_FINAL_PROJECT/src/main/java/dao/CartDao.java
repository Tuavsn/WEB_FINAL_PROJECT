package dao;

import java.util.List;

import model.CartModel;

public interface CartDao {
	List<CartModel> findAll();
	
	CartModel getOne();
}
