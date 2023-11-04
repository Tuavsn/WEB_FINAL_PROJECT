package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.BillModel;
import model.OrderItemModel;

public class BillMapper implements RowMapper<BillModel>{

	@Override
	public BillModel mapRow(ResultSet rs) {
		try {
			BillModel bill = new BillModel();
			bill.setBillID(rs.getLong("BillID"));
			bill.setUserID(rs.getLong("UserID"));
			bill.setDate(rs.getString("Date"));
			bill.setShippingAddress(rs.getString("ShippingAddress"));
			bill.setNote(rs.getString("Note"));
			bill.setTotalPrice(rs.getDouble("TotalPrice"));
			return bill;
		} catch (SQLException e) {
			return null;
		}
	}

}
