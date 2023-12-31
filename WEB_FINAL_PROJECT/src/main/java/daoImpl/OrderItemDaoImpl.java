package daoImpl;

import java.util.List;

import dao.OrderItemDao;
import mapper.OrderItemMapper;
import model.OrderItemModel;

public class OrderItemDaoImpl extends AbstractDAO<OrderItemModel> implements OrderItemDao {

	@Override
	public List<OrderItemModel> findAll() {
		String query = "select * from oderitem";
		return query(query, new OrderItemMapper());
	}

	@Override
	public OrderItemModel getOne() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long insertOrderItem(OrderItemModel orderitem) {
		String query = "insert into orderitem (BillID, ProductID, Quantity) values(?,?,?)";
		Long id = insert(query, orderitem.getBillID(), orderitem.getProduct().getProductID(), orderitem.getAmount());
		return id;
	}

	@Override
	public void updateOrderItem(OrderItemModel orderitem) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOrderItem(Long id) {
		// TODO Auto-generated method stub
		
	}

}
