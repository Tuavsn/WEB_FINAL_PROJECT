package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.BillModel;

public class revenueYearMapper implements RowMapper<BillModel>{

	@Override
	public BillModel mapRow(ResultSet rs) {
		try {
			BillModel bill = new BillModel();
			bill.setDate(rs.getString("Date"));
			bill.setTotalPrice(rs.getDouble("TotalPrice"));
			return bill;
		} catch (SQLException e) {
			return null;
		}
	}

}
