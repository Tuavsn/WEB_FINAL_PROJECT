package daoImpl;

import java.util.List;

import dao.IRoleDao;
import mapper.RoleMapper;
import model.RoleModel;

public class RoleDAO extends AbstractDAO<RoleModel> implements IRoleDao{

	@Override
	public List<RoleModel> findAll() {
		String sql = "SELECT * FROM role";
		return query(sql,new RoleMapper());
	}

}
