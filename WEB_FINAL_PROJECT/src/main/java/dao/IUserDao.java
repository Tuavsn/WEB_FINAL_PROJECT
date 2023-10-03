package dao;

import java.util.List;

import model.UserModel;
import paging.Pageble;

public interface IUserDao extends GenericDAO<UserModel> {
	UserModel findByUserNameAndPasswordAndStatus(String userName,String password,Integer status);
	Long insertUser(UserModel userModel);
	UserModel findOne(Long id);
	List<UserModel> findAll();
	void chagePassword(UserModel userModel);
	List<UserModel> findAll(Pageble pageble);
	int getTotalItem();
}
