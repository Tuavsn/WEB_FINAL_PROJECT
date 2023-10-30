package daoImpl;

import java.util.List;

import dao.OrderItemDao;
import mapper.OderItemMapper;
import model.OrderItemModel;

public class OrderItemDaoImpl extends AbstractDAO<OrderItemModel> implements OrderItemDao {

	@Override
	public List<OrderItemModel> findAll() {
		String query = "select * from oderitem";
		return query(query, new OderItemMapper());
	}

	@Override
	public OrderItemModel getOne() {
		// TODO Auto-generated method stub
		return null;
	}

}
