package dao;

import java.util.List;

import model.ProductModel;

public interface ProductDao {
	List<ProductModel> findAll();
	List<ProductModel> get8NewProduct();
	List<ProductModel> getProductByCID(int CategoryID);
	List<ProductModel> getProductByPID(int ProductID);
}
