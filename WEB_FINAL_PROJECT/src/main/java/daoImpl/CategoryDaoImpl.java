package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import dao.CategoryDao;
import mapper.CategoryMapper;
import model.CategoryModel;
import model.ProductModel;

public class CategoryDaoImpl extends AbstractDAO<CategoryModel> implements CategoryDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	@Override
	public List<CategoryModel> findAll() {
		String query = "select * from category";
		return query(query, new CategoryMapper());
	}

	@Override
	public CategoryModel getOne(String CategoryID) {
		// TODO Auto-generated method stub
		return null;
	}

}
