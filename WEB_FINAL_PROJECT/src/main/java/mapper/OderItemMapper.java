package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.OrderItemModel;
import model.ProductModel;

public class OderItemMapper implements RowMapper<OrderItemModel>{

	@Override
	public OrderItemModel mapRow(ResultSet rs) {
		try {
			OrderItemModel orderItem = new OrderItemModel();
			orderItem.setCartID(rs.getLong("CartID"));
			orderItem.setAmount(rs.getInt("Amount"));
			orderItem.setTotalPrice(rs.getDouble("TotalPrice"));
			orderItem.setOrderID(rs.getLong("OrderID"));
			return orderItem;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
