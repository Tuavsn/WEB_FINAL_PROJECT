package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.CategoryModel;
import model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet rs) {
		try {
			ProductModel product = new ProductModel();
			product.setProductID(rs.getLong("ProductID"));
			product.setProductName(rs.getString("ProductName"));
			product.setDescription(rs.getString("Description"));
			product.setPrice(rs.getDouble("Price"));
			product.setCategoryID(rs.getLong("CategoryID"));
			product.setAmount(rs.getInt("Amount"));
			try {
				CategoryModel categoryModel = new CategoryModel();
				categoryModel.setCategoryName(rs.getString("CategoryName"));
				product.setCategoryModel(categoryModel);
			}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return product;
		} catch (SQLException e) {
			return null;
		}
	}

}
