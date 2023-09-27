package serviceImpl;

import java.util.List;

import dao.ProductDao;
import daoImpl.ProductDaoImpl;
import model.ProductModel;
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
	public List<ProductModel> getProductByCID(int CategoryID) {
		return productdao.getProductByCID(CategoryID);
	}

	@Override
	public List<ProductModel> getProductByPID(int ProductID) {
		return productdao.getProductByPID(ProductID);
	}

}
