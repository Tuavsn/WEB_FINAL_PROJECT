package dao;

import java.util.List;

import model.UserModel;
import paging.Pageble;

public interface IUserDao extends GenericDAO<UserModel> {
	UserModel findByUserNameAndPasswordAndStatus(String userName,String password);
	Long insertUser(UserModel userModel);
	UserModel findOne(Long id);
	List<UserModel> findAll();
	void chagePassword(UserModel userModel);
	UserModel findByUserNameAndSdt(String userName,String Sdt);
	void deleteUser(Long id);
	void updateUser(UserModel userModel);
	
	// paging
	
	List<UserModel> findAll(Pageble pageble);
	List<UserModel> findAllSearch(Pageble pageble,String key,String search);
	int getTotalItem();
	int getTotalItemSearch(String key,String search);
}
