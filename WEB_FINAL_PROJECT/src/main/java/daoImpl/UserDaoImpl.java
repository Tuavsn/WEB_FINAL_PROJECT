package daoImpl;

import java.util.List;

import dao.UserDao;
import mapper.UserMapper;
import model.UserModel;

public class UserDaoImpl extends AbstractDAO<UserModel> implements UserDao{

	@Override
	public List<UserModel> findAll() {
		String query = "select * from user";
		return query(query, new UserMapper());
	}

	@Override
	public UserModel getOne() {
		// TODO Auto-generated method stub
		return null;
	}

}
