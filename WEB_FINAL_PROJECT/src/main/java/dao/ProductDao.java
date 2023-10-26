package dao;

import java.util.List;

import model.ProductModel;
import paging.Pageble;

public interface ProductDao {
	List<ProductModel> findAll();
	List<ProductModel> get8NewProduct();
	List<ProductModel> getProductByCID(String CategoryID);
	List<ProductModel> getProductByPID(int ProductID);
	List<ProductModel> getProductByName(String ProductName);
	
	// new
	List<ProductModel> findAll(Pageble pageble);
	List<ProductModel> findAllSearch(Pageble pageble, String key, String search);
	int getTotalItem();
	int getTotalItemSearch(String key, String search);
	
	List<ProductModel> findAllPrice(Pageble pageble,Long Price);
	List<ProductModel> findAllSearchPrice(Pageble pageble, String key, String search,Long Price);
	int getTotalItemPrice(Long Price);
	int getTotalItemSearchPrice(String key, String search,Long Price);
}
