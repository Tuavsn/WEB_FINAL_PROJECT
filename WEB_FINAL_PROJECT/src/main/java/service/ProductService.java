package service;

import java.util.List;

import model.ProductModel;
import paging.Pageble;

public interface ProductService {
	List<ProductModel> findAll();
	List<ProductModel> get8NewProduct();
	List<ProductModel> getProductByCID(String CategoryID);
	List<ProductModel> getProductByPID(int ProductID);
	List<ProductModel> getProductByName(String ProductName);
	
	//Paging
	
	List<ProductModel> findAll(Pageble pageble);
	List<ProductModel> findAllSearch(Pageble pageble,String key,String search);
	int getTotalItem();
	int getTotalItemSearch(String key,String search);
}
