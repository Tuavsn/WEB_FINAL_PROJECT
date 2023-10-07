package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.CartModel;

public class CartMapper implements RowMapper<CartModel>{

	@Override
	public CartModel mapRow(ResultSet rs) {
		try {
			CartModel cart = new CartModel();
			cart.setCartID(rs.getLong("CartID"));
			cart.setSellerID(rs.getLong("SellerID"));
			cart.setProductID(rs.getLong("ProductID"));
			cart.setAmount(rs.getInt("Amount"));
			return cart;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
