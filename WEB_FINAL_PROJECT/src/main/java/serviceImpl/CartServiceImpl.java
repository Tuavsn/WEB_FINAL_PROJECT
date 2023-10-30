package serviceImpl;

import java.util.List;

import dao.OrderItemDao;
import daoImpl.OrderItemDaoImpl;
import model.OrderItemModel;
import service.CartService;

public class CartServiceImpl implements CartService {
	OrderItemDao cartdao = new OrderItemDaoImpl();
	@Override
	public List<OrderItemModel> findAll() {
		return cartdao.findAll();
	}

	@Override
	public OrderItemModel getOne() {
		return cartdao.getOne();
	}

}
