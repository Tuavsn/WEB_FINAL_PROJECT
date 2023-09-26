package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import dao.CategoryDao;
import model.CategoryModel;
import model.ProductModel;

public class CategoryDaoImpl implements CategoryDao{
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	@Override
	public List<CategoryModel> findAll() {
		List<CategoryModel> list = new ArrayList<CategoryModel>();
		String query = "select * from category";
		try {
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new CategoryModel(
						rs.getInt(1)
						, rs.getString(2)
						, rs.getString(3)));
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public CategoryModel getOne(String CategoryID) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
