package daoImpl;

import java.util.List;

import dao.ProductDao;
import mapper.ProductMapper;
import model.ProductModel;

public class ProductDaoImpl extends AbstractDAO<ProductModel> implements ProductDao{

	@Override
	public List<ProductModel> findAll() {
		String query = "select * from product";
		return query(query, new ProductMapper());
	}
	
	@Override
	public List<ProductModel> get8NewProduct() {
		String query = "select * from product order by ProductID ASC LIMIT 8";
		return query(query, new ProductMapper());
	}

	@Override
	public List<ProductModel> getProductByCID(String CategoryID) {
		String query = "select * from product where CategoryID = ?";
		return query(query, new ProductMapper(), CategoryID);
	}

	@Override
	public List<ProductModel> getProductByPID(int ProductID) {
		String query = "select * from product where ProductID = ?";
		return query(query, new ProductMapper(), ProductID);
	}

	@Override
	public List<ProductModel> getProductByName(String ProductName) {
		String query = "select * from product where ProductName like ?";
		return query(query, new ProductMapper(), '%'+ProductName+'%');
	}

}
