package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet rs) {
		try {
			ProductModel product = new ProductModel();
			product.setProductID(rs.getInt("ProductID"));
			product.setProductName(rs.getString("ProductName"));
			product.setDescription(rs.getString("Description"));
			product.setPrice(rs.getDouble("Price"));
			product.setImageLink(rs.getString("ImageLink"));
			product.setCategoryID(rs.getInt("CategoryID"));
			product.setAmount(rs.getInt("Amount"));
			return product;
		} catch (SQLException e) {
			return null;
		}
	}

}