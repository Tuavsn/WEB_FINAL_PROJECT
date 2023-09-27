package dao;

import java.util.List;

import model.UserModel;

public interface UserDao {
	List<UserModel> findAll();

	UserModel getOne();
}
