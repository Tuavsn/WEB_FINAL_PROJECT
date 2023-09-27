package serviceImpl;

import java.util.List;

import dao.CartDao;
import daoImpl.CartDaoImpl;
import model.CartModel;
import service.CartService;

public class CartServiceImpl implements CartService {
	CartDao cartdao = new CartDaoImpl();
	@Override
	public List<CartModel> findAll() {
		return cartdao.findAll();
	}

	@Override
	public CartModel getOne() {
		return cartdao.getOne();
	}

}
