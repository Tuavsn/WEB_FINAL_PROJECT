package service;

import java.util.List;

import model.UserModel;
import paging.Pageble;

public interface IUserService {
	UserModel findByUserNameAndPasswordAndStatus(String userName,String password);
	UserModel findOne(Long id);
	UserModel insertUser(UserModel userModel);
	List<UserModel> findAll();
	UserModel changePassword(UserModel userModel);
	int getTotalItem();
	List<UserModel> findAll(Pageble pageble);
	void deleteUser(long ids[]);
}
