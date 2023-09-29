package service;

import java.util.List;

import model.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPasswordAndStatus(String userName,String password,Integer status);
	UserModel findOne(Long id);
	UserModel insertUser(UserModel userModel);
	List<UserModel> findAll();
}
