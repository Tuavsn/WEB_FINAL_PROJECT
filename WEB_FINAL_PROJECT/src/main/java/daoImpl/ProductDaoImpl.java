package daoImpl;

import java.util.List;

import dao.ProductDao;
import mapper.ImageMapper;
import mapper.ProductMapper;
import model.ProductModel;
import paging.Pageble;

public class ProductDaoImpl extends AbstractDAO<ProductModel> implements ProductDao{

	@Override
	public List<ProductModel> findAll() {
		String query = "select product.*,CategoryName from product INNER JOIN category on product.CategoryID = category.CategoryID";
		List<ProductModel> allProduct = query(query, new ProductMapper());
		for(ProductModel i : allProduct) 
		{
			String subquery = "select * from image where ProductID = ?";
			i.setImage(query(subquery, new ImageMapper(), i.getProductID()));
		}
		return allProduct;
	}
	
	@Override
	public List<ProductModel> get8NewProduct() {
		String query = "select * from product order by ProductID ASC LIMIT 8";
		List<ProductModel> NewProduct = query(query, new ProductMapper());
		for(ProductModel i : NewProduct) {
			String subquery = "select * from image where ProductID = ?";
			i.setImage(query(subquery, new ImageMapper(), i.getProductID()));
		}
		return NewProduct;
	}

	@Override
	public List<ProductModel> getProductByCID(String CategoryID) {
		String query = "select * from product where CategoryID = ?";
		return query(query, new ProductMapper(), CategoryID);
	}

	@Override
	public List<ProductModel> getProductByPID(int ProductID) {
		String query = "select * from product where ProductID = ?";
		List<ProductModel> product = query(query, new ProductMapper(), ProductID);
		for(ProductModel i : product) {
			String subquery = "select * from image where ProductID = ?";
			i.setImage(query(subquery, new ImageMapper(), i.getProductID()));
		}
		return product;
	}

	@Override
	public List<ProductModel> getProductByName(String ProductName) {
		String query = "select * from product where ProductName like ?";
		return query(query, new ProductMapper(), '%'+ProductName+'%');
	}
	
	//Paging

	@Override
	public List<ProductModel> findAll(Pageble pageble) {
		StringBuilder query = new StringBuilder("select product.*,CategoryName from product INNER JOIN category on product.CategoryID = category.CategoryID");
		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			query.append(" limit "+pageble.getOffset()+","+pageble.getLimit());
		}
		List<ProductModel> allProduct = query(query.toString(), new ProductMapper());
		for(ProductModel i : allProduct) {
			String subquery = "select * from image where ProductID = ?";
			i.setImage(query(subquery, new ImageMapper(), i.getProductID()));
		}
		return allProduct;
	}

	@Override
	public List<ProductModel> findAllSearch(Pageble pageble, String key, String search) {
		StringBuilder query = new StringBuilder("select product.*,CategoryName from product INNER JOIN category on product.CategoryID = category.CategoryID");
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
