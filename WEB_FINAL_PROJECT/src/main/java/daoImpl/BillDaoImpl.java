package daoImpl;

import java.util.List;

import dao.BillDao;
import mapper.BillMapper;
import mapper.OrderItemMapper;
import model.BillModel;
import paging.Pageble;

public class BillDaoImpl extends AbstractDAO<BillModel> implements BillDao{

	@Override
	public List<BillModel> findAll() {
		String query = "select bill.*,fullname,sdt from bill inner join user on bill.UserID = user.id";
		List<BillModel> allBill = query(query, new BillMapper());
		for (BillModel i : allBill) {
			String subquery = "select * from orderitem where BillID = ?";
			i.setOrderItem(query(subquery, new OrderItemMapper(), i.getBillID()));
		}
		return allBill;
	}

	@Override
	public List<BillModel> findAll(Pageble pageble) {
		StringBuilder query = new StringBuilder(
				"select bill.*,fullname,sdt from bill inner join user on bill.UserID = user.id");
		if (pageble.getOffset() != null && pageble.getLimit() != null) {
			query.append(" limit " + pageble.getOffset() + "," + pageble.getLimit());
		}
		List<BillModel> allBill = query(query.toString(), new BillMapper());
		for (BillModel i : allBill) {
			String subquery = "select * from orderitem where BillID = ?";
			i.setOrderItem(query(subquery, new OrderItemMapper(), i.getBillID()));
		}
		return allBill;
	}

	@Override
	public List<BillModel> findAllSearch(Pageble pageble, String key, String search) {
		StringBuilder query = new StringBuilder("select * from bill");
		if (key != null && search != null) {
			query.append(" where " + key + " like ? ");
		}
		if (pageble.getOffset() != null && pageble.getLimit() != null) {
			query.append(" limit " + pageble.getOffset() + "," + pageble.getLimit());
		}
		search = "%" + search + "%";
		List<BillModel> allBill = query(query.toString(), new BillMapper(), search);
		for (BillModel i : allBill) {
			String subquery = "select * from orderitem where BillID = ?";
			i.setOrderItem(query(subquery, new OrderItemMapper(), i.getBillID()));
		}
		return allBill;
	}

	@Override
	public int getTotalItem() {
		String query = "select count(*) from bill";
		return count(query);
	}

	@Override
	public int getTotalItemSearch(String key, String search) {
		String query = "select count(*) from bill where " + key + " like ? ";
		search = "%" + search + "%";
		return count(query, search);
	}

	@Override
	public Long insertBill(BillModel bill) {
		String query = "insert into bill (UserID, Date, TotalPrice, ShippingAddress, Note, Status) values(?,?,?,?,?,?)";
		Long id = insert(query, bill.getUserID(), bill.getDate(), bill.getTotalPrice(), bill.getShippingAddress(), bill.getNote(), bill.getStatus());
		return id;
	}

	@Override
	public void updateBill(BillModel bill) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBill(Long id) {
		// TODO Auto-generated method stub
		
	}



}
