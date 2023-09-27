package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.CartModel;

public class CartMapper implements RowMapper<CartModel>{

	@Override
	public CartModel mapRow(ResultSet rs) {
		try {
			CartModel cart = new CartModel();
			cart.setUserID(rs.getInt("UserID"));
			cart.setProductID(rs.getInt("ProductID"));
			cart.setAmount(rs.getInt("Amount"));
			return cart;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
