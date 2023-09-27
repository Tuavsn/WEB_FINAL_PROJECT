package serviceImpl;

import java.util.List;

import dao.UserDao;
import daoImpl.UserDaoImpl;
import model.UserModel;
import service.UserService;

public class UserServiceImpl implements UserService {
	UserDao userdao = new UserDaoImpl();
	@Override
	public List<UserModel> findAll() {
		return userdao.findAll();
	}

	@Override
	public UserModel getOne() {
		return userdao.getOne();
	}

}
