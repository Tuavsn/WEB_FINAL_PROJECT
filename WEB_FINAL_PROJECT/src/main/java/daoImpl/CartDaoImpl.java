package daoImpl;

import java.util.List;

import dao.CartDao;
import mapper.CartMapper;
import model.CartModel;

public class CartDaoImpl extends AbstractDAO<CartModel> implements CartDao {

	@Override
	public List<CartModel> findAll() {
		String query = "select * from cart";
		return query(query, new CartMapper());
	}

	@Override
	public CartModel getOne() {
		// TODO Auto-generated method stub
		return null;
	}

}
