package serviceImpl;

import java.util.List;

import dao.OrderItemDao;
import daoImpl.OrderItemDaoImpl;
import model.OrderItemModel;
import service.OrderItemService;

public class OrderItemServiceImpl implements OrderItemService {
	OrderItemDao orderitemdao = new OrderItemDaoImpl();
	@Override
	public List<OrderItemModel> findAll() {
		return orderitemdao.findAll();
	}

	@Override
	public OrderItemModel getOne() {
		return orderitemdao.getOne();
	}

	@Override
	public Long insertOrderItem(OrderItemModel orderitem) {
		Long id = orderitemdao.insertOrderItem(orderitem);
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
