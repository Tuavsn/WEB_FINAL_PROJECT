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
	

}
