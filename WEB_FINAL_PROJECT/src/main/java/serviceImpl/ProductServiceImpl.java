package serviceImpl;

import java.util.List;

import dao.ProductDao;
import daoImpl.ProductDaoImpl;
import model.ProductModel;
import paging.Pageble;
import service.ProductService;

public class ProductServiceImpl implements ProductService {
	ProductDao productdao = new ProductDaoImpl();

	@Override
	public List<ProductModel> findAll() {
		return productdao.findAll();
	}

	@Override
	public List<ProductModel> get8NewProduct() {
		return productdao.get8NewProduct();
	}

	@Override
	public List<ProductModel> getProductByCID(String CategoryID) {
		return productdao.getProductByCID(CategoryID);
	}

	@Override
	public List<ProductModel> getProductByPID(int ProductID) {
		return productdao.getProductByPID(ProductID);
	}

	@Override
	public List<ProductModel> getProductByName(String ProductName) {
		return productdao.getProductByName(ProductName);
	}

	@Override
	public List<ProductModel> findAll(Pageble pageble) {
		return productdao.findAll(pageble);
	}

	@Override
	public List<ProductModel> findAllSearch(Pageble pageble, String key, String search) {
		return productdao.findAllSearch(pageble, key, search);
	}

	@Override
	public int getTotalItem() {
		return productdao.getTotalItem();
	}

	@Override
	public int getTotalItemSearch(String key, String search) {
		return productdao.getTotalItemSearch(key, search);
	}

	@Override
	public List<ProductModel> findAllPrice(Pageble pageble, Long startPrice, Long endPrice) {
		return productdao.findAllPrice(pageble, startPrice, endPrice);
	}

	@Override
	public List<ProductModel> findAllSearchPrice(Pageble pageble, String key, String search, Long startPrice, Long endPrice) {
		return productdao.findAllSearchPrice(pageble, key, search, startPrice, endPrice);
	}

	@Override
	public int getTotalItemPrice(Long startPrice, Long endPrice) {
		return productdao.getTotalItemPrice(startPrice, endPrice);
	}

	@Override
	public int getTotalItemSearchPrice(String key, String search, Long startPrice, Long endPrice) {
		return productdao.getTotalItemSearchPrice(key, search, startPrice, endPrice);
	}

}
