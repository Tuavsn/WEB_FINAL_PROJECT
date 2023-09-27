package service;

import java.util.List;

import model.UserModel;

public interface UserService {
	List<UserModel> findAll();
	
	UserModel getOne();
}
