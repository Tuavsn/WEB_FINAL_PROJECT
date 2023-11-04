package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.OrderItemModel;
import model.ProductModel;

public class OrderItemMapper implements RowMapper<OrderItemModel>{

	@Override
	public OrderItemModel mapRow(ResultSet rs) {
		try {
			OrderItemModel orderItem = new OrderItemModel();
			orderItem.setOrderItemID(rs.getLong("OrderItemID"));
			orderItem.setAmount(rs.getInt("Amount"));
			orderItem.setTotalPrice(rs.getDouble("TotalPrice"));
			orderItem.setBillID(rs.getLong("BillID"));
			return orderItem;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
