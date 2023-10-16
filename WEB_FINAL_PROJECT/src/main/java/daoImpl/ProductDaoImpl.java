package daoImpl;

import java.util.List;

import dao.ProductDao;
import mapper.ProductMapper;
import mapper.UserMapper;
import model.ProductModel;
import paging.Pageble;

public class ProductDaoImpl extends AbstractDAO<ProductModel> implements ProductDao{

	@Override
	public List<ProductModel> findAll() {
		String query = "select * from product limit 4";
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
	
	//Paging

	@Override
	public List<ProductModel> findAll(Pageble pageble) {
		StringBuilder query = new StringBuilder("select * from product");
		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			query.append(" limit "+pageble.getOffset()+","+pageble.getLimit());
		}
		return query(query.toString(), new ProductMapper());
	}

	@Override
	public List<ProductModel> findAllSearch(Pageble pageble, String key, String search) {
		StringBuilder query = new StringBuilder("select * from product");
		if(key !=null && search != null) {
			query.append(" where "+key+" like ? ");
		}
		if(pageble.getOffset() !=null && pageble.getLimit() !=null) {
			query.append(" limit "+pageble.getOffset()+","+pageble.getLimit());
		}
		search="%"+search+"%";
		return query(query.toString(), new ProductMapper(),search);
	}

	@Override
	public int getTotalItem() {
		// TODO Auto-generated method stub
		String query = "select count(*) from product";
		return count(query);
	}

	@Override
	public int getTotalItemSearch(String key, String search) {
		String query = "select count(*) from product where "+key+" like ? ";
		search="%"+search+"%";
		return count(query,search);
	}

}
