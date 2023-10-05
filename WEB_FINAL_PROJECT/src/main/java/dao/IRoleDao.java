package dao;

import java.util.List;

import model.RoleModel;

public interface IRoleDao {
	List<RoleModel> findAll();
}
