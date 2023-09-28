package serviceImpl;

import dao.IUserDao;
import daoImpl.UserDAO;
import model.UserModel;
import service.IUserService;

public class UserService implements IUserService{

	IUserDao userDAO = new UserDAO();

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) 
	{
			return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
	}

	@Override
	public UserModel findOne(Long id) {
		return userDAO.findOne(id);
	}

	@Override
	public UserModel insertUser(UserModel userModel) {
		Long newId = userDAO.insertUser(userModel);
		return userDAO.findOne(newId);
	}
	

}
